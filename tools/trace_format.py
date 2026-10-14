"""Layout of the per-tick state records written by PARTRACE.COM and by the
remake's --trace option. See tools/TRACE_FORMAT.md and TODO.md Part 0.

Each record is the listed blocks of the original's memory, in this order.
All multi-byte values are little-endian, as in the original.
"""

import struct

MAGIC = b"PT"
LOOP_NAMES = {1: "play", 2: "demo"}

# (name, original address, length). The header is not game memory.
BLOCKS = [
    ("header", None, 8),  # 'PT', loop id, 0, u32 tick counter
    ("balls", 0xC16D, 256),  # 16 slots x 16 bytes
    ("icons", 0xC2CD, 45),  # 5 slots x 9 bytes
    ("lasers", 0xC30E, 64),  # 4 slots x 16 bytes
    ("flash_count", 0xD235, 1),
    ("flash", 0xCF17, 798),  # 266 entries x (col, row, timer)
    ("vars", 0xD237, 378),  # 0xd237..0xd3b0
    ("keys", 0xD42A, 6),  # left, right, action, esc, f10, pause
    ("bricks", 0x8100, 266),  # 14 cols x 19 rows, index col*19+row
    ("attrs", 0x820A, 266),
]

RECORD_SIZE = sum(length for _, _, length in BLOCKS)

# Named game variables inside the "vars" block: (name, address, size, kind),
# kind "u" unsigned, "s" signed, "d" decimal digits (one per byte).
# Page-flip state (0xd237, 0xd239) is listed but ignored when comparing,
# because the remake has no display pages.
VARS = [
    ("page_offset", 0xD237, 2, "u"),
    ("page", 0xD239, 1, "u"),
    ("icon_anim_div", 0xD23A, 1, "u"),
    ("icon_fall_div", 0xD23B, 1, "u"),
    ("phase", 0xD23C, 1, "u"),
    ("speedup_timer", 0xD23D, 2, "u"),
    ("bat_x", 0xD247, 2, "u"),
    ("bat_w", 0xD249, 1, "u"),
    ("bat_max_x", 0xD24A, 2, "u"),
    ("bat_mode", 0xD24C, 1, "u"),
    ("bat_dx", 0xD24D, 2, "s"),
    ("level", 0xD24F, 1, "u"),
    ("lives", 0xD250, 1, "u"),
    ("balls_in_play", 0xD251, 1, "u"),
    ("bricks_left", 0xD252, 2, "u"),
    ("settle", 0xD254, 1, "u"),
    ("split_count", 0xD255, 1, "u"),
    ("through_pending", 0xD256, 1, "u"),
    ("barrier", 0xD257, 1, "u"),
    ("letters", 0xD259, 1, "u"),
    ("letter_next", 0xD262, 1, "u"),
    ("letters_in_order", 0xD263, 1, "u"),
    ("skip_level", 0xD264, 1, "u"),
    ("escape", 0xD265, 1, "u"),
    ("score_div", 0xD398, 1, "u"),
    ("pending_points", 0xD399, 2, "u"),
    ("score_digits", 0xD39B, 6, "d"),
    ("extra_life_digits", 0xD3A2, 6, "d"),
    ("level_digits", 0xD3A8, 2, "d"),
    ("lives_digits", 0xD3AB, 2, "d"),
]

IGNORED_VARS = {"page_offset", "page"}

BALL_FIELDS = [("x", 0, 2, True), ("y", 2, 2, True), ("dx", 4, 2, True), ("dy", 6, 2, True), ("flags", 8, 1, False), ("counter", 9, 2, False)]
ICON_FIELDS = [("x", 0, 2, False), ("y", 2, 2, False), ("type", 4, 1, False), ("frame", 5, 1, False), ("first", 6, 1, False), ("last", 7, 1, False), ("active", 8, 1, False)]
LASER_FIELDS = [("x", 0, 2, False), ("y", 2, 2, False), ("active", 4, 2, False)]
KEY_NAMES = ["left", "right", "action", "esc", "f10", "pause"]


def _offsets():
    offsets, pos = {}, 0
    for name, _, length in BLOCKS:
        offsets[name] = pos
        pos += length
    return offsets


OFFSETS = _offsets()


def _value(data, pos, size, signed):
    if signed == "d":
        return list(data[pos : pos + size])
    signed = signed in (True, "s")
    if size == 1:
        return data[pos] - 256 if signed and data[pos] > 127 else data[pos]
    if size == 2:
        return struct.unpack_from("<h" if signed else "<H", data, pos)[0]
    return list(data[pos : pos + size])


def read_records(path):
    """Yield raw records (bytes) from a trace file."""
    with open(path, "rb") as f:
        while True:
            rec = f.read(RECORD_SIZE)
            if len(rec) < RECORD_SIZE:
                return
            if rec[:2] != MAGIC:
                raise ValueError(f"bad record magic at offset {f.tell() - RECORD_SIZE}")
            yield rec


def decode(rec):
    """Turn one record into a dict of named fields."""
    out = {}
    out["loop"] = LOOP_NAMES.get(rec[2], rec[2])
    out["tick"] = struct.unpack_from("<I", rec, 4)[0]
    base = OFFSETS["vars"]
    for name, addr, size, signed in VARS:
        out[name] = _value(rec, base + addr - 0xD237, size, signed)

    def table(block, count, stride, fields, active):
        rows = []
        start = OFFSETS[block]
        for i in range(count):
            p = start + i * stride
            row = {f: _value(rec, p + o, s, sg) for f, o, s, sg in fields}
            if active(row):
                rows.append((i, row))
        return rows

    out["balls"] = table("balls", 16, 16, BALL_FIELDS, lambda r: r["flags"] & 1)
    out["icons"] = table("icons", 5, 9, ICON_FIELDS, lambda r: r["active"])
    out["lasers"] = table("lasers", 4, 16, LASER_FIELDS, lambda r: r["active"] & 1)
    keys = rec[OFFSETS["keys"] : OFFSETS["keys"] + 6]
    out["keys"] = [n for n, k in zip(KEY_NAMES, keys) if k]
    count = rec[OFFSETS["flash_count"]]
    out["flash_count"] = count
    return out


def field_at(offset):
    """Name the field that a byte offset inside a record belongs to."""
    for name, addr, length in BLOCKS:
        start = OFFSETS[name]
        if start <= offset < start + length:
            rel = offset - start
            if name == "vars":
                for vname, vaddr, size, _ in VARS:
                    if vaddr <= addr + rel < vaddr + size:
                        return vname
                return f"vars+0x{addr + rel:04x}"
            if name == "balls":
                return f"ball[{rel // 16}].{_sub(BALL_FIELDS, rel % 16)}"
            if name == "icons":
                return f"icon[{rel // 9}].{_sub(ICON_FIELDS, rel % 9)}"
            if name == "lasers":
                return f"laser[{rel // 16}].{_sub(LASER_FIELDS, rel % 16)}"
            if name in ("bricks", "attrs"):
                return f"{name}[col {rel // 19}, row {rel % 19}]"
            if name == "keys":
                return f"key.{KEY_NAMES[rel]}"
            if name == "flash":
                return f"flash[{rel // 3}]"
            return name
    return f"offset {offset}"


def _sub(fields, rel):
    for name, off, size, _ in fields:
        if off <= rel < off + size:
            return name
    return f"+{rel}"


def ignored(offset):
    """True for bytes that differ for reasons that don't matter (header,
    display-page state)."""
    if offset < OFFSETS["balls"]:
        return True
    name = field_at(offset)
    return name in IGNORED_VARS
