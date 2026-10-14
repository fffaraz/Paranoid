#!/usr/bin/env python3
"""Build PARTRACE.COM: a copy of PARANOID.COM that writes one state record per
game tick to TRACE.BIN. See TODO.md Part 0 (V2) and tools/TRACE_FORMAT.md.

The play loop (fcn 3658) and the demo loop (fcn 3bbd) each call 653b (page
flip + wait for retrace) exactly once per tick, after updating. Those two
calls are redirected to a small routine appended after the end of the
program (0x66be), which appends the memory blocks listed in trace_format.py
to TRACE.BIN and then jumps to 653b.

usage: make_trace_com.py PARANOID.COM PARTRACE.COM
"""

import hashlib
import os
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from trace_format import BLOCKS, MAGIC  # noqa: E402

ORG = 0x100
FLIP = 0x653B
HOOKS = {
    0x36B5: ("play", 1),  # call 653b at the end of the play loop
    0x3BFF: ("demo", 2),  # call 653b at the end of the demo loop
}
EXPECTED_END = 0x66BE


class Asm:
    """Just enough of a 16-bit assembler for the trace routine: bytes,
    labels, and short/near jumps resolved in a second pass."""

    def __init__(self, base):
        self.base = base
        self.items = []
        self.labels = {}

    def label(self, name):
        self.items.append(("label", name))

    def emit(self, *data):
        self.items.append(("bytes", bytes(data)))

    def word(self, value):
        self.items.append(("bytes", struct.pack("<H", value & 0xFFFF)))

    def addr(self, name):  # absolute 16-bit address of a label
        self.items.append(("addr", name))

    def jshort(self, opcode, name):
        self.items.append(("rel8", opcode, name))

    def jmp_near_abs(self, target):
        self.items.append(("rel16abs", target))

    def assemble(self):
        size = {"label": 0, "bytes": None, "addr": 2, "rel8": 2, "rel16abs": 3}
        pos = self.base
        for item in self.items:
            if item[0] == "label":
                self.labels[item[1]] = pos
            pos += len(item[1]) if item[0] == "bytes" else size[item[0]]
        out = bytearray()
        pos = self.base
        for item in self.items:
            kind = item[0]
            if kind == "label":
                continue
            if kind == "bytes":
                out += item[1]
            elif kind == "addr":
                out += struct.pack("<H", self.labels[item[1]])
            elif kind == "rel8":
                rel = self.labels[item[2]] - (pos + 2)
                if not -128 <= rel <= 127:
                    raise ValueError(f"short jump to {item[2]} out of range")
                out += bytes([item[1], rel & 0xFF])
            elif kind == "rel16abs":
                out += b"\xe9" + struct.pack("<h", item[1] - (pos + 3))
            pos = self.base + len(out)
        return bytes(out)


def build_stub(base):
    a = Asm(base)
    # Entry points: remember which loop called, then share the body.
    a.label("entry_play")
    a.emit(0x50, 0xB0, 1)  # push ax; mov al, 1
    a.jshort(0xEB, "common")
    a.label("entry_demo")
    a.emit(0x50, 0xB0, 2)  # push ax; mov al, 2
    a.label("common")
    a.emit(0x53, 0x51, 0x52, 0x56, 0x57, 0x55, 0x1E, 0x9C)  # push bx cx dx si di bp ds; pushf
    a.emit(0x0E, 0x1F)  # push cs; pop ds
    a.emit(0xA2)
    a.addr("hdr_loop")  # mov [hdr_loop], al
    # handle: 0 = not opened yet, 0xffff = failed (stop trying)
    a.emit(0x83, 0x3E)
    a.addr("handle")
    a.emit(0xFF)  # cmp word [handle], -1
    a.jshort(0x74, "out")  # je out
    a.emit(0x83, 0x3E)
    a.addr("handle")
    a.emit(0x00)  # cmp word [handle], 0
    a.jshort(0x75, "opened")  # jne opened
    a.emit(0xB4, 0x3C, 0x31, 0xC9, 0xBA)  # mov ah, 3ch; xor cx, cx; mov dx, fname
    a.addr("fname")
    a.emit(0xCD, 0x21)  # int 21h (create)
    a.jshort(0x73, "created")  # jnc created
    a.emit(0xB8, 0xFF, 0xFF)  # mov ax, 0ffffh
    a.label("created")
    a.emit(0xA3)
    a.addr("handle")  # mov [handle], ax
    a.emit(0x3D, 0xFF, 0xFF)  # cmp ax, 0ffffh
    a.jshort(0x74, "out")
    a.label("opened")
    a.emit(0x83, 0x06)
    a.addr("hdr_tick")
    a.emit(0x01)  # add word [tick], 1
    a.emit(0x83, 0x16)
    a.addr("hdr_tick_hi")
    a.emit(0x00)  # adc word [tick+2], 0
    a.emit(0xBE)
    a.addr("table")  # mov si, table
    a.label("next")
    a.emit(0x8B, 0x14, 0x8B, 0x4C, 0x02, 0x09, 0xC9)  # mov dx,[si]; mov cx,[si+2]; or cx,cx
    a.jshort(0x74, "written")  # jz written
    a.emit(0x8B, 0x1E)
    a.addr("handle")  # mov bx, [handle]
    a.emit(0xB4, 0x40, 0xCD, 0x21)  # mov ah, 40h; int 21h (write)
    a.emit(0x83, 0xC6, 0x04)  # add si, 4
    a.jshort(0xEB, "next")
    a.label("written")
    # Every 64 records, flush to disk by closing a duplicate of the handle.
    a.emit(0xFE, 0x06)
    a.addr("flush")  # inc byte [flush]
    a.emit(0xF6, 0x06)
    a.addr("flush")
    a.emit(0x3F)  # test byte [flush], 63
    a.jshort(0x75, "out")
    a.emit(0x8B, 0x1E)
    a.addr("handle")  # mov bx, [handle]
    a.emit(0xB4, 0x45, 0xCD, 0x21)  # mov ah, 45h; int 21h (dup)
    a.jshort(0x72, "out")
    a.emit(0x89, 0xC3, 0xB4, 0x3E, 0xCD, 0x21)  # mov bx, ax; mov ah, 3eh; int 21h (close)
    a.label("out")
    a.emit(0x9D, 0x1F, 0x5D, 0x5F, 0x5E, 0x5A, 0x59, 0x5B, 0x58)  # popf; pop ds bp di si dx cx bx ax
    a.jmp_near_abs(FLIP)
    # Data.
    a.label("handle")
    a.word(0)
    a.label("flush")
    a.emit(0)
    a.label("fname")
    a.emit(*b"TRACE.BIN\0")
    a.label("hdr")
    a.emit(*MAGIC)
    a.label("hdr_loop")
    a.emit(0, 0)
    a.label("hdr_tick")
    a.word(0)
    a.label("hdr_tick_hi")
    a.word(0)
    a.label("table")
    for name, address, length in BLOCKS:
        if address is None:
            a.addr("hdr")
        else:
            a.word(address)
        a.word(length)
    a.word(0)
    a.word(0)
    code = a.assemble()
    return code, a.labels


def main():
    if len(sys.argv) != 3:
        print(__doc__)
        return 2
    src, dst = sys.argv[1], sys.argv[2]
    data = bytearray(open(src, "rb").read())
    if ORG + len(data) != EXPECTED_END:
        sys.exit(f"{src}: unexpected size {len(data)} (end 0x{ORG + len(data):x}, expected 0x{EXPECTED_END:x})")
    stub, labels = build_stub(EXPECTED_END)
    if EXPECTED_END + len(stub) > 0x8000:
        sys.exit("trace routine too large: it would overlap data loaded at 0x8000")
    for addr, (name, _) in HOOKS.items():
        off = addr - ORG
        old = bytes(data[off : off + 3])
        rel = struct.unpack_from("<h", data, off + 1)[0]
        if old[0] != 0xE8 or addr + 3 + rel != FLIP:
            sys.exit(f"0x{addr:04x}: expected 'call 653b', found {old.hex()}")
        target = labels["entry_" + name]
        struct.pack_into("<h", data, off + 1, target - (addr + 3))
    data += stub
    with open(dst, "wb") as f:
        f.write(data)
    print(f"wrote {dst}: {len(data)} bytes, trace routine at 0x{EXPECTED_END:04x}-0x{EXPECTED_END + len(stub) - 1:04x}, "
          f"sha1 {hashlib.sha1(data).hexdigest()[:12]}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
