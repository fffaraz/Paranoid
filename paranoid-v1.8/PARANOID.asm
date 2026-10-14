            ;-- ip:
            ; DATA XREF from fcn.0000375b @ 0x375d(r)
/ 46: fcn.00000100 ();
|           0000:0100     e90e50         jmp 0x5111
            0000:0103     cd10           int 0x10
            ; DATA XREF from fcn.00005134 @ 0x51a4(r)
            0000:0105     2a00           sub al, byte [bx + si]
            0000:0107     360039         add byte ss:[bx + di], bh
            ; DATA XREF from fcn.000033b7 @ 0x33cd(r)
            ; DATA XREFS from fcn.00003437 @ 0x345c(r), 0x3469(r)
            0000:010a     0001           add byte [bx + di], al
            0000:010c     004400         add byte [si], al
            0000:010f     1900           sbb word [bx + si], ax
            0000:0111     ff             invalid
            0000:0112     ff             invalid
            ; DATA XREF from fcn.00004f53 @ 0x4f59(r)
            0000:0113     7f3a           jg 0x14f
            0000:0115     c23c95         ret 0x953c
            0000:0118     3cc8           cmp al, 0xc8                  ; 200
            0000:011a     3cb4           cmp al, 0xb4                  ; 180
            0000:011c     4b             dec bx
            0000:011d     95             xchg bp, ax
            0000:011e     3cb2           cmp al, 0xb2                  ; 178
            ;-- str.9qTavZak_a:
            0000:0120    .string "9qTavZak`a\xff" ; len=11
            ;-- str.Corrupt_or_missing_file_:_r_n_r_n_______r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_creating_high_score_table_file._r_n_r_nCheck_for_full_disk_or_write_protect._r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_writing_high_score_table_file._r_n_r_nCheck_for_write_protect_on_disk._r_n_r_nReturning_to_DOS_..._r_n_r_n__r_n_r_nNot_enough_video_memory_installed___Paranoid_requires_256Kb._r_n_r_n__r_n_r_nSorry__Paranoid_requires_colour_EGA___VGA_to_run._r_n_r_n_G:
            ; DATA XREF from fcn.00003475 @ 0x325f(r)
            0000:012b    .string "Corrupt or missing file :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk." ; len=413
            0000:02c8     8c02           mov word [bp + si], es
            ;-- str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE:
            ; DATA XREF from fcn.00006105 @ 0x6146(r)
            ; DATA XREF from str.PQWF @ +0x2b(r)
            0000:02ca    .string "Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - " ; len=613
            ;-- str.___TO_START:
            ; DATA XREF from fcn.00006299 @ 0x62e5(r)
            0000:052f    .string "   TO START" ; len=12
            ;-- str._VERSION_1.8:
            ; DATA XREF from fcn.00006299 @ 0x62ee(r)
            0000:053b    .string " VERSION 1.8" ; len=13
            ; DATA XREF from fcn.00003158 @ 0x31a7(r)
            0000:0548     b600           mov dh, 0
            0000:054a     5a             pop dx
            0000:054b     00c9           add cl, cl
            0000:054d     01c5           add bp, ax
            0000:054f     000b           add byte [bp + di], cl
            0000:0551     040a           add al, 0xa
            0000:0553     0408           add al, 8
            0000:0555     06             push es
            0000:0556     0c0d           or al, 0xd                    ; 13
            0000:0558     ff00           inc word [bx + si]
            0000:055a     0002           add byte [bp + si], al
            0000:055c     0003           add byte [bp + di], al
            0000:055e     0024           add byte [si], ah
            0000:0560     002c           add byte [si], ch
            0000:0562     0201           add al, byte [bx + di]
            0000:0564     0002           add byte [bp + si], al
            0000:0566     0003           add byte [bp + di], al
            0000:0568     0024           add byte [si], ah
            0000:056a     003c           add byte [si], bh
            0000:056c     0100           add word [bx + si], ax
            0000:056e     0002           add byte [bp + si], al
            0000:0570     0003           add byte [bp + di], al
            0000:0572     0024           add byte [si], ah
            0000:0574     004f00         add byte [bx], cl
            0000:0577     0200           add al, byte [bx + si]
            0000:0579     0200           add al, byte [bx + si]
            0000:057b     0300           add ax, word [bx + si]
            0000:057d     1f             pop ds
            0000:057e     022c           add ch, byte [si]
            0000:0580     0201           add al, byte [bx + di]
            0000:0582     0002           add byte [bp + si], al
            0000:0584     0003           add byte [bp + di], al
            0000:0586     001f           add byte [bx], bl
            0000:0588     023c           add bh, byte [si]
            0000:058a     0100           add word [bx + si], ax
            0000:058c     0002           add byte [bp + si], al
            0000:058e     0003           add byte [bp + di], al
            0000:0590     001f           add byte [bx], bl
            0000:0592     024f00         add cl, byte [bx]
            0000:0595     ff             invalid
            0000:0596     ff14           call word [si]
            0000:0598     0007           add byte [bx], al
            0000:059a     0000           add byte [bx + si], al
            0000:059c    .string " Congratulations !!" ; len=20
            0000:05b0 ~   0020           add byte [bx + si], ah
            ;-- str.___New_High_Score:
            0000:05b1    .string "   New High Score" ; len=18
            0000:05c3 ~   0020           add byte [bx + si], ah
            ;-- str._Congratulations___:
            0000:05c4    .string " Congratulations !!" ; len=20
            ; CODE XREF from str.___New_High_Score @ +0x5(x)
            0000:05d8 ~   004e61         add byte [bp + 0x61], cl
            ;-- str.Name_______________Level_____Score:
            ; DATA XREF from fcn.00004a53 @ 0x4a68(r)
            0000:05d9    .string "Name               Level     Score" ; len=35
            ; DATA XREFS from int.0000352f @ 0x3561(r), 0x3571(r)
            0000:05fc     0000           add byte [bx + si], al
            0000:05fe     050000         add ax, 0
            0000:0601     00ff           add bh, bh
            0000:0603     0000           add byte [bx + si], al
            0000:0605     0405           add al, 5
            0000:0607     0000           add byte [bx + si], al
            0000:0609     ff00           inc word [bx + si]
            0000:060b     0004           add byte [si], al
            0000:060d     0000           add byte [bx + si], al
            0000:060f     00ff           add bh, bh
            0000:0611     0000           add byte [bx + si], al
            0000:0613     0305           add ax, word [di]
            0000:0615     0000           add byte [bx + si], al
            0000:0617     ff00           inc word [bx + si]
            0000:0619     0003           add byte [bp + di], al
            0000:061b     0000           add byte [bx + si], al
            0000:061d     00ff           add bh, bh
            0000:061f     0000           add byte [bx + si], al
            0000:0621     0205           add al, byte [di]
            0000:0623     0000           add byte [bx + si], al
            0000:0625     ff00           inc word [bx + si]
            0000:0627     0002           add byte [bp + si], al
            0000:0629     0000           add byte [bx + si], al
            0000:062b     00ff           add bh, bh
            0000:062d     0000           add byte [bx + si], al
            0000:062f     0105           add word [di], ax
            0000:0631     0000           add byte [bx + si], al
            0000:0633     ff00           inc word [bx + si]
            0000:0635     0001           add byte [bx + di], al
            0000:0637     0000           add byte [bx + si], al
            0000:0639     00ff           add bh, bh
            0000:063b     0000           add byte [bx + si], al
            0000:063d     0005           add byte [di], al
            0000:063f     0000           add byte [bx + si], al
            0000:0641     ff5468         call word [si + 0x68]         ; 104
            0000:0644    .string "The Bit Bucket " ; len=16
            0000:0652    .string " Brothers      " ; len=16
            0000:0662    .string "The Bit Bucket " ; len=16
            0000:0672    .string " Brothers      " ; len=16
            0000:0682    .string "The Bit Bucket " ; len=16
            0000:0692    .string " Brothers      " ; len=16
            0000:06a2    .string "The Bit Bucket " ; len=16
            0000:06b2    .string " Brothers      " ; len=16
            ;-- str.The_Bit_Bucket:
            0000:06c2    .string "The Bit Bucket " ; len=16
            ;-- str._Brothers:
            0000:06d2    .string " Brothers      " ; len=16
            0000:06e2     0005           add byte [di], al
            0000:06e4     ff00           inc word [bx + si]
            0000:06e6     04ff           add al, 0xff
            0000:06e8     0004           add byte [si], al
            ; CODE XREF from str.The_Bit_Bucket @ +0x6(x)
            0000:06ea     ff00           inc word [bx + si]
            0000:06ec     04ff           add al, 0xff
            ; CODE XREF from str.Name_______________Level_____Score @ +0x9f(x)
            0000:06ee     0003           add byte [bp + di], al
            ; CODE XREF from str.Name_______________Level_____Score @ +0xb2(x)
            0000:06f0     ff00           inc word [bx + si]
            0000:06f2     03ff           add di, di
            0000:06f4     0002           add byte [bp + si], al
            0000:06f6     ff00           inc word [bx + si]
            0000:06f8     02ff           add bh, bh
            0000:06fa     0002           add byte [bp + si], al
            0000:06fc     ff00           inc word [bx + si]
            0000:06fe     01ff           add di, di
            ; CODE XREF from str.Name_______________Level_____Score @ +0xbd(x)
            ; DATA XREF from fcn.00004b7b @ 0x4b8a(r)
            0000:0700     0001           add byte [bx + di], al
            0000:0702     0203           add al, byte [bp + di]
            0000:0704     0b00           or ax, word [bx + si]
            0000:0706     0405           add al, 5
            0000:0708     050b00         add ax, 0xb                   ; 11
            0000:070b     06             push es
            0000:070c     07             pop es
            0000:070d     0809           or byte [bx + di], cl
            0000:070f     010a           add word [bp + si], cx
            0000:0711     02ff           add bh, bh
            ; DATA XREF from fcn.000031b4 @ 0x3203(r)
            0000:0713     3000           xor byte [bx + si], al
            0000:0715     26004f02       add byte es:[bx + 2], cl
            0000:0719     55             push bp
            0000:071a     00980070       add byte [bx + si + 0x7000], bl
            0000:071e     00e7           add bh, ah
            ; CODE XREF from str.Name_______________Level_____Score @ +0xdd(x)
            0000:0720     0137           add word [bx], si
            0000:0722     0100           add word [bx + si], ax
            0000:0724     00fe           add dh, bh
            0000:0726     ff             invalid
            0000:0727     fe             invalid
            0000:0728     ff             invalid
            0000:0729     7d00           jge 0x72b
            ; CODE XREF from str._Brothers @ +0x57(x)
            0000:072b     3200           xor al, byte [bx + si]
            0000:072d     0100           add word [bx + si], ax
            0000:072f     fe             invalid
            ; CODE XREF from str.The_Bit_Bucket @ +0x9(x)
            0000:0730     ff             invalid
            0000:0731     fd             std
            0000:0732     ff             invalid
            0000:0733     dc00           fadd qword [bx + si]
            0000:0735     640002         add byte fs:[bp + si], al
            0000:0738     00fe           add dh, bh
            0000:073a     ff             invalid
            0000:073b     fe             invalid
            0000:073c     ff4001         inc word [bx + si + 1]
            0000:073f     0e             push cs
            ; CODE XREF from str._Brothers @ +0x4(x)
            0000:0740     0100           add word [bx + si], ax
            0000:0742     00fe           add dh, bh
            0000:0744     ff             invalid
            ; CODE XREF from str._Brothers @ +0x2(x)
            0000:0745     fd             std
            0000:0746     ff31           push word [bx + di]
            0000:0748     01f4           add sp, si
            0000:074a     0101           add word [bx + di], ax
            0000:074c     00fe           add dh, bh
            ; CODE XREF from str._Brothers @ +0x6(x)
            0000:074e     ff02           inc word [bp + si]
            0000:0750     00b40058       add byte [si + 0x5800], dh
            0000:0754     0202           add al, byte [bp + si]
            0000:0756     0002           add byte [bp + si], al
            0000:0758     0003           add byte [bp + di], al
            0000:075a     007300         add byte [bp + di], dh
            0000:075d     3a02           cmp al, byte [bp + si]
            0000:075f     0000           add byte [bx + si], al
            0000:0761     0200           add al, byte [bx + si]
            0000:0763     ff             invalid
            0000:0764     ff2d           ljmp [di]
            0000:0766     006202         add byte [bp + si + 2], ah
            0000:0769     0100           add word [bx + si], ax
            0000:076b     0200           add al, byte [bx + si]
            0000:076d     0200           add al, byte [bx + si]
            0000:076f     1e             push ds
            0000:0770     00be00ff       add byte [bp - fcn.00000100], bh
            0000:0774     ff02           inc word [bp + si]
            0000:0776     050609         add ax, 0x906                 ; " all thirty levels.  Register now for"
            0000:0779     0a07           or al, byte [bx]
            0000:077b     0403           add al, 3
            0000:077d ~   0108           add word [bx + si], cx
            ;-- str._bBitMaps.PAR:
            0000:077e    .string "\bBitMaps.PAR" ; len=13
            ;-- str._Levels.PAR:
            0000:078b    .string "$Levels.PAR" ; len=12
            ;-- str._Fonts.PAR:
            0000:0797    .string "$Fonts.PAR" ; len=11
            ;-- str._HiScores.PAR:
            0000:07a2    .string "$HiScores.PAR" ; len=14
            ;-- str._BITMAPS.PAR:
            0000:07b0    .string "$BITMAPS.PAR" ; len=13
            ;-- str._FONTS.PAR:
            0000:07bd    .string "$FONTS.PAR" ; len=11
            0000:07c8     24ff           and al, 0xff
            ;-- str._r_n_r_nThe_following_files_are_missing_or_corrupt_:_r_n_r_n__r_nplease_re_copy_them_from_the_release_disk._r_n_r_nReturning_to_DOS_...._r_n_r_n____________r_n__r_nCannot_continue__the_levels_data_file_r_n_r_n_____________r_n_r_nwas_missing_or_corrupt__returning_to_DOS_..._r_n_:
            ; DATA XREF from fcn.00006041 @ 0x605f(r)
            0000:07ca    .string "\r\n\r\nThe following files are missing or corrupt :\r\n\r\n$\r\nplease re-copy them from the release disk.\r\n\r\nReturning to DOS ....\r\n\r\n$         $\r\n$\r\nCannot continue; the levels data file\r\n\r\n           $\r\n\r\nwas missing or corrupt, returning to DOS ...\r\n$\x10" ; len=247
            0000:08c1     0003           add byte [bp + di], al
            0000:08c3     0000           add byte [bx + si], al
            ;-- str.___Game__Over:
            0000:08c5    .string "   Game  Over   " ; len=17
            ; CODE XREF from str._r_n_r_nThe_following_files_are_missing_or_corrupt_:_r_n_r_n__r_nplease_re_copy_them_from_the_release_disk._r_n_r_nReturning_to_DOS_...._r_n_r_n____________r_n__r_nCannot_continue__the_levels_data_file_r_n_r_n_____________r_n_r_nwas_missing_or_corrupt__returning_to_DOS_..._r_n_ @ +0xa5(x)
            0000:08d6     002a           add byte [bp + si], ch
            0000:08d8     0009           add byte [bx + di], cl
            0000:08da     0000           add byte [bx + si], al
            ;-- str.___Congratulations___you_have_completed:
            0000:08dc    .string "   Congratulations - you have completed" ; len=40
            ;-- str.___all_thirty_levels.__Register_now_for:
            0000:0904    .string "   all thirty levels.  Register now for" ; len=40
            ;-- str.___another_thirty_plus_a_level_designer:
            ; CODE XREF from str.___all_thirty_levels.__Register_now_for @ +0x26(x)
            0000:092c    .string "   another thirty plus a level designer" ; len=40
            ;-- str.___to_create_your_own._____See_the_file:
            ; CODE XREF from str.___Congratulations___you_have_completed @ +0xd(x)
            ; CODE XREF from str.___another_thirty_plus_a_level_designer @ +0x25(x)
            0000:0954    .string "   to create your own.     See the file" ; len=40
            ;-- str.___Paranoid.DOC_for_more_details.:
            0000:097c    .string "   Paranoid.DOC for more details." ; len=34
            0000:099e ~   0020           add byte [bx + si], ah
            ;-- str.___Press_a_key_...:
            0000:099f    .string "   Press a key ..." ; len=19
            ; DATA XREF from fcn.0000382c @ 0x3837(r)
            0000:09b2     0e             push cs
            0000:09b3     0003           add byte [bp + di], al
            ; CODE XREF from str.___another_thirty_plus_a_level_designer @ +0x14(x)
            0000:09b5     0000           add byte [bx + si], al
            ;-- str.___Level_xx:
            0000:09b7    .string "   Level xx" ; len=12
            0000:09c3     00fa           add dl, bh
            ; CODE XREF from str.___to_create_your_own._____See_the_file @ +0xa(x)
            0000:09c5     0118           add word [bx + si], bx
            0000:09c7     007502         add byte [di + 2], dh
            0000:09ca     3c00           cmp al, 0
            0000:09cc     fa             cli
            0000:09cd     015000         add word [bx + si], dx
            0000:09d0     7502           jne 0x9d4
            0000:09d2     7400           je 0x9d4
            ; CODE XREFS from str.___Level_xx @ +0x19(x), +0x1b(x)
            0000:09d4     fa             cli
            0000:09d5     01880075       add word [bx + si + 0x7500], cx
            0000:09d9     02c4           add al, ah
            0000:09db     00ff           add bh, bh
            0000:09dd     ff4100         inc word [bx + di]
            0000:09e0     1c00           sbb al, 0
            0000:09e2    .string "Press \x84" ; len=7
            0000:09e9     46             inc si
            0000:09ea ~   31802066       xor word [bx + si + 0x6620], ax
            ;-- str._for:
            0000:09ec    .string " for" ; len=5
            ; CODE XREF from str._for @ +0x3(x)
            0000:09f1     41             inc cx
            0000:09f2     002a           add byte [bp + si], ch
            0000:09f4 ~   00696e         add byte [bx + di + 0x6e], ch
            ;-- str.information:
            0000:09f5    .string "information" ; len=12
            0000:0a01     41             inc cx
            0000:0a02     005400         add byte [si], dl
            0000:0a05    .string "Press \x84" ; len=7
            0000:0a0c     46             inc si
            0000:0a0d     3130           xor word [bx + si], si
            0000:0a0f     802074         and byte [bx + si], 0x74      ; [0x74:1]=255 ; 116
            ;-- str.oAb:
            0000:0a12    .string "o" ; len=14
            0000:0a20     646f           outsw dx, word fs:[si]
            0000:0a22     7300           jae 0xa24
            ; CODE XREF from str.oAb @ +0x10(x)
            0000:0a24     41             inc cx
            0000:0a25 ~   008c0050       add byte [si + 0x5000], cl
            ;-- str.Press:
            0000:0a28    .string "Press \x84" ; len=7
            ;-- str.space:
            0000:0a2f    .string "space\x80" ; len=6
            0000:0a35     004100         add byte [bx + di], al
            0000:0a38     9c             pushf
            0000:0a39 ~   00746f         add byte [si + 0x6f], dh
            ;-- str.to_play:
            0000:0a3a    .string "to play" ; len=8
            ; CODE XREF from str.to_play @ +0x6(x)
            0000:0a42     43             inc bx
            0000:0a43     00b10081       add byte [bx + di - 0x7f00], dh
            0000:0a47    .string "Paranoid\x80" ; len=9
            0000:0a50     00ff           add bh, bh
            0000:0a52     ff             invalid
            ; DATA XREF from fcn.000052ff @ 0x5367(r)
            0000:0a53     3c00           cmp al, 0
            0000:0a55     7e00           jle 0xa57
            ; CODE XREF from str.to_play @ +0x1b(x)
            0000:0a57     ff00           inc word [bx + si]
            0000:0a59     1e             push ds
            ; CODE XREF from str.___Level_xx @ +0x2e(x)
            0000:0a5a     003f           add byte [bx], bh
            0000:0a5c     007f80         add byte [bx - 0x80], bh
            0000:0a5f     0f001f         ltr word [bx]
            0000:0a62     803fc0         cmp byte [bx], 0xc0
            0000:0a65     07             pop es
            0000:0a66     800fc0         or byte [bx], 0xc0            ; [0xc0:1]=255 ; 192
            0000:0a69     1f             pop ds
            0000:0a6a     e003           loopne 0xa6f
            0000:0a6c     c007e0         rol byte [bx], 0xe0
            ; CODE XREF from str.to_play @ +0x30(x)
            0000:0a6f     0f             invalid
            0000:0a70     f0             invalid
            0000:0a71     01e0           add ax, sp
            0000:0a73     03f0           add si, ax
            0000:0a75     07             pop es
            0000:0a76     f8             clc
            0000:0a77     00f0           add al, dh
            0000:0a79     01f8           add ax, di
            0000:0a7b     03fc           add di, sp
            ; CODE XREF from str.information @ +0x12(x)
            0000:0a7d     007800         add byte [bx + si], bh
            0000:0a80     fc             cld
            ; DATA XREF from fcn.0000568c @ 0x56a4(r)
            0000:0a81     01fe           add si, di
            0000:0a83     3f             aas
            0000:0a84     7f1f           jg 0xaa5
            0000:0a86     3f             aas
            0000:0a87     0f1f07         nop word [bx]
            0000:0a8a     0f0307         lsl ax, word [bx]
            0000:0a8d     0103           add word [bp + di], ax
            ; CODE XREF from str.oAb @ +0x6(x)
            ; DATA XREF from fcn.0000568c @ 0x5717(r)
            0000:0a8f     0001           add byte [bx + di], al
            0000:0a91     008080c0       add byte [bx + si - 0x3f80], al
            0000:0a95     c0e0e0         shl al, 0xe0
            0000:0a98     f0             invalid
            0000:0a99     f0             invalid
            0000:0a9a     f8             clc
            0000:0a9b     f8             clc
            0000:0a9c     fc             cld
            0000:0a9d     fc             cld
            0000:0a9e     fe             invalid
            ; DATA XREF from fcn.00005c3a @ 0x5c77(r)
            0000:0a9f     e000           loopne 0xaa1
            ; CODE XREF from str.to_play @ +0x65(x)
            0000:0aa1     7000           jo 0xaa3
            ; CODE XREF from str.to_play @ +0x67(x)
            0000:0aa3     3800           cmp byte [bx + si], al
            ; CODE XREF from str.to_play @ +0x4a(x)
            0000:0aa5     1c00           sbb al, 0
            0000:0aa7     0e             push cs
            0000:0aa8     0007           add byte [bx], al
            0000:0aaa     0003           add byte [bp + di], al
            ; CODE XREF from str.to_play @ +0xf(x)
            0000:0aac     8001c0         add byte [bx + di], 0xc0      ; [0xc0:1]=255 ; 192
            ; DATA XREF from fcn.00003f08 @ 0x3f3e(r)
            0000:0aaf     0c02           or al, 2
            0000:0ab1     16             push ss
            0000:0ab2     006202         add byte [bp + si + 2], ah
            0000:0ab5     40             inc ax
            0000:0ab6     000c           add byte [si], cl
            0000:0ab8     024a00         add cl, byte [bp + si]
            0000:0abb     6202           bound ax, dword [bp + si]
            0000:0abd     7400           je 0xabf
            ; CODE XREF from str.to_play @ +0x83(x)
            0000:0abf     0c02           or al, 2
            0000:0ac1     7e00           jle 0xac3
            ; CODE XREF from str.to_play @ +0x87(x)
            0000:0ac3     6202           bound ax, dword [bp + si]
            0000:0ac5     a800           test al, 0
            0000:0ac7     0c02           or al, 2
            0000:0ac9     b200           mov dl, 0
            0000:0acb     6202           bound ax, dword [bp + si]
            0000:0acd     dc00           fadd qword [bx + si]
            0000:0acf     ff             invalid
            0000:0ad0 ~   ff5343         call word [bp + di + 0x43]    ; 67
            ;-- str.SCORE:
            0000:0ad1    .string "SCORE" ; len=6
            ;-- str.LEVEL:
            0000:0ad7    .string "LEVEL" ; len=6
            ;-- str.BALLS:
            0000:0add    .string "BALLS" ; len=6
            ;-- str.BONUS:
            ; DATA XREF from fcn.00003f08 @ 0x3f88(r)
            ; DATA XREF from fcn.00005e83 @ 0x5e8c(r)
            0000:0ae3    .string "BONUS" ; len=6
            ; DATA XREF from fcn.00003f08 @ 0x3f68(r)
            0000:0ae9     250219         and ax, 0x1902                ; "alls that hit your bat in"
            0000:0aec     00d1           add cl, dl
            0000:0aee     0a25           or ah, byte [di]
            0000:0af0     024d00         add cl, byte [di]
            0000:0af3     d7             xlatb
            0000:0af4     0a25           or ah, byte [di]
            0000:0af6     028100dd       add al, byte [bx + di - 0x2300]
            0000:0afa     0a25           or ah, byte [di]
            0000:0afc     02b500e3       add dh, byte [di - 0x1d00]
            0000:0b00     0aff           or bh, bh
            0000:0b02     ff0f           dec word [bx]
            0000:0b04     02ee           add ch, dh
            0000:0b06     005f02         add byte [bx + 2], bl
            0000:0b09     0401           add al, 1
            0000:0b0b     07             pop es
            0000:0b0c     021e0167       add bl, byte [0x6701]         ; [0x6701:1]=255
            0000:0b10     024201         add al, byte [bp + si + 1]
            0000:0b13     ff             invalid
            0000:0b14     ff4300         inc word [bp + di]
            0000:0b17 ~   f200815061     add byte [bx + di + 0x6150], al
            ;-- str.Paranoid:
            0000:0b1a    .string "Paranoid" ; len=9
            0000:0b23     42             inc dx
            0000:0b24     0022           add byte [bp + si], ah
            0000:0b26 ~   014269         add word [bp + si + 0x69], ax
            ;-- str.Bit_Bucket:
            0000:0b27    .string "Bit Bucket" ; len=11
            ; CODE XREF from str.Bit_Bucket @ +0x9(x)
            0000:0b32     43             inc bx
            0000:0b33     0030           add byte [bx + si], dh
            0000:0b35 ~   014272         add word [bp + si + 0x72], ax
            ;-- str.Brothers:
            0000:0b36    .string "Brothers" ; len=9
            0000:0b3f     45             inc bp
            0000:0b40     0008           add byte [bx + si], cl
            0000:0b42 ~   01806973       add word [bx + si + 0x7369], ax
            ;-- str.is_a:
            0000:0b44    .string "is a" ; len=5
            0000:0b49     42             inc dx
            0000:0b4a     004601         add byte [bp + 1], al
            ;-- str.production:
            0000:0b4d    .string "production" ; len=11
            0000:0b58     ff             invalid
            0000:0b59     ff             invalid
            ; DATA XREF from fcn.00002693 @ 0x27a2(r)
            ; DATA XREF from fcn.00002ed7 @ 0x2fa7(r)
            0000:0b5a     ff02           inc word [bp + si]
            0000:0b5c     0100           add word [bx + si], ax
            0000:0b5e     02ff           add bh, bh
            0000:0b60     0001           add byte [bx + di], al
            0000:0b62     0100           add word [bx + si], ax
            0000:0b64     ff02           inc word [bp + si]
            0000:0b66     0001           add byte [bx + di], al
            0000:0b68     02ff           add bh, bh
            ; DATA XREF from fcn.00002858 @ 0x28c6(r)
            0000:0b6a     ff             invalid
            0000:0b6b     ff             invalid
            0000:0b6c     ff01           inc word [bx + di]
            0000:0b6e     ff02           inc word [bp + si]
            0000:0b70     03ff           add di, di
            0000:0b72     ff03           inc word [bp + di]
            0000:0b74     02ff           add bh, bh
            0000:0b76     01ff           add di, di
            0000:0b78     ff             invalid
            0000:0b79     ff060c14       inc word [0x140c]             ; [0x140c:2]=0x6572
            0000:0b7d     1b21           sbb sp, word [bx + di]
            ; CODE XREF from str.Paranoid @ +0x2(x)
            0000:0b7f     0912           or word [bp + si], dx
            0000:0b81     1c25           sbb al, 0x25
            0000:0b83     2e0c18         or al, 0x18                   ; 24
            0000:0b86     2430           and al, 0x30                  ; 48
            0000:0b88     3c00           cmp al, 0
            0000:0b8a     1414           adc al, 0x14                  ; 20
            0000:0b8c     140f           adc al, 0xf                   ; 15
            0000:0b8e     0a0f           or cl, byte [bx]
            0000:0b90     0a05           or al, byte [di]
            ;-- str._n_n_n_n_n_n:
            0000:0b92    .string "\n\n\n\n\n\n\x0f" ; len=7
            0000:0b99     0f             invalid
            0000:0b9a     0f             invalid
            0000:0b9b     0f             invalid
            0000:0b9c     0f1914         nop word [si]
            0000:0b9f     0f             invalid
            ;-- str._n_n_n_n_n:
            0000:0ba0    .string "\n\n\n\n\n" ; len=6
            0000:0ba6     1414           adc al, 0x14                  ; 20
            0000:0ba8     147c           adc al, 0x7c                  ; 124
            0000:0baa     e494           in al, 0x94
            0000:0bac     e4ac           in al, 0xac
            0000:0bae     e4c4           in al, 0xc4
            0000:0bb0     e4dc           in al, 0xdc
            0000:0bb2     e4f4           in al, 0xf4
            0000:0bb4     e40c           in al, 0xc
            ; CODE XREF from str.production @ +0x3(x)
            0000:0bb6     e524           in ax, 0x24
            0000:0bb8     e53c           in ax, 0x3c
            0000:0bba     e554           in ax, 0x54
            0000:0bbc     e56c           in ax, 0x6c
            ; CODE XREF from str.production @ +0x6(x)
            0000:0bbe     e584           in ax, 0x84
            0000:0bc0     e59c           in ax, 0x9c
            0000:0bc2     e5b4           in ax, 0xb4
            0000:0bc4     e5cc           in ax, 0xcc
            0000:0bc6     e5e4           in ax, 0xe4
            0000:0bc8     e5e4           in ax, 0xe4
            0000:0bca     e5fc           in ax, 0xfc
            0000:0bcc     e5fc           in ax, 0xfc
            0000:0bce     e514           in ax, 0x14
            0000:0bd0     e614           out 0x14, al
            0000:0bd2     e62c           out 0x2c, al
            0000:0bd4     e62c           out 0x2c, al
            0000:0bd6     e644           out 0x44, al
            0000:0bd8     e644           out 0x44, al
            0000:0bda     e65c           out 0x5c, al
            0000:0bdc     e65c           out 0x5c, al
            0000:0bde     e674           out 0x74, al
            0000:0be0     e68c           out 0x8c, al
            0000:0be2     e6a4           out 0xa4, al
            0000:0be4     e6bc           out 0xbc, al
            0000:0be6     e6d4           out 0xd4, al
            0000:0be8     e6d4           out 0xd4, al
            0000:0bea     e6ec           out 0xec, al
            0000:0bec     e6ec           out 0xec, al
            0000:0bee     e604           out 4, al
            0000:0bf0     e704           out 4, ax
            0000:0bf2     e71c           out 0x1c, ax
            0000:0bf4     e734           out 0x34, ax
            0000:0bf6     e74c           out 0x4c, ax
            0000:0bf8     e764           out 0x64, ax
            0000:0bfa     e77c           out 0x7c, ax
            0000:0bfc     e764           out 0x64, ax
            0000:0bfe     e74c           out 0x4c, ax
            0000:0c00     e734           out 0x34, ax
            0000:0c02     e794           out 0x94, ax
            0000:0c04     e7ac           out 0xac, ax
            0000:0c06     e7c4           out 0xc4, ax
            0000:0c08     e7dc           out 0xdc, ax
            0000:0c0a     e7f4           out 0xf4, ax
            0000:0c0c     e70c           out 0xc, ax
            0000:0c0e     e824e8         call 0xfffff435
            0000:0c11     0ce8           or al, 0xe8                   ; 232
            0000:0c13     f4             hlt
            0000:0c14     e73c           out 0x3c, ax
            0000:0c16     e854e8         call 0xfffff46d
            0000:0c19     6c             insb byte es:[di], dx
            0000:0c1a     e884e8         call 0xfffff4a1
            0000:0c1d     6c             insb byte es:[di], dx
            0000:0c1e     e854e8         call 0xfffff475
            0000:0c21     9c             pushf
            0000:0c22     e8b4e8         call 0xfffff4d9
            0000:0c25     cc             int3
            0000:0c26     e8b4e8         call 0xfffff4dd
            0000:0c29     9c             pushf
            0000:0c2a     e8e4e8         call 0xfffff511
            0000:0c2d     fc             cld
            0000:0c2e     e8e4e8         call 0xfffff515
            ; DATA XREF from fcn.000022be @ 0x22dd(r)
            ; DATA XREF from fcn.00004dcb @ 0x4dcf(r)
            0000:0c31     0008           add byte [bx + si], cl
            0000:0c33     0a12           or dl, byte [bp + si]
            0000:0c35     141c           adc al, 0x1c                  ; 28
            0000:0c37     1e             push ds
            ;-- str.__._BHJXZ_jlvx:
            0000:0c38    .string "$&,.@BHJXZ^`jlvx\x86" ; len=17
            ; DATA XREF from fcn.00003c75 @ 0x3c7c(r)
            0000:0c49     0000           add byte [bx + si], al
            0000:0c4b     01f6           add si, si
            0000:0c4d     2416           and al, 0x16                  ; 22
            ;-- str._9___:
            0000:0c4f    .string "%9%?%\x8b" ; len=6
            0000:0c55     259425         and ax, 0x2594
            0000:0c58     9a25ba25c0     lcall 0xc025:0xba25
            0000:0c5d ~   25c625         and ax, 0x25c6
            ;-- str.__n:
            0000:0c5f    .string "%\n&=&\xf7" ; len=6
            0000:0c65     0c01           or al, 1
            0000:0c67     0d080d         or ax, 0xd08
            0000:0c6a ~   150d28         adc ax, 0x280d
            ;-- str._r__r__r__rO_r_rc_rm_rw_r:
            0000:0c6b    .string "\r(\r/\r<\rO\r\\rc\rm\rw\r\x04" ; len=18
            0000:0c7d     1a04           sbb al, byte [si]
            0000:0c7f     050000         add ax, 0
            0000:0c82     ff02           inc word [bp + si]
            0000:0c84     48             dec ax
            0000:0c85     0305           add ax, word [di]
            0000:0c87     0000           add byte [bx + si], al
            0000:0c89     ff02           inc word [bp + si]
            0000:0c8b     bc0205         mov sp, 0x502                 ; "nal graphics - Tom North         PRESS SPACE"
            0000:0c8e     0000           add byte [bx + si], al
            0000:0c90     ff03           inc word [bp + di]
            0000:0c92     27             daa
            0000:0c93     06             push es
            0000:0c94     0200           add al, byte [bx + si]
            0000:0c96     0001           add byte [bx + di], al
            0000:0c98     0d0202         or ax, 0x202                  ; "ile.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
            0000:0c9b     0000           add byte [bx + si], al
            0000:0c9d     ff03           inc word [bp + di]
            0000:0c9f     27             daa
            0000:0ca0     06             push es
            0000:0ca1     0200           add al, byte [bx + si]
            0000:0ca3     0001           add byte [bx + di], al
            0000:0ca5     fb             sti
            0000:0ca6     0002           add byte [bp + si], al
            0000:0ca8     0000           add byte [bx + si], al
            0000:0caa     0111           add word [bx + di], dx
            0000:0cac     0102           add word [bp + si], ax
            0000:0cae     0000           add byte [bx + si], al
            0000:0cb0     0108           add word [bx + si], cx
            0000:0cb2     0102           add word [bp + si], ax
            0000:0cb4     0000           add byte [bx + si], al
            0000:0cb6     ff04           inc word [si]
            0000:0cb8     f4             hlt
            0000:0cb9     0105           add word [di], ax
            0000:0cbb     6400ff         add bh, bh
            ; DATA XREF from fcn.00002cd3 @ 0x2cff(r)
            0000:0cbe     020d           add cl, byte [di]
            ; CODE XREF from str.__._BHJXZ_jlvx @ +0xe(x)
            0000:0cc0     0205           add al, byte [di]
            0000:0cc2     0000           add byte [bx + si], al
            0000:0cc4     ff0a           dec word [bp + si]
            0000:0cc6     d007           rol byte [bx], 1
            0000:0cc8     1e             push ds
            0000:0cc9     1400           adc al, 0
            0000:0ccb     01d4           add sp, dx
            0000:0ccd     fe             invalid
            0000:0cce     1e             push ds
            0000:0ccf     1400           adc al, 0
            0000:0cd1     01d4           add sp, dx
            0000:0cd3     fe             invalid
            0000:0cd4     1e             push ds
            0000:0cd5     1400           adc al, 0
            0000:0cd7     01d4           add sp, dx
            0000:0cd9     fe             invalid
            0000:0cda     1e             push ds
            0000:0cdb     1400           adc al, 0
            0000:0cdd     ff0b           dec word [bp + di]
            0000:0cdf     d007           rol byte [bx], 1
            0000:0ce1     1e             push ds
            0000:0ce2     ec             in al, dx
            0000:0ce3     ff01           inc word [bx + di]
            0000:0ce5     2c01           sub al, 1
            0000:0ce7     1e             push ds
            0000:0ce8     ec             in al, dx
            0000:0ce9     ff01           inc word [bx + di]
            0000:0ceb     2c01           sub al, 1
            0000:0ced     1e             push ds
            0000:0cee     ec             in al, dx
            0000:0cef     ff01           inc word [bx + di]
            0000:0cf1     2c01           sub al, 1
            0000:0cf3     1e             push ds
            0000:0cf4     ec             in al, dx
            0000:0cf5     ff             invalid
            0000:0cf6     ff08           dec word [bx + si]
            0000:0cf8     d007           rol byte [bx], 1
            0000:0cfa     0fecff         paddsb mm7, mm7
            0000:0cfd     0fe2ff         psrad mm7, mm7
            0000:0d00     ff08           dec word [bx + si]
            0000:0d02     d007           rol byte [bx], 1
            0000:0d04     1e             push ds
            0000:0d05     1400           adc al, 0
            0000:0d07     ff08           dec word [bx + si]
            0000:0d09     d007           rol byte [bx], 1
            0000:0d0b     1464           adc al, 0x64                  ; 100
            0000:0d0d     0001           add byte [bx + di], al
            0000:0d0f     30f8           xor al, bh
            0000:0d11     1464           adc al, 0x64                  ; 100
            0000:0d13     00ff           add bh, bh
            0000:0d15     08d0           or al, dl
            0000:0d17     07             pop es
            0000:0d18     0a00           or al, byte [bx + si]
            0000:0d1a     0001           add byte [bx + di], al
            0000:0d1c     70fe           jo 0xd1c
            0000:0d1e     0a00           or al, byte [bx + si]
            0000:0d20     0001           add byte [bx + di], al
            0000:0d22     02ff           add bh, bh
            0000:0d24     0a00           or al, byte [bx + si]
            0000:0d26     00ff           add bh, bh
            0000:0d28     08a00f1e       or byte [bx + si + 0x1e0f], ah
            0000:0d2c     9c             pushf
            0000:0d2d     ff             invalid
            ; DATA XREF from str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE @ +0xd4(r)
            0000:0d2e     ff08           dec word [bx + si]
            0000:0d30     d007           rol byte [bx], 1
            0000:0d32     14ec           adc al, 0xec                  ; 236
            0000:0d34     ff01           inc word [bx + di]
            0000:0d36     90             nop
            0000:0d37     0114           add word [si], dx
            0000:0d39     ec             in al, dx
            0000:0d3a     ff             invalid
            0000:0d3b     ff08           dec word [bx + si]
            0000:0d3d     e8030f         call fcn.00001c43
            0000:0d40     d8ff           fdivr st(7)
            0000:0d42     01c2           add dx, ax
            0000:0d44     010f           add word [bx], cx
            0000:0d46     d8ff           fdivr st(7)
            0000:0d48     01c2           add dx, ax
            0000:0d4a     010f           add word [bx], cx
            0000:0d4c     d8ff           fdivr st(7)
            0000:0d4e     ff08           dec word [bx + si]
            0000:0d50     2003           and byte [bp + di], al
            0000:0d52     0d1400         or ax, 0x14                   ; 20
            0000:0d55     0decff         or ax, 0xffec
            0000:0d58     0d1400         or ax, 0x14                   ; 20
            0000:0d5b     ff09           dec word [bx + di]
            0000:0d5d     a00f3c         mov al, byte [0x3c0f]         ; [0x3c0f:1]=102
            0000:0d60     c4             invalid
            0000:0d61     ff             invalid
            0000:0d62     ff08           dec word [bx + si]
            0000:0d64     d007           rol byte [bx], 1
            0000:0d66     14e2           adc al, 0xe2                  ; 226
            0000:0d68     ff14           call word [si]
            0000:0d6a     1e             push ds
            0000:0d6b     00ff           add bh, bh
            0000:0d6d     08d0           or al, dl
            0000:0d6f     07             pop es
            0000:0d70     1423           adc al, 0x23                  ; 35
            0000:0d72     0014           add byte [si], dl
            0000:0d74     dd             invalid
            0000:0d75     ff             invalid
            0000:0d76     ff08           dec word [bx + si]
            0000:0d78     a00f14         mov al, byte [0x140f]         ; [0x140f:1]=117
            0000:0d7b     9c             pushf
            0000:0d7c     ff01           inc word [bx + di]
            0000:0d7e     d007           rol byte [bx], 1
            0000:0d80     149c           adc al, 0x9c                  ; 156
            0000:0d82     ff             invalid
            0000:0d83 ~   ff20           jmp word [bx + si]
            ;-- str.__The_object_of_the_game_Paranoid_is_to_remove_all_of_the:
            ; DATA XREF from fcn.00004beb @ 0x4bfe(r)
            0000:0d84    .string "  The object of the game Paranoid is to remove all of the" ; len=58
            ;-- str.bricks_from_the_top_of_the_screen.__To_accomplish_this:
            0000:0dbe    .string "bricks from the top of the screen.  To accomplish this" ; len=55
            ;-- str.mammoth_task__you_are_equipped_with_a_small_but_perfectly:
            0000:0df5    .string "mammoth task, you are equipped with a small but perfectly" ; len=58
            ;-- str.formed_bat_with_which_you_must_hit_the_ball_at_the_bricks.:
            ; CODE XREF from str.mammoth_task__you_are_equipped_with_a_small_but_perfectly @ +0x38(x)
            0000:0e2f    .string "formed bat with which you must hit the ball at the bricks." ; len=59
            0000:0e6a ~   0020           add byte [bx + si], ah
            ;-- str.__When_the_ball_collides_with_a_brick__you_will_notice_three:
            0000:0e6b    .string "  When the ball collides with a brick, you will notice three" ; len=61
            ;-- str.or_maybe_four_things.__First__an_annoying_sound_effect_:
            0000:0ea8    .string "or maybe four things.  First, an annoying sound effect," ; len=56
            ;-- str.second__the_brick_flashes_white_and_disappears__third__your:
            0000:0ee0    .string "second, the brick flashes white and disappears, third, your" ; len=60
            ;-- str.score_goes_up__by_different_amounts_for_different_sorts_of:
            0000:0f1c    .string "score goes up, by different amounts for different sorts of" ; len=59
            ;-- str.brick__and_fourth__a_brilliantly_animated_icon_might_float:
            0000:0f57    .string "brick, and fourth, a brilliantly animated icon might float" ; len=59
            ;-- str.majestically_down_to_your_awaiting_bat.__If_you_catch_one_of:
            ; CODE XREF from str.brick__and_fourth__a_brilliantly_animated_icon_might_float @ +0x39(x)
            0000:0f92    .string "majestically down to your awaiting bat.  If you catch one of" ; len=61
            ;-- str.these__strange_and_wondrous_things_happen....:
            0000:0fcf    .string "these, strange and wondrous things happen...." ; len=46
            0000:0ffd ~   0020           add byte [bx + si], ah
            ;-- str.__To_control_your_bat__use_the_left_and_right_shift_keys_to:
            0000:0ffe    .string "  To control your bat, use the left and right shift keys to" ; len=60
            ;-- str.move_left_and_right.__The_spacebar_is_used_to_activate:
            0000:103a    .string "move left and right.  The spacebar is used to activate" ; len=55
            ;-- str.special_powers_which_the_icons_bestow_on_your_bat___more_on:
            0000:1071    .string "special powers which the icons bestow on your bat - more on" ; len=60
            ;-- str.that_later.__If__however__you_should_miss_a_ball__your_bat:
            0000:10ad    .string "that later.  If, however, you should miss a ball, your bat" ; len=59
            ;-- str.loses_any_powers_it_might_have_had.:
            ; CODE XREF from str.that_later.__If__however__you_should_miss_a_ball__your_bat @ +0x39(x)
            0000:10e8    .string "loses any powers it might have had." ; len=36
            0000:110c ~   ff20           jmp word [bx + si]
            ;-- str.__Some_of_the_bricks_have_letters_written_on_them__and_when:
            ; DATA XREF from fcn.00004beb @ 0x4c48(r)
            0000:110d    .string "  Some of the bricks have letters written on them, and when" ; len=60
            ;-- str.you_hit_one_of_these__the_same_letter_lights_up_in_the_Bonus:
            ; CODE XREF from str.that_later.__If__however__you_should_miss_a_ball__your_bat @ +0x27(x)
            0000:1149    .string "you hit one of these, the same letter lights up in the Bonus" ; len=61
            ;-- str.panel_to_the_right_of_the_play_area.__When_all_five_letters:
            0000:1186    .string "panel to the right of the play area.  When all five letters" ; len=60
            ;-- str.are_lit__a_bonus_will_be_added_to_your_score___you_will_get:
            ; CODE XREF from str.you_hit_one_of_these__the_same_letter_lights_up_in_the_Bonus @ +0x11(x)
            0000:11c2    .string "are lit, a bonus will be added to your score - you will get" ; len=60
            ;-- str.more_points_if_you_collect_the_letters_in_the_correct_order.:
            ; CODE XREF from str.are_lit__a_bonus_will_be_added_to_your_score___you_will_get @ +0x3a(x)
            0000:11fe    .string "more points if you collect the letters in the correct order." ; len=61
            ;-- str.The_other_three_panels__Score__Level_and_Balls__need_no:
            0000:123b    .string "The other three panels, Score, Level and Balls, need no" ; len=56
            ;-- str.explanation.:
            0000:1273    .string "explanation." ; len=13
            0000:1280 ~   0020           add byte [bx + si], ah
            ;-- str.__During_the_game__the_ball_speeds_up_to_stop_things:
            0000:1281    .string "  During the game, the ball speeds up to stop things" ; len=53
            ;-- str.becoming_too_easy.__Each_ball_starts_off_at_a_nice_dawdling:
            0000:12b6    .string "becoming too easy.  Each ball starts off at a nice dawdling" ; len=60
            ;-- str.rate__but_then_gets_faster_the_longer_it_stays_in_play.:
            0000:12f2    .string "rate, but then gets faster the longer it stays in play." ; len=56
            0000:132a     0000           add byte [bx + si], al
            ;-- str.__Press_F10_at_any_time_to_exit_to_Dos__and_Escape_to_return:
            0000:132c    .string "  Press F10 at any time to exit to Dos, and Escape to return" ; len=61
            ;-- str.to_the_demo_from_a_game.:
            0000:1369    .string "to the demo from a game." ; len=25
            0000:1382 ~   ff5061         call word [bx + si + 0x61]    ; 97
            ;-- str.Paranoid___information:
            ; DATA XREFS from fcn.00004beb @ 0x4c1c(r), 0x4c66(r)
            ; DATA XREF from fcn.00004c87 @ 0x4cb0(r)
            ; DATA XREFS from fcn.00004cf2 @ 0x4cff(r), 0x4d62(r)
            0000:1383    .string "Paranoid - information" ; len=23
            ;-- str.Press_a_key_for_brick_descriptions:
            ; DATA XREF from fcn.00004beb @ 0x4c72(r)
            0000:139a    .string "Press a key for brick descriptions" ; len=35
            ;-- str.Press_a_key_for_icon_descriptions:
            ; DATA XREF from fcn.00004c87 @ 0x4cbc(r)
            0000:13bd    .string "Press a key for icon descriptions" ; len=34
            ;-- str.Press_a_key_for_the_next_page:
            ; DATA XREF from fcn.00004beb @ 0x4c28(r)
            ; DATA XREF from fcn.00004cf2 @ 0x4d0b(r)
            0000:13df    .string "Press a key for the next page" ; len=30
            ;-- str.Press_a_key_to_return_to_the_demo:
            ; DATA XREF from fcn.00004cf2 @ 0x4d6e(r)
            0000:13fd    .string "Press a key to return to the demo" ; len=34
            ; CODE XREF from str.Press_a_key_for_brick_descriptions @ +0x1a(x)
            ; DATA XREF from fcn.00004c87 @ 0x4c8f(r)
            0000:141f     0a00           or al, byte [bx + si]
            0000:1421     a800           test al, 0
            0000:1423     0f00a80014     verw word [bx + si + 0x1400]
            0000:1428     00a8000a       add byte [bx + si + 0xa00], ch
            ; CODE XREF from str.Press_a_key_for_brick_descriptions @ +0x1c(x)
            0000:142c     005000         add byte [bx + si], dl
            0000:142f     ff             invalid
            0000:1430     ff             invalid
            0000:1431     ff             invalid
            0000:1432     ff0a           dec word [bp + si]
            0000:1434     005e00         add byte [bp], bl
            0000:1437     ff             invalid
            0000:1438     ff             invalid
            ; CODE XREF from str.Press_a_key_for_icon_descriptions @ +0x15(x)
            0000:1439     ff             invalid
            0000:143a     ff0a           dec word [bp + si]
            0000:143c     00d4           add ah, dl
            0000:143e     001e0024       add byte [0x2400], bl         ; [0x2400:1]=68 ; "D\x05\x83\xc6\t\xe2\xe5^YX\xc3PSQRVW\xba\xce\x03\xb0\x05\xeeB\xb0\x11\xee\xbf\xcd\u00b9\x05"
            0000:1442     000a           add byte [bp + si], cl
            0000:1444     0010           add byte [bx + si], dl
            0000:1446     010f           add word [bx], cx
            0000:1448     0017           add byte [bx], dl
            0000:144a     0114           add word [si], dx
            0000:144c     001e0119       add byte [0x1901], bl         ; [0x1901:1]=98 ; "balls that hit your bat in"
            0000:1450     0025           add byte [di], ah
            0000:1452     011e002c       add word [0x2c00], bx         ; [0x2c00:2]=0x8bc1
            0000:1456     011e0032       add word [0x3200], bx         ; [0x3200:2]=0x6e8
            0000:145a     000a           add byte [bp + si], cl
            0000:145c     0032           add byte [bp + si], dh
            0000:145e     000f           add byte [bx], cl
            0000:1460     0032           add byte [bp + si], dh
            0000:1462     0014           add byte [si], dl
            0000:1464     0032           add byte [bp + si], dh
            0000:1466     0019           add byte [bx + di], bl
            0000:1468     0032           add byte [bp + si], dh
            0000:146a     000a           add byte [bp + si], cl
            0000:146c     007c00         add byte [si], bh
            0000:146f     0f00810014     sldt word [bx + di + 0x1400]
            0000:1474     00850019       add byte [di + 0x1900], al
            0000:1478     008a000a       add byte [bp + si + 0xa00], cl
            0000:147c     0024           add byte [si], ah
            0000:147e     000f           add byte [bx], cl
            ; CODE XREF from str.Press_a_key_to_return_to_the_demo @ +0x13(x)
            0000:1480     0024           add byte [si], ah
            0000:1482     0014           add byte [si], dl
            0000:1484     0024           add byte [si], ah
            0000:1486     0019           add byte [bx + di], bl
            0000:1488     0024           add byte [si], ah
            0000:148a     000a           add byte [bp + si], cl
            0000:148c     00f2           add dl, dh
            0000:148e     000a           add byte [bp + si], cl
            0000:1490     00b6000f       add byte [bp + 0xf00], dh
            0000:1494     00b60014       add byte [bp + 0x1400], dh
            0000:1498     00b60024       add byte [bp + 0x2400], dh
            0000:149c     0022           add byte [bp + si], ah
            0000:149e ~   005468         add byte [si + 0x68], dl
            ;-- str.These_are_normal_bricks___the_top:
            0000:149f    .string "These are normal bricks - the top" ; len=34
            ; CODE XREF from str.These_are_normal_bricks___the_top @ +0x20(x)
            0000:14c1     2400           and al, 0
            0000:14c3     3000           xor byte [bx + si], al
            ;-- str.row_score_10_each__the_rest_15.:
            0000:14c5    .string "row score 10 each, the rest 15." ; len=32
            0000:14e5     1000           adc byte [bx + si], al
            0000:14e7     4e             dec si
            0000:14e8 ~   00596f         add byte [bx + di + 0x6f], bl
            ;-- str.You_need_to_hit_these_twice_each___score_15_for_the:
            ; CODE XREF from str.row_score_10_each__the_rest_15. @ +0x2(x)
            0000:14e9    .string "You need to hit these twice each - score 15 for the" ; len=52
            0000:151d     1000           adc byte [bx + si], al
            0000:151f     5c             pop sp
            0000:1520 ~   006669         add byte [bp + 0x69], ah
            ;-- str.first_hit__then_10_for_the_second.:
            0000:1521    .string "first hit, then 10 for the second." ; len=35
            0000:1544     1f             pop ds
            0000:1545     007a00         add byte [bp + si], bh
            ;-- str.Four_hits_are_needed_to_remove_this:
            0000:1548    .string "Four hits are needed to remove this" ; len=36
            0000:156c     1f             pop ds
            0000:156d ~   00880074       add byte [bx + si + 0x7400], cl
            ;-- str.type__scoring_70_points_in_total.:
            0000:1570    .string "type, scoring 70 points in total." ; len=34
            0000:1592     1a00           sbb al, byte [bx + si]
            0000:1594     a6             cmpsb byte [si], byte es:[di]
            0000:1595 ~   005468         add byte [si + 0x68], dl
            ;-- str.The_ones_with_pretty_pictures_on_are_worth:
            0000:1596    .string "The ones with pretty pictures on are worth" ; len=43
            0000:15c1     1a00           sbb al, byte [bx + si]
            0000:15c3     b400           mov ah, 0
            ;-- str.20_points_each.:
            0000:15c5    .string "20 points each." ; len=16
            0000:15d5     1000           adc byte [bx + si], al
            0000:15d7     d200           rol byte [bx + si], cl
            ;-- str.This_sort_only_gives_you_a_paltry_5_points.:
            ; CODE XREF from str.type__scoring_70_points_in_total. @ +0x2(x)
            0000:15d9    .string "This sort only gives you a paltry 5 points." ; len=44
            0000:1605     1000           adc byte [bx + si], al
            0000:1607 ~   f0004e6f       lock add byte [bp + 0x6f], cl
            ;-- str.No_amount_of_battering_can_demolish_this_sturdy_block.:
            0000:1609    .string "No amount of battering can demolish this sturdy block." ; len=55
            0000:1640     2400           and al, 0
            0000:1642     0e             push cs
            0000:1643 ~   01436f         add word [bp + di + 0x6f], ax
            ;-- str.Collect_these_in_the_right_order:
            0000:1644    .string "Collect these in the right order" ; len=33
            ; CODE XREF from str.Collect_these_in_the_right_order @ +0x1e(x)
            0000:1665     2400           and al, 0
            0000:1667     1c01           sbb al, 1
            ;-- str.and_score_500__otherwise_only_200.:
            0000:1669    .string "and score 500, otherwise only 200." ; len=35
            0000:168c     2400           and al, 0
            ; CODE XREF from str.No_amount_of_battering_can_demolish_this_sturdy_block. @ +0xf(x)
            0000:168e     2a01           sub al, byte [bx + di]
            ;-- str.10_points_for_each_one_anyway.:
            0000:1690    .string "10 points for each one anyway." ; len=31
            0000:16af     ff             invalid
            0000:16b0 ~   ff5468         call word [si + 0x68]         ; 104
            ;-- str.This_handy_icon_increases_the_size_of_your_bat_by_a:
            ; DATA XREF from fcn.00004cf2 @ 0x4d22(r)
            0000:16b1    .string "This handy icon increases the size of your bat by a" ; len=52
            ;-- str.mighty_third___very_convenient_for_those_hard_to_reach:
            0000:16e5    .string "mighty third - very convenient for those hard-to-reach" ; len=55
            ;-- str.shots.:
            0000:171c    .string "shots." ; len=7
            0000:1723 ~   004361         add byte [bp + di + 0x61], al
            ;-- str.Catch_this_icon__and_you_will_find_that_your_bat_has:
            0000:1724    .string "Catch this icon, and you will find that your bat has" ; len=53
            ;-- str.shrunk_by_a_third.__Not_a_particularly_useful_icon.:
            0000:1759    .string "shrunk by a third.  Not a particularly useful icon." ; len=52
            0000:178d ~   004966         add byte [bx + di + 0x66], cl
            ;-- str.If_you_succeed_in_capturing_this_icon__your_bat_will:
            0000:178e    .string "If you succeed in capturing this icon, your bat will" ; len=53
            ;-- str.be_able_to_catch_the_ball.__When_the_ball_is_stuck_to:
            0000:17c3    .string "be able to catch the ball.  When the ball is stuck to" ; len=54
            ;-- str.your_bat__press_the_spacebar_to_release_it.:
            0000:17f9    .string "your bat, press the spacebar to release it." ; len=44
            0000:1825 ~   004765         add byte [bx + 0x65], al
            ;-- str.Get_this_icon_to_add_an_incredible_500_points_to_your:
            ; CODE XREF from str.If_you_succeed_in_capturing_this_icon__your_bat_will @ +0x27(x)
            0000:1826    .string "Get this icon to add an incredible 500 points to your" ; len=54
            ;-- str.score.:
            0000:185c    .string "score." ; len=7
            0000:1863 ~   004966         add byte [bx + di + 0x66], cl
            ;-- str.If_you_manage_to_catch_this_icon__you_will_be_able_to:
            0000:1864    .string "If you manage to catch this icon, you will be able to" ; len=54
            ;-- str.obliterate_bricks_with_some_heavy_artillery___use_the:
            0000:189a    .string "obliterate bricks with some heavy artillery - use the" ; len=54
            ;-- str.spacebar_to_fire.:
            0000:18d0    .string "spacebar to fire." ; len=18
            0000:18e2 ~   005468         add byte [si + 0x68], dl
            ;-- str.This_icon_splits_the_next_two_balls_that_hit_your_bat_in:
            0000:18e3    .string "This icon splits the next two balls that hit your bat in" ; len=57
            ;-- str.two.:
            0000:191c    .string "two." ; len=5
            0000:1921 ~   ff0a           dec word [bp + si]
            ;-- str._n__nY_n:
            ; DATA XREF from fcn.00004dcb @ 0x4df3(r)
            0000:1922    .string "\n" ; len=12
            0000:192e     0a00           or al, byte [bx + si]
            0000:1930     bb000a         mov bx, 0xa00
            0000:1933     00e5           add ch, ah
            0000:1935     000a           add byte [bp + si], cl
            0000:1937     001d           add byte [di], bl
            ; CODE XREF from str.This_icon_splits_the_next_two_balls_that_hit_your_bat_in @ +0x34(x)
            0000:1939 ~   01546f         add word [si + 0x6f], dx
            ;-- str.To_increase_your_stock_of_balls__catch_this_icon_and_you:
            ; DATA XREF from fcn.00004cf2 @ 0x4d85(r)
            0000:193a    .string "To increase your stock of balls, catch this icon and you" ; len=57
            ;-- str.will_gain_an_extra_one.:
            ; CODE XREF from str.To_increase_your_stock_of_balls__catch_this_icon_and_you @ +0x37(x)
            0000:1973    .string "will gain an extra one." ; len=24
            0000:198b ~   005768         add byte [bx + 0x68], dl
            ;-- str.When_you_catch_this_icon__a_thin_line_will_appear_at_the:
            0000:198c    .string "When you catch this icon, a thin line will appear at the" ; len=57
            ;-- str.bottom_of_the_screen.__If_you_miss_a_ball__it_will:
            0000:19c5    .string "bottom of the screen.  If you miss a ball, it will" ; len=51
            ;-- str.bounce_off_this_barrier___but_only_once.:
            0000:19f8    .string "bounce off this barrier - but only once." ; len=41
            0000:1a21 ~   004966         add byte [bx + di + 0x66], cl
            ;-- str.If_the_current_level_is_too_tricky_for_you__catch_this:
            0000:1a22    .string "If the current level is too tricky for you, catch this" ; len=55
            ;-- str.icon_to_be_whisked_away_to_the_next_one.:
            0000:1a59    .string "icon to be whisked away to the next one." ; len=41
            0000:1a82 ~   005468         add byte [si + 0x68], dl
            ;-- str.The_ball_will_speed_up_if_you_are_unfortunate_enough_to:
            0000:1a83    .string "The ball will speed up if you are unfortunate enough to" ; len=56
            ;-- str.catch_this_icon.:
            0000:1abb    .string "catch this icon." ; len=17
            0000:1acc ~   005468         add byte [si + 0x68], dl
            ;-- str.This_icon_will_slow_all_the_balls_down_to_their_original:
            0000:1acd    .string "This icon will slow all the balls down to their original" ; len=57
            ;-- str.ambling_pace.:
            0000:1b06    .string "ambling pace." ; len=14
            0000:1b14 ~   004120         add byte [bx + di + 0x20], al
            ;-- str.A_very_potent_icon___instead_of_bouncing_off_the_bricks_:
            ; CODE XREF from str.The_ball_will_speed_up_if_you_are_unfortunate_enough_to @ +0x2b(x)
            0000:1b15    .string "A very potent icon - instead of bouncing off the bricks," ; len=57
            ;-- str.for_one_hit_the_ball_will_travel_straight_through_them.:
            0000:1b4e    .string "for one hit the ball will travel straight through them." ; len=56
            0000:1b86 ~   ff0a           dec word [bp + si]
            ;-- str._n_nR_n:
            ; DATA XREF from fcn.00004e13 @ 0x4e3b(r)
            0000:1b87    .string "\n" ; len=12
            0000:1b93     0a00           or al, byte [bx + si]
            0000:1b95     be000a         mov si, 0xa00
            0000:1b98     00ed           add ch, ch
            0000:1b9a     000a           add byte [bp + si], cl
            0000:1b9c     001c           add byte [si], bl
            0000:1b9e     01df           add di, bx
            0000:1ba0     df             invalid
            0000:1ba1     df             invalid
            ; CODE XREF from str.A_very_potent_icon___instead_of_bouncing_off_the_bricks_ @ +0x17(x)
            0000:1ba2     df             invalid
            0000:1ba3     df             invalid
            0000:1ba4     df             invalid
            0000:1ba5     df             invalid
            0000:1ba6 ~   df363232       fbstp tbyte [0x3232]          ; [0x3232:10]=-1 ; "ZY\xc3QRV\xb2"
            ;-- str.6222222222222222222222222222222222222222222222222222222222222D:
            ; CODE XREF from str.A_very_potent_icon___instead_of_bouncing_off_the_bricks_ @ +0x22(x)
            0000:1ba7    .string "6222222222222222222222222222222222222222222222222222222222222D" ; len=63
            0000:1be6     df             invalid
            0000:1be7     df             invalid
            0000:1be8     df             invalid
            0000:1be9     df             invalid
            0000:1bea     df             invalid
            ; CODE XREF from str.for_one_hit_the_ball_will_travel_straight_through_them. @ +0x2c(x)
            0000:1beb     df             invalid
            0000:1bec     df             invalid
            0000:1bed     df45df         fild word [di - 0x21]
            0000:1bf0     df             invalid
            0000:1bf1     df             invalid
            0000:1bf2     df             invalid
            0000:1bf3     df             invalid
            0000:1bf4     df             invalid
            0000:1bf5     df             invalid
            0000:1bf6     df             invalid
            0000:1bf7     df             invalid
            0000:1bf8     df             invalid
            0000:1bf9     df             invalid
            0000:1bfa     df             invalid
            0000:1bfb     df             invalid
            0000:1bfc     df             invalid
            0000:1bfd     df             invalid
            0000:1bfe     df             invalid
            0000:1bff     df             invalid
            0000:1c00     df             invalid
            0000:1c01     df             invalid
            0000:1c02     df             invalid
            0000:1c03     df             invalid
            0000:1c04     df             invalid
            0000:1c05     df             invalid
            0000:1c06     df             invalid
            0000:1c07     df             invalid
            0000:1c08     df             invalid
            0000:1c09     df             invalid
            0000:1c0a     df             invalid
            0000:1c0b     df             invalid
            0000:1c0c     df             invalid
            0000:1c0d     df             invalid
            0000:1c0e     df             invalid
            0000:1c0f     df             invalid
            0000:1c10     df             invalid
            0000:1c11     df             invalid
            0000:1c12     df             invalid
            0000:1c13     df             invalid
            0000:1c14     df             invalid
            0000:1c15     df             invalid
            0000:1c16     df             invalid
            0000:1c17     df             invalid
            0000:1c18     df             invalid
            0000:1c19     df             invalid
            0000:1c1a     df             invalid
            0000:1c1b     df             invalid
            0000:1c1c     df             invalid
            0000:1c1d     df             invalid
            0000:1c1e     df             invalid
            0000:1c1f     df             invalid
            0000:1c20     df             invalid
            0000:1c21     df             invalid
            0000:1c22     df             invalid
            0000:1c23     df             invalid
            0000:1c24     df             invalid
            0000:1c25     df             invalid
            0000:1c26     df             invalid
            0000:1c27     df             invalid
            0000:1c28     df             invalid
            0000:1c29     df             invalid
            0000:1c2a     df4500         fild word [di]
            0000:1c2d     df             invalid
            0000:1c2e     df             invalid
            0000:1c2f     df             invalid
            0000:1c30     df             invalid
            0000:1c31     df             invalid
            0000:1c32     df363246       fbstp tbyte [0x4632]          ; [0x4632:10]=-1
            0000:1c36     df             invalid
            0000:1c37     dfaf9e8d       fild qword [bx - 0x7262]
            0000:1c3b     9e             sahf
            0000:1c3c     91             xchg cx, ax
            0000:1c3d     90             nop
            0000:1c3e     96             xchg si, ax
            0000:1c3f     9b             wait
            0000:1c40 ~   df968cdf       fist word [bp - 0x2074]
            ; CALL XREF from str._r__r__r__rO_r_rc_rm_rw_r @ +0xd2(x)
/ 33: fcn.00001c43 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:1c43     df8c979e       fisttp word [si - 0x6169]
|           0000:1c47     8d9a889e       lea bx, [bp + si - 0x6178]
|           0000:1c4b     8d9ad1df       lea bx, [bp + si - 0x202f]
|           0000:1c4f     dfb699df       fbstp tbyte [bp - 0x2067]
|           0000:1c53     86908adf       xchg byte [bx + si - 0x2076], dl ; arg2
|           0000:1c57     9c             pushf
|           0000:1c58     90             nop
|           0000:1c59     91             xchg cx, ax                   ; arg3
|           0000:1c5a     8b96918a       mov dx, word [bp - 0x756f]
|           0000:1c5e     9adf8b90df     lcall 0xdf90:0x8bdf
\           0000:1c63     8f             invalid
            0000:1c64     93             xchg bx, ax
            0000:1c65     9e             sahf
            0000:1c66     86df           xchg bh, bl
            0000:1c68     af             scasw ax, word es:[di]
            0000:1c69     9e             sahf
            0000:1c6a     8d9e9190       lea bx, [bp - 0x6f6f]
            0000:1c6e     96             xchg si, ax
            0000:1c6f     9b             wait
            0000:1c70     df             invalid
            0000:1c71     df33           fbstp tbyte [bp + di]
            0000:1c73     324400         xor al, byte [si]
            0000:1c76     df             invalid
            0000:1c77     df             invalid
            0000:1c78     df             invalid
            0000:1c79     df             invalid
            0000:1c7a     df             invalid
            0000:1c7b     df45df         fild word [di - 0x21]
            0000:1c7e     45             inc bp
            0000:1c7f     df             invalid
            0000:1c80     df99908d       fistp word [bx + di - 0x7270]
            0000:1c84     df92908d       fist word [bp + si - 0x7270]
            0000:1c88     9adf8b979e     lcall 0x9e97:0x8bdf
            0000:1c8d     91             xchg cx, ax
            0000:1c8e     df968b8c       fist word [bp - 0x7375]
            0000:1c92     df8b8d96       fisttp word [bp + di - 0x6973]
            0000:1c96     9e             sahf
            0000:1c97     93             xchg bx, ax
            0000:1c98     df8f9a8d       fisttp word [bx - 0x7266]
            0000:1c9c     96             xchg si, ax
            0000:1c9d     90             nop
            0000:1c9e     9b             wait
            0000:1c9f     df9099df       fist word [bx + si - 0x2067]
            0000:1ca3     90             nop
            0000:1ca4     91             xchg cx, ax
            0000:1ca5     9adf929091     lcall 0x9190:0x92df
            0000:1caa     8b97d3df       mov dx, word [bx - 0x202d]
            0000:1cae     86908adf       xchg byte [bx + si - 0x2076], dl
            0000:1cb2     92             xchg dx, ax
            0000:1cb3     8a8c8bdf       mov cl, byte [si - 0x2075]
            0000:1cb7     df             invalid
            0000:1cb8     df             invalid
            0000:1cb9     df             invalid
            0000:1cba     df45df         fild word [di - 0x21]
            0000:1cbd     45             inc bp
            0000:1cbe     00df           add bh, bl
            0000:1cc0     df             invalid
            0000:1cc1     df             invalid
            0000:1cc2     df363246       fbstp tbyte [0x4632]          ; [0x4632:10]=-1
            0000:1cc6     df45df         fild word [di - 0x21]
            0000:1cc9     df8f9e86       fisttp word [bx - 0x7962]
            0000:1ccd     df9edf63       fistp word [bp + 0x63df]
            0000:1cd1     ce             into
            0000:1cd2     cf             iret
            0000:1cd3     df8d9a98       fisttp word [di - 0x6766]
            0000:1cd7     96             xchg si, ax
            0000:1cd8     8c8b8d9e       mov word [bp + di - 0x6173], cs
            0000:1cdc     8b969091       mov dx, word [bp - 0x6e70]
            0000:1ce0     df999a9a       fistp word [bx + di - 0x6566]
            0000:1ce4     d1df           rcr di, 1
            0000:1ce6     dfab9796       fild qword [bp + di - 0x6969]
            0000:1cea     8cdf           mov di, ds
            0000:1cec     9c             pushf
            0000:1ced     9e             sahf
            0000:1cee     91             xchg cx, ax
            0000:1cef     df9d9adf       fistp word [di - 0x2066]
            0000:1cf3     96             xchg si, ax
            0000:1cf4     91             xchg cx, ax
            0000:1cf5     df8b979a       fisttp word [bp + di - 0x6569]
            0000:1cf9     df99908d       fistp word [bx + di - 0x7270]
            0000:1cfd     92             xchg dx, ax
            0000:1cfe     df9099df       fist word [bx + si - 0x2067]
            0000:1d02     df             invalid
            0000:1d03     df45df         fild word [di - 0x21]
            0000:1d06     3332           xor si, word [bp + si]
            0000:1d08     44             inc sp
            0000:1d09     00df           add bh, bl
            0000:1d0b     df             invalid
            0000:1d0c     df             invalid
            0000:1d0d     df45df         fild word [di - 0x21]
            0000:1d10     45             inc bp
            0000:1d11     df45df         fild word [di - 0x21]
            0000:1d14     df9edf9c       fistp word [bp - 0x6321]
            0000:1d18     97             xchg di, ax
            0000:1d19     9a8e8a9adf     lcall 0xdf9a:0x8a8e
            0000:1d1e     90             nop
            0000:1d1f     8d             invalid
            0000:1d20     dfaf908c       fild qword [bx - 0x7370]
            0000:1d24     8b9e93df       mov bx, word [bp - 0x206d]
            0000:1d28     b08d           mov al, 0x8d                  ; 141
            0000:1d2a     9b             wait
            0000:1d2b     9a8ddf929e     lcall 0x9e92:0xdf8d
            0000:1d30     9b             wait
            0000:1d31     9adf8f9e86     lcall 0x869e:0x8fdf
            0000:1d36     9e             sahf
            0000:1d37     9d             popf
            0000:1d38     93             xchg bx, ax
            0000:1d39     9adf8b90df     lcall 0xdf90:0x8bdf
            0000:1d3e     bd9a91         mov bp, 0x919a
            0000:1d41     dfb1908d       fbstp tbyte [bx + di - 0x7270]
            0000:1d45     8b97c4df       mov dx, word [bx - 0x203c]
            0000:1d49     91             xchg cx, ax
            0000:1d4a     90             nop
            0000:1d4b     df             invalid
            0000:1d4c     df             invalid
            0000:1d4d     df             invalid
            0000:1d4e     df45df         fild word [di - 0x21]
            0000:1d51     45             inc bp
            0000:1d52     df4500         fild word [di]
            0000:1d55     df             invalid
            0000:1d56     df363246       fbstp tbyte [0x4632]          ; [0x4632:10]=-1
            0000:1d5a     df45df         fild word [di - 0x21]
            0000:1d5d     45             inc bp
            0000:1d5e     df             invalid
            0000:1d5f     df9c9e8c       fistp word [si - 0x7362]
            0000:1d63     97             xchg di, ax
            0000:1d64     d3df           rcr di, cl
            0000:1d66     8f             invalid
            0000:1d67     90             nop
            0000:1d68     8c8b9e98       mov word [bp + di - 0x6762], cs
            0000:1d6c     9adf8c8b9e     lcall 0x9e8b:0x8cdf
            0000:1d71     92             xchg dx, ax
            0000:1d72     8f             invalid
            0000:1d73     8cd3           mov bx, ss
            0000:1d75     df908ddf       fist word [bx + si - 0x2073]
            0000:1d79     9c             pushf
            0000:1d7a     8d9a9b96       lea bx, [bp + si - 0x6965]
            0000:1d7e     8bdf           mov bx, di
            0000:1d80     9c             pushf
            0000:1d81     9e             sahf
            0000:1d82     8d9b8cdf       lea bx, [bp + di - 0x2074]
            0000:1d86     8f             invalid
            0000:1d87     93             xchg bx, ax
            0000:1d88     9a9e8c9ad1     lcall 0xd19a:0x8c9e
            0000:1d8d     df             invalid
            0000:1d8e     dfab979a       fild qword [bp + di - 0x6569]
            0000:1d92     dfbd968b       fistp qword [di - 0x746a]
            0000:1d96     df             invalid
            0000:1d97     df             invalid
            0000:1d98     df             invalid
            0000:1d99     df45df         fild word [di - 0x21]
            0000:1d9c     45             inc bp
            0000:1d9d     df33           fbstp tbyte [bp + di]
            0000:1d9f     324400         xor al, byte [si]
            0000:1da2     df             invalid
            0000:1da3     df45df         fild word [di - 0x21]
            0000:1da6     45             inc bp
            0000:1da7     df45df         fild word [di - 0x21]
            0000:1daa     45             inc bp
            0000:1dab     df             invalid
            0000:1dac     dfbd8a9c       fistp qword [di - 0x6376]
            0000:1db0     94             xchg sp, ax
            0000:1db1     9a8bdfbd8d     lcall 0x8dbd:0xdf8b
            0000:1db6     90             nop
            0000:1db7     8b979a8d       mov dx, word [bx - 0x7266]
            0000:1dbb     8cdf           mov di, ds
            0000:1dbd     9c             pushf
            0000:1dbe     9e             sahf
            0000:1dbf     91             xchg cx, ax
            0000:1dc0     df9d9adf       fistp word [di - 0x2066]
            0000:1dc4     9c             pushf
            0000:1dc5     90             nop
            0000:1dc6     91             xchg cx, ax
            0000:1dc7     8b9e9c8b       mov bx, word [bp - 0x7464]
            0000:1dcb     9a9bdf9e8b     lcall 0x8b9e:0xdf9b
            0000:1dd0     df             invalid
            0000:1dd1     df             invalid
            0000:1dd2     df             invalid
            0000:1dd3     df             invalid
            0000:1dd4     df             invalid
            0000:1dd5     df             invalid
            0000:1dd6     df             invalid
            0000:1dd7     df             invalid
            0000:1dd8     df             invalid
            0000:1dd9     df             invalid
            0000:1dda     df             invalid
            0000:1ddb     df             invalid
            0000:1ddc     df             invalid
            0000:1ddd     df             invalid
            0000:1dde     df             invalid
            0000:1ddf     df             invalid
            0000:1de0     df             invalid
            0000:1de1     df             invalid
            0000:1de2     df             invalid
            0000:1de3     df             invalid
            0000:1de4     df             invalid
            0000:1de5     df             invalid
            0000:1de6     df45df         fild word [di - 0x21]
            0000:1de9     45             inc bp
            0000:1dea     df45df         fild word [di - 0x21]
            0000:1ded     45             inc bp
            0000:1dee     00363246       add byte [0x4632], dh         ; [0x4632:1]=160
            0000:1df2     df45df         fild word [di - 0x21]
            0000:1df5     45             inc bp
            0000:1df6     df45df         fild word [di - 0x21]
            0000:1df9     df             invalid
            0000:1dfa     df             invalid
            0000:1dfb     df             invalid
            0000:1dfc     df             invalid
            0000:1dfd     df             invalid
            0000:1dfe     df             invalid
            0000:1dff     df             invalid
            0000:1e00     df             invalid
            0000:1e01     df             invalid
            0000:1e02     df             invalid
            0000:1e03     df             invalid
            0000:1e04     df             invalid
            0000:1e05     df             invalid
            0000:1e06     df             invalid
            0000:1e07     df             invalid
            0000:1e08     df             invalid
            0000:1e09     df             invalid
            0000:1e0a     df             invalid
            0000:1e0b     df             invalid
            0000:1e0c     df             invalid
            0000:1e0d     df             invalid
            0000:1e0e     df             invalid
            ; DATA XREF from str._r__r__r__rO_r_rc_rm_rw_r @ +0xbd(r)
            0000:1e0f     df             invalid
            0000:1e10     df             invalid
            0000:1e11     df             invalid
            0000:1e12     df             invalid
            0000:1e13     df             invalid
            0000:1e14     df             invalid
            0000:1e15     df             invalid
            0000:1e16     df             invalid
            0000:1e17     df             invalid
            0000:1e18     df             invalid
            0000:1e19     df             invalid
            0000:1e1a     df             invalid
            0000:1e1b     df             invalid
            0000:1e1c     df             invalid
            0000:1e1d     df             invalid
            0000:1e1e     df             invalid
            0000:1e1f     df             invalid
            0000:1e20     df             invalid
            0000:1e21     df             invalid
            0000:1e22     df             invalid
            0000:1e23     df             invalid
            0000:1e24     df             invalid
            0000:1e25     df             invalid
            0000:1e26     df             invalid
            0000:1e27     df             invalid
            0000:1e28     df             invalid
            0000:1e29     df             invalid
            0000:1e2a     df             invalid
            0000:1e2b     df             invalid
            0000:1e2c     df             invalid
            0000:1e2d     df             invalid
            0000:1e2e     df             invalid
            0000:1e2f     df             invalid
            0000:1e30     df             invalid
            0000:1e31     df             invalid
            0000:1e32     df             invalid
            0000:1e33     df45df         fild word [di - 0x21]
            0000:1e36     45             inc bp
            0000:1e37     df45df         fild word [di - 0x21]
            0000:1e3a     3332           xor si, word [bp + si]
            0000:1e3c     44             inc sp
            0000:1e3d     0045df         add byte [di - 0x21], al
            0000:1e40     45             inc bp
            0000:1e41     df45df         fild word [di - 0x21]
            0000:1e44     45             inc bp
            0000:1e45     df45df         fild word [di - 0x21]
            0000:1e48     df             invalid
            0000:1e49     df             invalid
            0000:1e4a     df             invalid
            0000:1e4b     df             invalid
            0000:1e4c     df             invalid
            0000:1e4d     df             invalid
            0000:1e4e     df             invalid
            0000:1e4f     df             invalid
            0000:1e50     df             invalid
            0000:1e51     df             invalid
            0000:1e52     df             invalid
            0000:1e53     dfab979a       fild qword [bp + di - 0x6569]
            0000:1e57     dfbd968b       fistp qword [di - 0x746a]
            0000:1e5b     dfbd8a9c       fistp qword [di - 0x6376]
            0000:1e5f     94             xchg sp, ax
            0000:1e60     9a8bdfbd8d     lcall 0x8dbd:0xdf8b
            0000:1e65     90             nop
            0000:1e66     8b979a8d       mov dx, word [bx - 0x7266]
            0000:1e6a     8cd3           mov bx, ss
            0000:1e6c     df             invalid
            0000:1e6d     df             invalid
            0000:1e6e     df             invalid
            0000:1e6f     df             invalid
            0000:1e70     df             invalid
            0000:1e71     df             invalid
            0000:1e72     df             invalid
            0000:1e73     df             invalid
            0000:1e74     df             invalid
            0000:1e75     df             invalid
            0000:1e76     df             invalid
            0000:1e77     df             invalid
            0000:1e78     df             invalid
            0000:1e79     df             invalid
            0000:1e7a     df             invalid
            0000:1e7b     df             invalid
            0000:1e7c     df             invalid
            0000:1e7d     df             invalid
            0000:1e7e     df             invalid
            0000:1e7f     df             invalid
            0000:1e80     df             invalid
            0000:1e81     df             invalid
            0000:1e82     df45df         fild word [di - 0x21]
            0000:1e85     45             inc bp
            0000:1e86     df45df         fild word [di - 0x21]
            0000:1e89     45             inc bp
            0000:1e8a     df4500         fild word [di]
            0000:1e8d     45             inc bp
            0000:1e8e     df45df         fild word [di - 0x21]
            0000:1e91     45             inc bp
            0000:1e92     df45df         fild word [di - 0x21]
            0000:1e95     45             inc bp
            0000:1e96     df             invalid
            0000:1e97     df             invalid
            0000:1e98     df             invalid
            0000:1e99     df             invalid
            0000:1e9a     df             invalid
            0000:1e9b     df             invalid
            0000:1e9c     df             invalid
            0000:1e9d     df             invalid
            0000:1e9e     df             invalid
            0000:1e9f     df             invalid
            0000:1ea0     df             invalid
            0000:1ea1     df             invalid
            0000:1ea2     df             invalid
            0000:1ea3     ddbe929e       fnstsw word [bp - 0x616e]
            0000:1ea7     8d9090dd       lea dx, [bx + si - 0x2270]
            0000:1eab     d3df           rcr di, cl
            0000:1ead     a89a           test al, 0x9a                 ; 154
            0000:1eaf     96             xchg si, ax
            0000:1eb0     8d             invalid
            0000:1eb1     dfb39e91       fbstp tbyte [bp + di - 0x6e62]
            0000:1eb5     9ad3dfb79e     lcall 0x9eb7:0xdfd3
            0000:1eba     91             xchg cx, ax
            0000:1ebb     8890909b       mov byte [bx + si - 0x6470], dl
            0000:1ebf     d3df           rcr di, cl
            0000:1ec1     df             invalid
            0000:1ec2     df             invalid
            0000:1ec3     df             invalid
            0000:1ec4     df             invalid
            0000:1ec5     df             invalid
            0000:1ec6     df             invalid
            0000:1ec7     df             invalid
            0000:1ec8     df             invalid
            0000:1ec9     df             invalid
            0000:1eca     df             invalid
            0000:1ecb     df             invalid
            0000:1ecc     df             invalid
            0000:1ecd     df             invalid
            0000:1ece     df             invalid
            0000:1ecf     df             invalid
            0000:1ed0     df             invalid
            0000:1ed1     df45df         fild word [di - 0x21]
            0000:1ed4     45             inc bp
            0000:1ed5     df45df         fild word [di - 0x21]
            0000:1ed8     45             inc bp
            0000:1ed9     df4500         fild word [di]
            0000:1edc     45             inc bp
            0000:1edd     df45df         fild word [di - 0x21]
            0000:1ee0     45             inc bp
            0000:1ee1     df45df         fild word [di - 0x21]
            0000:1ee4     45             inc bp
            0000:1ee5     df             invalid
            0000:1ee6     df             invalid
            0000:1ee7     df             invalid
            0000:1ee8     df             invalid
            0000:1ee9     df             invalid
            0000:1eea     df             invalid
            0000:1eeb     df             invalid
            0000:1eec     df             invalid
            0000:1eed     df             invalid
            0000:1eee     df             invalid
            0000:1eef     df             invalid
            0000:1ef0     df             invalid
            0000:1ef1     dfac978d       fild qword [si - 0x7269]
            0000:1ef5     9a888c9d8a     lcall 0x8a9d:0x8c88
            0000:1efa     8d86d3df       lea ax, [bp - 0x202d]
            0000:1efe     ac             lodsb al, byte [si]
            0000:1eff     97             xchg di, ax
            0000:1f00     8d908f8c       lea dx, [bx + si - 0x7371]
            0000:1f04     97             xchg di, ax
            0000:1f05     96             xchg si, ax
            0000:1f06     8d9ad1df       lea bx, [bp + si - 0x202f]
            0000:1f0a     dfaca6ca       fild qword [si - 0x355a]
            0000:1f0e     dfc7           ffreep st(7)
            0000:1f10     b5a6           mov ch, 0xa6                  ; 166
            0000:1f12     d1df           rcr di, 1
            0000:1f14     df             invalid
            0000:1f15     df             invalid
            0000:1f16     df             invalid
            0000:1f17     df             invalid
            0000:1f18     df             invalid
            0000:1f19     df             invalid
            0000:1f1a     df             invalid
            0000:1f1b     df             invalid
            0000:1f1c     df             invalid
            0000:1f1d     df             invalid
            0000:1f1e     df             invalid
            0000:1f1f     df             invalid
            0000:1f20     df45df         fild word [di - 0x21]
            0000:1f23     45             inc bp
            0000:1f24     df45df         fild word [di - 0x21]
            0000:1f27     45             inc bp
            0000:1f28     df4500         fild word [di]
            0000:1f2b     37             aaa
            ; DATA XREF from fcn.000033ea @ 0x33fc(r)
            0000:1f2c     3246df         xor al, byte [bp - 0x21]
            0000:1f2f     45             inc bp
            0000:1f30     df45df         fild word [di - 0x21]
            0000:1f33     45             inc bp
            0000:1f34     df             invalid
            0000:1f35     df             invalid
            0000:1f36     df             invalid
            0000:1f37     df             invalid
            0000:1f38     df             invalid
            0000:1f39     df             invalid
            0000:1f3a     df             invalid
            0000:1f3b     df             invalid
            0000:1f3c     df             invalid
            0000:1f3d     df             invalid
            0000:1f3e     df             invalid
            0000:1f3f     df             invalid
            0000:1f40     df             invalid
            0000:1f41     df             invalid
            0000:1f42     df             invalid
            0000:1f43     df             invalid
            0000:1f44     df             invalid
            0000:1f45     df             invalid
            0000:1f46     df             invalid
            0000:1f47     df             invalid
            0000:1f48     df             invalid
            0000:1f49     df             invalid
            0000:1f4a     df             invalid
            0000:1f4b     df             invalid
            0000:1f4c     df             invalid
            0000:1f4d     df             invalid
            0000:1f4e     df             invalid
            0000:1f4f     df             invalid
            0000:1f50     df             invalid
            0000:1f51     df             invalid
            0000:1f52     df             invalid
            0000:1f53     df             invalid
            0000:1f54     df             invalid
            0000:1f55     df             invalid
            0000:1f56     df             invalid
            0000:1f57     df             invalid
            0000:1f58     df             invalid
            0000:1f59     df             invalid
            0000:1f5a     df             invalid
            0000:1f5b     df             invalid
            0000:1f5c     df             invalid
            0000:1f5d     df             invalid
            0000:1f5e     df             invalid
            0000:1f5f     df             invalid
            0000:1f60     df             invalid
            0000:1f61     df             invalid
            0000:1f62     df             invalid
            0000:1f63     df             invalid
            0000:1f64     df             invalid
            0000:1f65     df             invalid
            0000:1f66     df             invalid
            0000:1f67     df             invalid
            0000:1f68     df             invalid
            0000:1f69     df             invalid
            0000:1f6a     df             invalid
            0000:1f6b     df             invalid
            0000:1f6c     df             invalid
            0000:1f6d     df             invalid
            0000:1f6e     df             invalid
            0000:1f6f     df45df         fild word [di - 0x21]
            0000:1f72     45             inc bp
            0000:1f73     df45df         fild word [di - 0x21]
            0000:1f76     3332           xor si, word [bp + si]
            0000:1f78     43             inc bx
            0000:1f79     00df           add bh, bl
            0000:1f7b     df45df         fild word [di - 0x21]
            0000:1f7e     45             inc bp
            0000:1f7f     df45df         fild word [di - 0x21]
            0000:1f82     45             inc bp
            0000:1f83     df             invalid
            0000:1f84     dfaf939a       fild qword [bx - 0x656d]
            0000:1f88     9e             sahf
            0000:1f89     8c9adf92       mov word [bp + si - 0x6d21], ds
            0000:1f8d     9e             sahf
            0000:1f8e     8d94df8b       lea dx, [si - 0x7421]
            0000:1f92     97             xchg di, ax
            0000:1f93     9adf9a9189     lcall 0x8991:0x9adf
            0000:1f98     9a93908f9a     lcall 0x9a8f:0x9093
            0000:1f9d     df             invalid
            0000:1f9e     dd             invalid
            0000:1f9f     af             scasw ax, word es:[di]
            0000:1fa0     9e             sahf
            0000:1fa1     8d9e9190       lea bx, [bp - 0x6f6f]
            0000:1fa5     96             xchg si, ax
            0000:1fa6     9b             wait
            0000:1fa7     ddd1           fst st(1)
            0000:1fa9     df             invalid
            0000:1faa     df             invalid
            0000:1fab     df             invalid
            0000:1fac     df             invalid
            0000:1fad     df             invalid
            0000:1fae     df             invalid
            0000:1faf     df             invalid
            0000:1fb0     df             invalid
            0000:1fb1     df             invalid
            0000:1fb2     df             invalid
            0000:1fb3     df             invalid
            0000:1fb4     df             invalid
            0000:1fb5     df             invalid
            0000:1fb6     df             invalid
            0000:1fb7     df             invalid
            0000:1fb8     df             invalid
            0000:1fb9     df             invalid
            0000:1fba     df             invalid
            0000:1fbb     df             invalid
            0000:1fbc     df             invalid
            0000:1fbd     df             invalid
            0000:1fbe     df45df         fild word [di - 0x21]
            0000:1fc1     45             inc bp
            0000:1fc2     df45df         fild word [di - 0x21]
            0000:1fc5     45             inc bp
            0000:1fc6     00df           add bh, bl
            0000:1fc8     df37           fbstp tbyte [bx]
            0000:1fca     3246df         xor al, byte [bp - 0x21]
            0000:1fcd     45             inc bp
            0000:1fce     df45df         fild word [di - 0x21]
            0000:1fd1     df             invalid
            0000:1fd2     df             invalid
            0000:1fd3     df             invalid
            0000:1fd4     df             invalid
            0000:1fd5     df             invalid
            0000:1fd6     df             invalid
            0000:1fd7     df             invalid
            0000:1fd8     df             invalid
            0000:1fd9     df             invalid
            0000:1fda     df             invalid
            0000:1fdb     df             invalid
            0000:1fdc     df             invalid
            0000:1fdd     df             invalid
            0000:1fde     df             invalid
            0000:1fdf     df             invalid
            0000:1fe0     df             invalid
            0000:1fe1     df             invalid
            0000:1fe2     df             invalid
            0000:1fe3     df             invalid
            0000:1fe4     df             invalid
            0000:1fe5     df             invalid
            0000:1fe6     df             invalid
            0000:1fe7     df             invalid
            0000:1fe8     df             invalid
            0000:1fe9     df             invalid
            0000:1fea     df             invalid
            0000:1feb     df             invalid
            0000:1fec     df             invalid
            0000:1fed     df             invalid
            0000:1fee     df             invalid
            0000:1fef     df             invalid
            0000:1ff0     df             invalid
            0000:1ff1     df             invalid
            0000:1ff2     df             invalid
            0000:1ff3     df             invalid
            0000:1ff4     df             invalid
            0000:1ff5     df             invalid
            0000:1ff6     df             invalid
            0000:1ff7     df             invalid
            0000:1ff8     df             invalid
            0000:1ff9     df             invalid
            0000:1ffa     df             invalid
            0000:1ffb     df             invalid
            0000:1ffc     df             invalid
            0000:1ffd     df             invalid
            0000:1ffe     df             invalid
            0000:1fff     df             invalid
            0000:2000     df             invalid
            0000:2001     df             invalid
            0000:2002     df             invalid
            0000:2003     df             invalid
            0000:2004     df             invalid
            0000:2005     df             invalid
            0000:2006     df             invalid
            0000:2007     df             invalid
            0000:2008     df             invalid
            0000:2009     df             invalid
            ; DATA XREF from str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE @ +0x63(r)
            0000:200a     df             invalid
            0000:200b     df45df         fild word [di - 0x21]
            0000:200e     45             inc bp
            0000:200f     df33           fbstp tbyte [bp + di]
            0000:2011     324300         xor al, byte [bp + di]
            0000:2014     df             invalid
            0000:2015     df             invalid
            0000:2016     df             invalid
            0000:2017     df45df         fild word [di - 0x21]
            0000:201a     45             inc bp
            0000:201b     df45df         fild word [di - 0x21]
            0000:201e     dfa8979a       fild qword [bx + si - 0x6569]
            0000:2022     91             xchg cx, ax
            0000:2023     df86908a       fild word [bp - 0x7570]
            0000:2027     df8d9a98       fisttp word [di - 0x6766]
            0000:202b     96             xchg si, ax
            ; DATA XREF from str.second__the_brick_flashes_white_and_disappears__third__your @ +0x32(r)
            ; DATA XREF from str.brick__and_fourth__a_brilliantly_animated_icon_might_float @ +0x2(r)
            0000:202c     8c8b9a8d       mov word [bp + di - 0x7266], cs
            0000:2030     df8b9796       fisttp word [bp + di - 0x6969]
            0000:2034     8cdf           mov di, ds
            0000:2036     98             cwde
            0000:2037     9e             sahf
            0000:2038     92             xchg dx, ax
            0000:2039     9ad3df9190     lcall 0x9091:0xdfd3
            0000:203e     8bdf           mov bx, di
            0000:2040     90             nop
            0000:2041     91             xchg cx, ax
            0000:2042     93             xchg bx, ax
            0000:2043     86df           xchg bh, bl
            0000:2045     88969393       mov byte [bp - 0x6c6d], dl
            0000:2049     df86908a       fild word [bp - 0x7570]
            0000:204d     df9d9adf       fistp word [di - 0x2066]
            0000:2051     99             cdq
            0000:2052     8d9a9adf       lea bx, [bp + si - 0x2066]
            0000:2056     df             invalid
            0000:2057     df             invalid
            0000:2058     df45df         fild word [di - 0x21]
            0000:205b     45             inc bp
            0000:205c     df4500         fild word [di]
            0000:205f     df             invalid
            0000:2060     df             invalid
            0000:2061     df             invalid
            0000:2062     df37           fbstp tbyte [bx]
            0000:2064     3246df         xor al, byte [bp - 0x21]
            0000:2067     45             inc bp
            0000:2068     df             invalid
            0000:2069     df998d90       fistp word [bx + di - 0x6f73]
            0000:206d     92             xchg dx, ax
            ; DATA XREF from str.Press_a_key_for_icon_descriptions @ +0x10(r)
            ; DATA XREF from str.This_handy_icon_increases_the_size_of_your_bat_by_a @ +0xb(r)
            ; DATA XREF from str.A_very_potent_icon___instead_of_bouncing_off_the_bricks_ @ +0xe(r)
            0000:206e     df988a96       fistp word [bx + si - 0x6976]
            0000:2072     93             xchg bx, ax
            ; XREFS: DATA 0x0000027c  DATA 0x000002a4  DATA 0x00000dc0  DATA 0x00000e7f  DATA 0x00000fed  DATA 0x0000111d  
            ; XREFS: DATA 0x00001205  DATA 0x000014b2  DATA 0x00001583  DATA 0x000015ca  DATA 0x000015e8  DATA 0x00001695  
            ; XREFS: DATA 0x0000184f  DATA 0x000018a7  
            0000:2073     8bd3           mov dx, bx
            0000:2075     df86908a       fild word [bp - 0x7570]
            ; DATA XREF from str.___all_thirty_levels.__Register_now_for @ +0x9(r)
            ; DATA XREF from str.___another_thirty_plus_a_level_designer @ +0xd(r)
            ; DATA XREF from str.If_the_current_level_is_too_tricky_for_you__catch_this @ +0x1e(r)
            0000:2079     df889693       fisttp word [bx + si - 0x6c6a]
            0000:207d     93             xchg bx, ax
            0000:207e     df8d9a9c       fisttp word [di - 0x6366]
            0000:2082     9a96899adf     lcall 0xdf9a:0x8996
            0000:2087     9e             sahf
            0000:2088     df8d9a98       fisttp word [di - 0x6766]
            0000:208c     96             xchg si, ax
            0000:208d     8c8b9a8d       mov word [bp + di - 0x7266], cs
            0000:2091     9a9bdf9c90     lcall 0x909c:0xdf9b
            0000:2096     8f86df90       pop word [bp - 0x6f21]
            0000:209a     99             cdq
            0000:209b     df8b979a       fisttp word [bp + di - 0x6569]
            0000:209f     df             invalid
            0000:20a0     df             invalid
            0000:20a1     df             invalid
            0000:20a2     df             invalid
            0000:20a3     df45df         fild word [di - 0x21]
            0000:20a6     3332           xor si, word [bp + si]
            0000:20a8     43             inc bx
            0000:20a9     00df           add bh, bl
            0000:20ab     df             invalid
            0000:20ac     df             invalid
            0000:20ad     df             invalid
            0000:20ae     df             invalid
            0000:20af     df45df         fild word [di - 0x21]
            0000:20b2     45             inc bp
            0000:20b3     df             invalid
            0000:20b4     df989e92       fistp word [bx + si - 0x6d62]
            0000:20b8     9ad3df9e91     lcall 0x919e:0xdfd3
            0000:20bd     90             nop
            0000:20be     8b979a8d       mov dx, word [bx - 0x7266]
            0000:20c2     df8b9796       fisttp word [bp + di - 0x6969]
            0000:20c6     8d8b86df       lea cx, [bp + di - 0x207a]
            0000:20ca     93             xchg bx, ax
            0000:20cb     9a899a938c     lcall 0x8c93:0x9a89
            0000:20d0     df9099df       fist word [bx + si - 0x2067]
            0000:20d4     9d             popf
            0000:20d5     9e             sahf
            0000:20d6     93             xchg bx, ax
            0000:20d7     93             xchg bx, ax
            0000:20d8     d29d908a       rcr byte [di - 0x7570], cl
            0000:20dc     91             xchg cx, ax
            0000:20dd     9c             pushf
            0000:20de     96             xchg si, ax
            0000:20df     91             xchg cx, ax
            0000:20e0     98             cwde
            0000:20e1     df998a91       fistp word [bx + di - 0x6e76]
            0000:20e5     d3df           rcr di, cl
            0000:20e7     9e             sahf
            0000:20e8     df             invalid
            0000:20e9     df             invalid
            0000:20ea     df             invalid
            0000:20eb     df             invalid
            0000:20ec     df             invalid
            0000:20ed     df             invalid
            0000:20ee     df45df         fild word [di - 0x21]
            0000:20f1     45             inc bp
            0000:20f2     00df           add bh, bl
            0000:20f4     df             invalid
            0000:20f5     df             invalid
            0000:20f6     df             invalid
            0000:20f7     df             invalid
            0000:20f8     df37           fbstp tbyte [bx]
            0000:20fa     3246df         xor al, byte [bp - 0x21]
            0000:20fd     df939a89       fist word [bp + di - 0x7666]
            0000:2101     9a93df9b9a     lcall 0x9a9b:0xdf93
            0000:2106     8c969891       mov word [bp - 0x6e68], ss
            0000:210a     9a8dd3df9e     lcall 0x9edf:0xd38d
            0000:210f     91             xchg cx, ax
            0000:2110     9b             wait
            0000:2111     df9c8a8b       fistp word [si - 0x7476]
            0000:2115     d28f8d96       ror byte [bx - 0x6973], cl
            0000:2119     9c             pushf
            0000:211a     9adf8a8f9b     lcall 0x9b8f:0x8adf
            0000:211f     9e             sahf
            0000:2120     8b9a8cdf       mov bx, word [bp + si - 0x2074]
            0000:2124     88979a91       mov byte [bx - 0x6e66], dl
            0000:2128     df9e899e       fistp word [bp - 0x6177]
            0000:212c     96             xchg si, ax
            0000:212d     93             xchg bx, ax
            0000:212e     9e             sahf
            0000:212f     9d             popf
            0000:2130     93             xchg bx, ax
            0000:2131     9ad1dfdfdf     lcall 0xdfdf:0xdfd1
            0000:2136     df             invalid
            0000:2137     df33           fbstp tbyte [bp + di]
            0000:2139     324300         xor al, byte [bp + di]
            0000:213c     df             invalid
            0000:213d     df             invalid
            0000:213e     df             invalid
            0000:213f     df             invalid
            0000:2140     df             invalid
            0000:2141     df             invalid
            0000:2142     df             invalid
            0000:2143     df45df         fild word [di - 0x21]
            0000:2146     df             invalid
            0000:2147     df             invalid
            0000:2148     df             invalid
            0000:2149     df             invalid
            0000:214a     df             invalid
            0000:214b     df             invalid
            0000:214c     df             invalid
            0000:214d     df             invalid
            0000:214e     df             invalid
            0000:214f     df             invalid
            0000:2150     df             invalid
            0000:2151     df             invalid
            0000:2152     df             invalid
            0000:2153     df             invalid
            0000:2154     df             invalid
            0000:2155     df             invalid
            0000:2156     df             invalid
            0000:2157     df             invalid
            0000:2158     df             invalid
            0000:2159     df             invalid
            0000:215a     df             invalid
            0000:215b     df             invalid
            0000:215c     df             invalid
            0000:215d     df             invalid
            0000:215e     df             invalid
            0000:215f     df             invalid
            0000:2160     df             invalid
            0000:2161     df             invalid
            0000:2162     df             invalid
            0000:2163     df             invalid
            0000:2164     df             invalid
            0000:2165     df             invalid
            0000:2166     df             invalid
            0000:2167     df             invalid
            0000:2168     df             invalid
            0000:2169     df             invalid
            0000:216a     df             invalid
            0000:216b     df             invalid
            0000:216c     df             invalid
            0000:216d     df             invalid
            0000:216e     df             invalid
            0000:216f     df             invalid
            0000:2170     df             invalid
            0000:2171     df             invalid
            0000:2172     df             invalid
            0000:2173     df             invalid
            0000:2174     df             invalid
            0000:2175     df             invalid
            0000:2176     df             invalid
            0000:2177     df             invalid
            0000:2178     df             invalid
            0000:2179     df             invalid
            0000:217a     df             invalid
            0000:217b     df             invalid
            0000:217c     df             invalid
            0000:217d     df             invalid
            0000:217e     df             invalid
            0000:217f     df             invalid
            0000:2180     df4500         fild word [di]
            0000:2183     df             invalid
            0000:2184     df             invalid
            0000:2185     df             invalid
            0000:2186     df             invalid
            0000:2187     df             invalid
            0000:2188     df             invalid
            0000:2189     df             invalid
            0000:218a ~   df37           fbstp tbyte [bx]
            ;-- str.7222222222222222222222222222222222222222222222222222222222222C:
            0000:218b    .string "7222222222222222222222222222222222222222222222222222222222222C" ; len=63
            0000:21ca     0000           add byte [bx + si], al
            0000:21cc     af             scasw ax, word es:[di]
            0000:21cd     8d9a8c8c       lea bx, [bp + si - 0x7374]
            0000:21d1     df9edf94       fistp word [bp - 0x6b21]
            0000:21d5     9a86d100ff     lcall 0xff00:0xd186
            0000:21da     3100           xor word [bx + si], ax
            0000:21dc ~   e27e           loop 0x225c                   ; fcn.00002255+0x7
            ;-- str.__W:
            0000:21dd    .string "~;'W\xbf" ; len=5
|           0000:21e2     0e             push cs
|           0000:21e3     c3             ret
|           ; CODE XREF from fcn.000021e0 @ 0x21f2(x)
|           0000:21e4     f74504ffff     test word [di + 4], 0xffff
|           0000:21e9     740b           je 0x21f6
|           0000:21eb     83c710         add di, 0x10                  ; 16
|           0000:21ee     81ff4ec3       cmp di, 0xc34e
|           0000:21f2     72f0           jb 0x21e4
|           0000:21f4     eb12           jmp 0x2208
|           ; CODE XREF from fcn.000021e0 @ 0x21e9(x)
|           0000:21f6     8905           mov word [di], ax             ; arg1
|           0000:21f8     c745024001     mov word [di + 2], 0x140      ; [0x140:2]=0x656c ; "le :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:21fd     c745040100     mov word [di + 4], 1
|           0000:2202     bfb70c         mov di, 0xcb7
|           0000:2205     e8d730         call fcn.000052df
|           ; CODE XREF from fcn.000021e0 @ 0x21f4(x)
|           0000:2208     5f             pop di
\           0000:2209     c3             ret
            ; CALL XREF from str.O_O @ +0xc8(x)
/ 24: fcn.0000220a (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:220a     50             push ax                       ; arg1
|           0000:220b     52             push dx                       ; arg2
|           0000:220c     a147d2         mov ax, word [0xd247]         ; [0xd247:2]=0xffff
|           0000:220f     8a1649d2       mov dl, byte [0xd249]
|           0000:2213     32f6           xor dh, dh
|           0000:2215     d1e2           shl dx, 1
|           0000:2217     d1e2           shl dx, 1
|           0000:2219     4a             dec dx
|           ; CODE XREF from str.__W @ +0x0(x)
|           0000:221a     01d0           add ax, dx
|           0000:221c     e8c1ff         call fcn.000021e0
|           0000:221f     5a             pop dx
|           0000:2220     58             pop ax
\           0000:2221     c3             ret
            ;-- str.PSQRV2:
            ; CALL XREF from fcn.00002298 @ 0x22aa(x)
/ 51: fcn.00002222 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2222    .string "PSQRV2\xf6" ; len=7                  ; arg1
|           0000:2229     b104           mov cl, 4
|           0000:222b     d3e2           shl dx, cl
|           0000:222d     be0ec3         mov si, 0xc30e
|           0000:2230     03f2           add si, dx
|           0000:2232     8b4402         mov ax, word [si + 2]
|           0000:2235     2d0300         sub ax, 3
|           0000:2238     894402         mov word [si + 2], ax
|           0000:223b     3d0800         cmp ax, 8                     ; 8
|           0000:223e     760a           jbe 0x224a
|           0000:2240     8b04           mov ax, word [si]
|           0000:2242     8b5c02         mov bx, word [si + 2]
|           0000:2245     e80d00         call fcn.00002255
|           0000:2248     7305           jae 0x224f
|           ; CODE XREF from fcn.00002222 @ 0x223e(x)
|           0000:224a     c744040000     mov word [si + 4], 0
|           ; CODE XREF from fcn.00002222 @ 0x2248(x)
|           0000:224f    .string "^ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00002222 @ 0x2245(x)
/ 67: fcn.00002255 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, bx, cx)
|           0000:2255    .string "PSQW\x89" ; len=5                    ; arg1
|           0000:225a     c18bc3b30c     ror word [bp + di - 0x4c3d], 0xc
|           0000:225f     f6f3           div bl
|           0000:2261     32e4           xor ah, ah
|           0000:2263     48             dec ax
|           0000:2264     50             push ax
|           0000:2265     89c8           mov ax, cx
|           0000:2267     2d0f00         sub ax, 0xf                   ; 15
|           0000:226a     d1e8           shr ax, 1
|           0000:226c     d1e8           shr ax, 1
|           0000:226e     d1e8           shr ax, 1
|           0000:2270     d1e8           shr ax, 1
|           0000:2272     d1e8           shr ax, 1
|           0000:2274     5b             pop bx
|           0000:2275     3d0d00         cmp ax, 0xd                   ; 13
|           0000:2278     7718           ja 0x2292
|           0000:227a     83fb12         cmp bx, 0x12                  ; 18
|           0000:227d     7713           ja 0x2292
|           0000:227f     e87807         call fcn.000029fa
|           0000:2282     84c9           test cl, cl
|           0000:2284     740c           je 0x2292
|           0000:2286     e8ea07         call fcn.00002a73
|           0000:2289     bf9e0c         mov di, 0xc9e
|           0000:228c     e85030         call fcn.000052df
|           0000:228f     f9             stc
|           0000:2290     eb01           jmp 0x2293
|           ; CODE XREFS from fcn.00002255 @ 0x2278(x), 0x227d(x), 0x2284(x)
|           0000:2292     f8             clc
|           ; CODE XREF from fcn.00002255 @ 0x2290(x)
|           0000:2293    .string "_Y[X\xc3" ; len=5
            ; CALL XREF from fcn.00003658 @ 0x368b(x)
/ 32: fcn.00002298 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2298     51             push cx                       ; arg4
|           0000:2299     52             push dx                       ; arg2
|           0000:229a     56             push si
|           0000:229b     b200           mov dl, 0
|           0000:229d     b90400         mov cx, 4
|           0000:22a0     be0ec3         mov si, 0xc30e
|           ; CODE XREF from fcn.00002298 @ 0x22b2(x)
|           0000:22a3     f744040100     test word [si + 4], 1
|           0000:22a8     7403           je 0x22ad
|           0000:22aa     e875ff         call fcn.00002222
|           ; CODE XREF from fcn.00002298 @ 0x22a8(x)
|           0000:22ad     fec2           inc dl
|           0000:22af     83c610         add si, 0x10                  ; 16
|           0000:22b2     e2ef           loop 0x22a3
|           0000:22b4     5e             pop si
|           0000:22b5     5a             pop dx
|           0000:22b6     59             pop cx
\           0000:22b7     c3             ret
            0000:22b8     3100           xor word [bx + si], ax
            0000:22ba ~   e27e           loop 0x233a                   ; fcn.000022fe+0x3c
            ;-- str.__PVW:
            0000:22bb    .string "~;'PVW\xbf" ; len=7
|           0000:22c2     cdc2           int 0xc2
|           ; CODE XREF from fcn.000022be @ 0x22d1(x)
|           0000:22c4     f64508ff       test byte [di + 8], 0xff
|           0000:22c8     740b           je 0x22d5
|           0000:22ca     83c709         add di, 9
|           0000:22cd     81fffac2       cmp di, 0xc2fa
|           0000:22d1     72f1           jb 0x22c4
|           0000:22d3     eb25           jmp 0x22fa
|           ; CODE XREF from fcn.000022be @ 0x22c8(x)
|           0000:22d5     8905           mov word [di], ax             ; arg1
|           0000:22d7     895d02         mov word [di + 2], bx         ; arg3
|           0000:22da     885504         mov byte [di + 4], dl         ; arg2
|           0000:22dd     be310c         mov si, 0xc31                 ; '1\f'
|           0000:22e0     8ac2           mov al, dl                    ; arg2
|           0000:22e2     32e4           xor ah, ah
|           0000:22e4     d1e0           shl ax, 1
|           0000:22e6     01c6           add si, ax
|           0000:22e8     8a04           mov al, byte [si]
|           0000:22ea     8a6401         mov ah, byte [si + 1]
|           0000:22ed     884505         mov byte [di + 5], al
|           0000:22f0     884506         mov byte [di + 6], al
|           0000:22f3     886507         mov byte [di + 7], ah
|           0000:22f6     c6450801       mov byte [di + 8], 1
|           ; CODE XREF from fcn.000022be @ 0x22d3(x)
|           0000:22fa     5f             pop di
|           0000:22fb     5e             pop si
|           0000:22fc     58             pop ax
\           0000:22fd     c3             ret
            ; CALL XREF from fcn.00002a73 @ 0x2a7a(x)
/ 61: fcn.000022fe (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:22fe    .string "PSRW\x8b" ; len=5                    ; arg1
|           0000:2303     f8             clc
|           0000:2304     d1e7           shl di, 1
|           0000:2306     d1e7           shl di, 1
|           0000:2308     d1e7           shl di, 1
|           0000:230a     01c7           add di, ax                    ; arg1
|           0000:230c     d1e7           shl di, 1
|           0000:230e     01c7           add di, ax                    ; arg1
|           0000:2310     03fb           add di, bx                    ; arg3
|           0000:2312     8a950a82       mov dl, byte [di - 0x7df6]
|           0000:2316     84d2           test dl, dl
|           0000:2318     781c           js 0x2336
|           0000:231a     c6850a82ff     mov byte [di - 0x7df6], 0xff  ; [0xff:1]=255
|           0000:231f     d1e0           shl ax, 1                     ; arg1
|           0000:2321     d1e0           shl ax, 1
|           0000:2323     050300         add ax, 3
|           0000:2326     89df           mov di, bx                    ; arg3
|           0000:2328     d1e3           shl bx, 1                     ; arg3
|           0000:232a     03df           add bx, di
|           0000:232c     d1e3           shl bx, 1
|           0000:232e     d1e3           shl bx, 1
|           0000:2330     83c30c         add bx, 0xc                   ; 12
|           0000:2333     e888ff         call fcn.000022be
|           ; CODE XREF from fcn.000022fe @ 0x2318(x)
|           0000:2336    .string "_Z[X\xc3" ; len=5
            ; CALL XREF from fcn.00003658 @ 0x367f(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bde(x)
/ 67: fcn.0000233b (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:233b     50             push ax                       ; arg1
|           0000:233c     51             push cx                       ; arg4
|           0000:233d     57             push di
|           0000:233e     8a0e3bd2       mov cl, byte [0xd23b]
|           0000:2342     84c9           test cl, cl
|           0000:2344     7406           je 0x234c
|           0000:2346     fe0e3bd2       dec byte [0xd23b]
|           0000:234a     eb2e           jmp 0x237a
|           ; CODE XREF from fcn.0000233b @ 0x2344(x)
|           0000:234c     c6063bd201     mov byte [0xd23b], 1
|           0000:2351     bfcdc2         mov di, 0xc2cd
|           0000:2354     b90500         mov cx, 5
|           ; CODE XREF from fcn.0000233b @ 0x2378(x)
|           0000:2357     f64508ff       test byte [di + 8], 0xff
|           0000:235b     7418           je 0x2375
|           0000:235d     e83301         call fcn.00002493
|           0000:2360     c60654d200     mov byte [0xd254], 0
|           0000:2365     8b4502         mov ax, word [di + 2]
|           0000:2368     40             inc ax
|           0000:2369     894502         mov word [di + 2], ax
|           0000:236c     3d5101         cmp ax, 0x151                 ; "\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:236f     7604           jbe 0x2375
|           0000:2371     c6450800       mov byte [di + 8], 0
|           ; CODE XREFS from fcn.0000233b @ 0x235b(x), 0x236f(x)
|           0000:2375     83c709         add di, 9
|           0000:2378     e2dd           loop 0x2357
|           ; CODE XREF from fcn.0000233b @ 0x234a(x)
|           0000:237a     5f             pop di
|           0000:237b     59             pop cx
|           0000:237c     58             pop ax
\           0000:237d     c3             ret
            ; CALL XREF from fcn.00003658 @ 0x3697(x)
            ; CALL XREF from fcn.000036fd @ 0x373c(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bed(x)
/ 82: fcn.0000237e (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:237e    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:2385     ce             into
|           0000:2386     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:238a     42             inc dx
|           0000:238b     b011           mov al, 0x11                  ; 17
|           0000:238d     ee             out dx, al
|           0000:238e     befac2         mov si, 0xc2fa
|           0000:2391     f60639d2ff     test byte [0xd239], 0xff
|           0000:2396     7403           je 0x239b
|           0000:2398     83c60a         add si, 0xa
|           ; CODE XREF from fcn.0000237e @ 0x2396(x)
|           0000:239b     bfcdc2         mov di, 0xc2cd
|           0000:239e     32d2           xor dl, dl
|           0000:23a0     b90500         mov cx, 5
|           ; CODE XREF from fcn.0000237e @ 0x23bd(x)
|           0000:23a3     c704ffff       mov word [si], 0xffff         ; [0xffff:2]=0xffff
|           0000:23a7     f64508ff       test byte [di + 8], 0xff
|           0000:23ab     7408           je 0x23b5
|           0000:23ad     8b05           mov ax, word [di]
|           0000:23af     8b5d02         mov bx, word [di + 2]
|           0000:23b2     e8ac35         call fcn.00005961
|           ; CODE XREF from fcn.0000237e @ 0x23ab(x)
|           0000:23b5     83c602         add si, 2
|           0000:23b8     83c709         add di, 9
|           0000:23bb     fec2           inc dl
|           0000:23bd     e2e4           loop 0x23a3
|           0000:23bf     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:23c2     b005           mov al, 5
|           0000:23c4     ee             out dx, al
|           0000:23c5     42             inc dx
|           0000:23c6     b010           mov al, 0x10                  ; 16
|           0000:23c8     ee             out dx, al
|           0000:23c9    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003658 @ 0x3688(x)
            ; CALL XREF from fcn.00003bbd @ 0x3be7(x)
/ 59: fcn.000023d0 (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:23d0     50             push ax                       ; arg1
|           0000:23d1     51             push cx                       ; arg2
|           0000:23d2     56             push si
|           0000:23d3     8a0e3ad2       mov cl, byte [0xd23a]
|           0000:23d7     84c9           test cl, cl
|           0000:23d9     7406           je 0x23e1
|           0000:23db     fe0e3ad2       dec byte [0xd23a]
|           0000:23df     eb26           jmp 0x2407
|           ; CODE XREF from fcn.000023d0 @ 0x23d9(x)
|           0000:23e1     c6063ad204     mov byte [0xd23a], 4
|           0000:23e6     becdc2         mov si, 0xc2cd
|           0000:23e9     b90500         mov cx, 5
|           ; CODE XREF from fcn.000023d0 @ 0x2405(x)
|           0000:23ec     f64408ff       test byte [si + 8], 0xff
|           0000:23f0     7410           je 0x2402
|           0000:23f2     8a4405         mov al, byte [si + 5]
|           0000:23f5     0402           add al, 2
|           ;-- str.:D_av:
|           0000:23f7    .string ":D\av\x03" ; len=5
|           0000:23fc     8a4406         mov al, byte [si + 6]
|           ; CODE XREF from fcn.000023d0 @ 0x23fa(x)
|           0000:23ff     884405         mov byte [si + 5], al
|           ; CODE XREF from fcn.000023d0 @ 0x23f0(x)
|           0000:2402     83c609         add si, 9
|           0000:2405     e2e5           loop 0x23ec
|           ; CODE XREF from fcn.000023d0 @ 0x23df(x)
|           0000:2407     5e             pop si
|           0000:2408     59             pop cx
|           0000:2409     58             pop ax
|           ; DATA XREF from str.Corrupt_or_missing_file_:_r_n_r_n_______r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_creating_high_score_table_file._r_n_r_nCheck_for_full_disk_or_write_protect._r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_writing_high_score_table_file._r_n_r_nCheck_for_write_protect_on_disk._r_n_r_nReturning_to_DOS_..._r_n_r_n__r_n_r_nNot_enough_video_memory_installed___Paranoid_requires_256Kb._r_n_r_n__r_n_r_nSorry__Paranoid_requires_colour_EGA___VGA_to_run._r_n_r_n_G @ +0x15e(r)
|           ; DATA XREFS from str._r_n_r_nThe_following_files_are_missing_or_corrupt_:_r_n_r_n__r_nplease_re_copy_them_from_the_release_disk._r_n_r_nReturning_to_DOS_...._r_n_r_n____________r_n__r_nCannot_continue__the_levels_data_file_r_n_r_n_____________r_n_r_nwas_missing_or_corrupt__returning_to_DOS_..._r_n_ @ +0x89(r), +0xf3(r)
\           0000:240a     c3             ret
            ; CALL XREF from fcn.00003610 @ 0x364a(x)
            ; CALL XREF from fcn.00003658 @ 0x36a3(x)
            ; CALL XREF from fcn.000036fd @ 0x373f(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bf6(x)
/ 70: fcn.0000240b (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:240b    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:2412     ce             into
|           0000:2413     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:2417     42             inc dx
|           0000:2418     b011           mov al, 0x11                  ; 17
|           0000:241a     ee             out dx, al
|           0000:241b     bfcdc2         mov di, 0xc2cd
|           0000:241e     b90500         mov cx, 5
|           ; CODE XREF from fcn.0000240b @ 0x243e(x)
|           0000:2421     f64508ff       test byte [di + 8], 0xff
|           0000:2425     7414           je 0x243b
|           0000:2427     8b05           mov ax, word [di]
|           0000:2429     8b5d02         mov bx, word [di + 2]
|           0000:242c     bea90b         mov si, 0xba9
|           0000:242f     8a5505         mov dl, byte [di + 5]
|           0000:2432     32f6           xor dh, dh
|           0000:2434     03f2           add si, dx
|           0000:2436     8b34           mov si, word [si]
|           0000:2438     e8de34         call fcn.00005919
|           ; CODE XREF from fcn.0000240b @ 0x2425(x)
|           0000:243b     83c709         add di, 9
|           0000:243e     e2e1           loop 0x2421
|           0000:2440     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2443     b005           mov al, 5
|           0000:2445     ee             out dx, al
|           0000:2446     42             inc dx
|           0000:2447     b010           mov al, 0x10                  ; 16
|           0000:2449     ee             out dx, al
|           0000:244a    .string "_^ZY[X\xc3" ; len=7
            ; XREFS: CALL 0x0000363b  CALL 0x00003676  CALL 0x0000370a  CALL 0x0000371c  CALL 0x00003ab7  CALL 0x00003abd  
            ; XREFS: CALL 0x00003bd8  
/ 66: fcn.00002451 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2451    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:2458     ce             into
|           0000:2459     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:245d     42             inc dx
|           0000:245e     b011           mov al, 0x11                  ; 17
|           0000:2460     ee             out dx, al
|           0000:2461     b200           mov dl, 0
|           0000:2463     befac2         mov si, 0xc2fa
|           0000:2466     f60639d2ff     test byte [0xd239], 0xff
|           0000:246b     7403           je 0x2470
|           0000:246d     83c60a         add si, 0xa
|           ; CODE XREF from fcn.00002451 @ 0x246b(x)
|           0000:2470     b90500         mov cx, 5
|           ; CODE XREF from fcn.00002451 @ 0x2480(x)
|           0000:2473     833cff         cmp word [si], 0xffff
|           0000:2476     7403           je 0x247b
|           0000:2478     e85035         call fcn.000059cb
|           ; CODE XREF from fcn.00002451 @ 0x2476(x)
|           0000:247b     fec2           inc dl
|           0000:247d     83c602         add si, 2
|           0000:2480     e2f1           loop 0x2473
|           0000:2482     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2485     b005           mov al, 5
|           0000:2487     ee             out dx, al
|           0000:2488     42             inc dx
|           0000:2489     b010           mov al, 0x10                  ; 16
|           0000:248b     ee             out dx, al
|           0000:248c    .string "_^ZY[X\xc3" ; len=7
            ;-- str.PSRVW:
            ; CALL XREF from fcn.0000233b @ 0x235d(x)
/ 99: fcn.00002493 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:2493    .string "PSRVW\x8b" ; len=6                   ; arg1
|           0000:2499     45             inc bp
|           0000:249a     023d           add bh, byte [di]
|           0000:249c ~   3d0176         cmp ax, 0x7601
|           ;-- str.vPN:
|           0000:249e    .string "vP=N\x01" ; len=5
|           0000:24a3     734b           jae 0x24f0
|           0000:24a5     8b05           mov ax, word [di]
|           0000:24a7     d1e0           shl ax, 1
|           0000:24a9     d1e0           shl ax, 1
|           0000:24ab     d1e0           shl ax, 1
|           0000:24ad     051000         add ax, 0x10                  ; 16
|           0000:24b0     3b0647d2       cmp ax, word [0xd247]
|           0000:24b4     763a           jbe 0x24f0
|           0000:24b6     8a1e49d2       mov bl, byte [0xd249]
|           0000:24ba     d0e3           shl bl, 1
|           0000:24bc     d0e3           shl bl, 1
|           0000:24be     d0e3           shl bl, 1
|           0000:24c0     32ff           xor bh, bh
|           0000:24c2     031e47d2       add bx, word [0xd247]
|           0000:24c6     2d1000         sub ax, 0x10                  ; 16
|           0000:24c9     39d8           cmp ax, bx
|           0000:24cb     7323           jae 0x24f0
|           0000:24cd     c6450800       mov byte [di + 8], 0
|           0000:24d1     f606d0ceff     test byte [0xced0], 0xff
|           0000:24d6     7518           jne 0x24f0
|           0000:24d8     8a5504         mov dl, byte [di + 4]
|           0000:24db     d0e2           shl dl, 1
|           0000:24dd     32f6           xor dh, dh
|           0000:24df     be4c0c         mov si, 0xc4c                 ; 'L\f'
|           0000:24e2     03f2           add si, dx
|           0000:24e4     ff14           call word [si]
|           0000:24e6     be640c         mov si, 0xc64                 ; 'd\f'
|           0000:24e9     03f2           add si, dx
|           0000:24eb     8b3c           mov di, word [si]
|           0000:24ed ~   e8ef2d         call fcn.000052df
|           ;-- str.__Z_X:
|           0000:24ef    .string "-_^Z[X\xc3" ; len=7
|           ; CODE XREFS from fcn.00002493 @ 0x249e(x), 0x24a3(x), 0x24b4(x), 0x24cb(x), 0x24d6(x)
|           0000:24f0    .string "-_^Z[X\xc3" ; len=7
            0000:24f6     50             push ax
            0000:24f7     803e49d208     cmp byte [0xd249], 8
            0000:24fc     7416           je 0x2514
            0000:24fe     fe0649d2       inc byte [0xd249]
            0000:2502     fe0649d2       inc byte [0xd249]
            0000:2506     a14ad2         mov ax, word [0xd24a]         ; [0xd24a:2]=0xffff
            ; DATA XREF from fcn.000050cb @ 0x50cf(r)
            ; DATA XREF from fcn.000050e8 @ 0x50f4(r)
            0000:2509     2d1000         sub ax, 0x10                  ; 16
            0000:250c ~   a34ad2         mov word [0xd24a], ax         ; [0xd24a:2]=0xffff
            ;-- str.J.G:
            0000:250d    .string "J\xd2\x83.G\xd2" ; len=6
            0000:2513     0858c3         or byte [bx + si - 0x3d], bl
            0000:2516     50             push ax
            0000:2517     803e49d204     cmp byte [0xd249], 4
            0000:251c     7419           je 0x2537
            0000:251e     fe0e49d2       dec byte [0xd249]
            0000:2522     fe0e49d2       dec byte [0xd249]
            0000:2526     a14ad2         mov ax, word [0xd24a]         ; [0xd24a:2]=0xffff
            0000:2529     051000         add ax, 0x10                  ; 16
            0000:252c     a34ad2         mov word [0xd24a], ax         ; [0xd24a:2]=0xffff
            0000:252f     830647d208     add word [0xd247], 8
            0000:2534     e80c01         call fcn.00002643
            ; CODE XREF from str.J.G @ +0xf(x)
            0000:2537     58             pop ax
            0000:2538     c3             ret
            ; DATA XREF from str._9___ @ +0x0(r)
            0000:2539     c6064cd201     mov byte [0xd24c], 1
            0000:253e     c3             ret
            ; CALL XREF from fcn.00003ad1 @ 0x3b24(x)
/ 76: fcn.0000253f (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:253f     52             push dx                       ; arg2
|           0000:2540     80069ed305     add byte [0xd39e], 5
|           0000:2545     803e9ed30a     cmp byte [0xd39e], 0xa
|           0000:254a     7235           jb 0x2581
|           0000:254c     802e9ed30a     sub byte [0xd39e], 0xa
|           0000:2551     fe069dd3       inc byte [0xd39d]
|           0000:2555     803e9dd30a     cmp byte [0xd39d], 0xa
|           0000:255a     7225           jb 0x2581
|           0000:255c     c6069dd300     mov byte [0xd39d], 0
|           0000:2561     fe069cd3       inc byte [0xd39c]
|           0000:2565     803e9cd30a     cmp byte [0xd39c], 0xa
|           0000:256a     7215           jb 0x2581
|           0000:256c     c6069cd300     mov byte [0xd39c], 0
|           0000:2571     fe069bd3       inc byte [0xd39b]
|           0000:2575     803e9bd30a     cmp byte [0xd39b], 0xa
|           0000:257a     7205           jb 0x2581
|           0000:257c     c6069bd300     mov byte [0xd39b], 0
|           ; CODE XREFS from fcn.0000253f @ 0x254a(x), 0x255a(x), 0x256a(x), 0x257a(x)
|           0000:2581     b201           mov dl, 1
|           0000:2583     e83d3a         call fcn.00005fc3
|           0000:2586     e8f039         call fcn.00005f79
|           0000:2589     5a             pop dx
\           0000:258a     c3             ret
            ; DATA XREF from str._9___ @ +0x4(r)
            0000:258b     c6064cd202     mov byte [0xd24c], 2
            0000:2590     e80815         call fcn.00003a9b
            0000:2593     c3             ret
            0000:2594     800655d202     add byte [0xd255], 2
            0000:2599     c3             ret
            ; DATA XREF from str._9___ @ +0x8(r)
            ; CALL XREF from fcn.00005f79 @ 0x5f86(x)
/ 32: fcn.0000259a (int16_t arg1);
| `- args(dx)
|           0000:259a     52             push dx                       ; arg1
|           0000:259b     fe0650d2       inc byte [0xd250]
|           0000:259f     fe06acd3       inc byte [0xd3ac]
|           0000:25a3     803eacd30a     cmp byte [0xd3ac], 0xa
|           0000:25a8     7209           jb 0x25b3
|           0000:25aa     c606acd300     mov byte [0xd3ac], 0
|           0000:25af     fe06abd3       inc byte [0xd3ab]
|           ; CODE XREF from fcn.0000259a @ 0x25a8(x)
|           0000:25b3     b201           mov dl, 1
|           0000:25b5     e8313a         call fcn.00005fe9
|           0000:25b8     5a             pop dx
\           0000:25b9     c3             ret
            0000:25ba     c60657d201     mov byte [0xd257], 1
            0000:25bf     c3             ret
            0000:25c0     c60664d201     mov byte [0xd264], 1
            0000:25c5     c3             ret
            ; DATA XREF from str._9___ @ +0xe(r)
            0000:25c6     50             push ax
            0000:25c7     51             push cx
            0000:25c8     57             push di
            0000:25c9     bf6dc1         mov di, 0xc16d
            0000:25cc     b91000         mov cx, 0x10                  ; 16
            ; CODE XREF from str.x_v_ @ +0x1c(x)
            0000:25cf     f6450801       test byte [di + 8], 1
            0000:25d3     742c           je 0x2601
            0000:25d5     ff4509         inc word [di + 9]
            0000:25d8     837d0903       cmp word [di + 9], 3
            0000:25dc     7523           jne 0x2601
            0000:25de     c745090000     mov word [di + 9], 0
            0000:25e3     8b4506         mov ax, word [di + 6]
            0000:25e6     85c0           test ax, ax
            ;-- str.x_v_:
            0000:25e8    .string "x\v@=\x06" ; len=5
            0000:25ed     007603         add byte [bp + 3], dh
            0000:25f0     b80600         mov ax, 6
            ; CODE XREF from str.x_v_ @ +0x6(x)
            0000:25f3     eb09           jmp 0x25fe
            ; CODE XREF from str.x_v_ @ +0x0(x)
            0000:25f5     48             dec ax
            0000:25f6     3dfaff         cmp ax, 0xfffa
            0000:25f9     7d03           jge 0x25fe
            0000:25fb     b8faff         mov ax, 0xfffa
            ; CODE XREFS from str.x_v_ @ +0xb(x), +0x11(x)
            0000:25fe     894506         mov word [di + 6], ax
            ; CODE XREFS from str.J.G @ +0xc6(x), +0xcf(x)
            0000:2601     83c710         add di, 0x10                  ; 16
            0000:2604     e2c9           loop 0x25cf
            0000:2606     5f             pop di
            0000:2607     59             pop cx
            0000:2608     58             pop ax
            0000:2609     c3             ret
            0000:260a     50             push ax
            0000:260b     51             push cx
            0000:260c     57             push di
            0000:260d     bf6dc1         mov di, 0xc16d
            0000:2610     b91000         mov cx, 0x10                  ; 16
            ; CODE XREF from str.x_v_ @ +0x49(x)
            0000:2613     f6450801       test byte [di + 8], 1
            0000:2617     7415           je 0x262e
            0000:2619     c745090000     mov word [di + 9], 0
            0000:261e     b80200         mov ax, 2
            0000:2621     f74506ffff     test word [di + 6], 0xffff
            0000:2626     7903           jns 0x262b
            0000:2628     b8feff         mov ax, 0xfffe
            ; CODE XREF from str.x_v_ @ +0x3e(x)
            0000:262b     894506         mov word [di + 6], ax
            ; CODE XREF from str.x_v_ @ +0x2f(x)
            0000:262e     83c710         add di, 0x10                  ; 16
            0000:2631     e2e0           loop 0x2613
            0000:2633     c7063dd20006   mov word [0xd23d], 0x600      ; [0x600:2]=0
            0000:2639     5f             pop di
            0000:263a     59             pop cx
            0000:263b     58             pop ax
            0000:263c     c3             ret
            ; DATA XREF from str.__n @ +0x1(r)
            0000:263d     c60656d201     mov byte [0xd256], 1
            0000:2642     c3             ret
            ; CALL XREF from str.J.G @ +0x27(x)
/ 74: fcn.00002643 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2643    .string "PSQRV\xbe" ; len=6                   ; arg1
|           0000:2649     6d             insw word es:[di], dx
|           0000:264a ~   c1b91000f6     sar word [bx + di + 0x10], 0xf6
|           ; CODE XREF from fcn.00002643 @ 0x2685(x)
|           0000:264e     f6440801       test byte [si + 8], 1
|           0000:2652     742e           je 0x2682
|           0000:2654 ~   f6440808       test byte [si + 8], 8
|           ;-- str.D_b_bt_:
|           0000:2655    .string "D\b\bt(\x8b" ; len=6
|           0000:265b     048b           add al, 0x8b                  ; 139
|           0000:265d     1e             push ds
|           0000:265e     47             inc di
|           0000:265f     d283eb07       rol byte [bp + di + 0x7eb], cl
|           0000:2663     39d8           cmp ax, bx
|           0000:2665     7304           jae 0x266b
|           0000:2667     891c           mov word [si], bx
|           0000:2669     eb17           jmp 0x2682
|           ; CODE XREF from fcn.00002643 @ 0x2665(x)
|           0000:266b     83c304         add bx, 4
|           0000:266e     8a1649d2       mov dl, byte [0xd249]
|           0000:2672     d0e2           shl dl, 1
|           0000:2674     d0e2           shl dl, 1
|           0000:2676     d0e2           shl dl, 1
|           0000:2678     32f6           xor dh, dh
|           0000:267a     03da           add bx, dx
|           0000:267c     39d8           cmp ax, bx
|           0000:267e     7602           jbe 0x2682
|           0000:2680     891c           mov word [si], bx
|           ; CODE XREFS from fcn.00002643 @ 0x2652(x), 0x2658(x), 0x2669(x), 0x267e(x)
|           0000:2682     83c610         add si, 0x10                  ; 16
|           0000:2685     e2c7           loop 0x264e
|           0000:2687    .string "^ZY[X\xc3" ; len=6
            0000:268d     3100           xor word [bx + si], ax
            0000:268f     e27e           loop 0x270f                   ; fcn.00002693+0x7c
            0000:2691    .string "~;'PSQR\x88" ; len=8
|           0000:2698     16             push ss
|           0000:2699     7cd3           jl 0x266e                     ; fcn.00002643+0x2b
|           0000:269b     88d3           mov bl, dl
|           0000:269d     32ff           xor bh, bh
|           0000:269f     b104           mov cl, 4
|           0000:26a1     d3e3           shl bx, cl
|           0000:26a3     8b876dc1       mov ax, word [bx - 0x3e93]
|           0000:26a7     a380d3         mov word [0xd380], ax         ; [0xd380:2]=0xffff
|           0000:26aa     8b876fc1       mov ax, word [bx - 0x3e91]
|           0000:26ae     a382d3         mov word [0xd382], ax         ; [0xd382:2]=0xffff
|           0000:26b1     8b8771c1       mov ax, word [bx - 0x3e8f]
|           0000:26b5     a384d3         mov word [0xd384], ax         ; [0xd384:2]=0xffff
|           0000:26b8     8b8773c1       mov ax, word [bx - 0x3e8d]
|           0000:26bc     a386d3         mov word [0xd386], ax         ; [0xd386:2]=0xffff
|           0000:26bf     a180d3         mov ax, word [0xd380]         ; [0xd380:2]=0xffff
|           0000:26c2     8b1e82d3       mov bx, word [0xd382]
|           0000:26c6     e88f01         call fcn.00002858
|           0000:26c9     80f900         cmp cl, 0
|           0000:26cc     7503           jne 0x26d1
|           0000:26ce     e98201         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x26cc(x)
|           0000:26d1     80f903         cmp cl, 3                     ; 3
|           0000:26d4     750d           jne 0x26e3
|           0000:26d6     8a167cd3       mov dl, byte [0xd37c]
|           0000:26da     e82e04         call fcn.00002b0b
|           0000:26dd     e86904         call fcn.00002b49
|           0000:26e0     e97001         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x26d4(x)
|           0000:26e3     80f902         cmp cl, 2                     ; 2
|           0000:26e6     751b           jne 0x2703
|           0000:26e8     f6c501         test ch, 1                    ; 1
|           0000:26eb     7407           je 0x26f4
|           0000:26ed     8a167cd3       mov dl, byte [0xd37c]
|           0000:26f1     e85504         call fcn.00002b49
|           ; CODE XREF from fcn.00002693 @ 0x26eb(x)
|           0000:26f4     f6c502         test ch, 2                    ; 2
|           0000:26f7     7407           je 0x2700
|           0000:26f9     8a167cd3       mov dl, byte [0xd37c]
|           0000:26fd     e80b04         call fcn.00002b0b
|           ; CODE XREF from fcn.00002693 @ 0x26f7(x)
|           0000:2700     e95001         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x26e6(x)
|           0000:2703     c6067ed300     mov byte [0xd37e], 0
|           0000:2708     c6067fd300     mov byte [0xd37f], 0
|           0000:270d     3b0680d3       cmp ax, word [0xd380]
|           0000:2711     7711           ja 0x2724
|           0000:2713     fe067ed3       inc byte [0xd37e]
|           0000:2717     051800         add ax, 0x18                  ; 24
|           0000:271a     3b0680d3       cmp ax, word [0xd380]
|           0000:271e     7704           ja 0x2724
|           0000:2720     fe067ed3       inc byte [0xd37e]
|           ; CODE XREFS from fcn.00002693 @ 0x2711(x), 0x271e(x)
|           0000:2724     3b1e82d3       cmp bx, word [0xd382]
|           0000:2728     7711           ja 0x273b
|           0000:272a     fe067fd3       inc byte [0xd37f]
|           0000:272e     83c306         add bx, 6
|           0000:2731     3b1e82d3       cmp bx, word [0xd382]
|           0000:2735     7704           ja 0x273b
|           0000:2737     fe067fd3       inc byte [0xd37f]
|           ; CODE XREFS from fcn.00002693 @ 0x2728(x), 0x2735(x)
|           0000:273b     803e7ed301     cmp byte [0xd37e], 1
|           0000:2740     750a           jne 0x274c
|           0000:2742     8a167cd3       mov dl, byte [0xd37c]
|           0000:2746     e80004         call fcn.00002b49
|           0000:2749     e90701         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x2740(x)
|           0000:274c     803e7fd301     cmp byte [0xd37f], 1
|           0000:2751     750a           jne 0x275d
|           0000:2753     8a167cd3       mov dl, byte [0xd37c]
|           0000:2757     e8b103         call fcn.00002b0b
|           0000:275a     e9f600         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x2751(x)
|           0000:275d     c60688d300     mov byte [0xd388], 0
|           0000:2762     f6067ed3ff     test byte [0xd37e], 0xff
|           0000:2767     7505           jne 0x276e
|           0000:2769     800688d302     add byte [0xd388], 2
|           ; CODE XREF from fcn.00002693 @ 0x2767(x)
|           0000:276e     f6067fd3ff     test byte [0xd37f], 0xff
|           0000:2773     7504           jne 0x2779
|           0000:2775     fe0688d3       inc byte [0xd388]
|           ; CODE XREF from fcn.00002693 @ 0x2773(x)
|           0000:2779     c60689d300     mov byte [0xd389], 0
|           0000:277e     f70684d3ffff   test word [0xd384], 0xffff
|           0000:2784     7905           jns 0x278b
|           0000:2786     800689d302     add byte [0xd389], 2
|           ; CODE XREF from fcn.00002693 @ 0x2784(x)
|           0000:278b     f70686d3ffff   test word [0xd386], 0xffff
|           0000:2791     7904           jns 0x2797
|           0000:2793     fe0689d3       inc byte [0xd389]
|           ; CODE XREF from fcn.00002693 @ 0x2791(x)
|           0000:2797     a088d3         mov al, byte [0xd388]         ; [0xd388:1]=255
|           0000:279a     d0e0           shl al, 1
|           0000:279c     d0e0           shl al, 1
|           0000:279e     020689d3       add al, byte [0xd389]
|           0000:27a2     bb5a0b         mov bx, 0xb5a                 ; 'Z\v'
|           0000:27a5     d7             xlatb
|           0000:27a6     3c01           cmp al, 1                     ; 1
|           0000:27a8     750a           jne 0x27b4
|           0000:27aa     8a167cd3       mov dl, byte [0xd37c]
|           0000:27ae     e85a03         call fcn.00002b0b
|           0000:27b1     e99f00         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x27a8(x)
|           0000:27b4     3c02           cmp al, 2                     ; 2
|           0000:27b6     750a           jne 0x27c2
|           0000:27b8     8a167cd3       mov dl, byte [0xd37c]
|           0000:27bc     e88a03         call fcn.00002b49
|           0000:27bf     e99100         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x27b6(x)
|           0000:27c2     a182d3         mov ax, word [0xd382]         ; [0xd382:2]=0xffff
|           0000:27c5     b306           mov bl, 6
|           0000:27c7     f6f3           div bl
|           0000:27c9     8adc           mov bl, ah
|           0000:27cb     a180d3         mov ax, word [0xd380]         ; [0xd380:2]=0xffff
|           0000:27ce     2407           and al, 7
|           0000:27d0     80fb02         cmp bl, 2                     ; 2
|           0000:27d3     7202           jb 0x27d7
|           0000:27d5     fec3           inc bl
|           ; CODE XREF from fcn.00002693 @ 0x27d3(x)
|           0000:27d7     80fb05         cmp bl, 5                     ; 5
|           0000:27da     7202           jb 0x27de
|           0000:27dc     fec3           inc bl
|           ; CODE XREF from fcn.00002693 @ 0x27da(x)
|           0000:27de     8a0e88d3       mov cl, byte [0xd388]
|           0000:27e2     80f900         cmp cl, 0
|           0000:27e5     7518           jne 0x27ff
|           0000:27e7     38d8           cmp al, bl
|           0000:27e9     730a           jae 0x27f5
|           0000:27eb     8a167cd3       mov dl, byte [0xd37c]
|           0000:27ef     e85703         call fcn.00002b49
|           0000:27f2     e95e00         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x27e9(x)
|           0000:27f5     8a167cd3       mov dl, byte [0xd37c]
|           0000:27f9     e80f03         call fcn.00002b0b
|           0000:27fc     e95400         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x27e5(x)
|           0000:27ff     80f901         cmp cl, 1                     ; 1
|           0000:2802     751c           jne 0x2820
|           0000:2804     2c07           sub al, 7
|           0000:2806     f6d8           neg al
|           0000:2808     38d8           cmp al, bl
|           0000:280a     770a           ja 0x2816
|           0000:280c     8a167cd3       mov dl, byte [0xd37c]
|           0000:2810     e8f802         call fcn.00002b0b
|           0000:2813     e93d00         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x280a(x)
|           0000:2816     8a167cd3       mov dl, byte [0xd37c]
|           0000:281a     e82c03         call fcn.00002b49
|           0000:281d     e93300         jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x2802(x)
|           0000:2820     80f902         cmp cl, 2                     ; 2
|           0000:2823     751a           jne 0x283f
|           0000:2825     2c07           sub al, 7
|           0000:2827     f6d8           neg al
|           0000:2829     38d8           cmp al, bl
|           0000:282b     7709           ja 0x2836
|           0000:282d     8a167cd3       mov dl, byte [0xd37c]
|           0000:2831     e81503         call fcn.00002b49
|           0000:2834     eb1d           jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x282b(x)
|           0000:2836     8a167cd3       mov dl, byte [0xd37c]
|           0000:283a     e8ce02         call fcn.00002b0b
|           0000:283d     eb14           jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x2823(x)
|           0000:283f     38d8           cmp al, bl
|           0000:2841     7309           jae 0x284c
|           0000:2843     8a167cd3       mov dl, byte [0xd37c]
|           0000:2847     e8c102         call fcn.00002b0b
|           0000:284a     eb07           jmp 0x2853
|           ; CODE XREF from fcn.00002693 @ 0x2841(x)
|           0000:284c     8a167cd3       mov dl, byte [0xd37c]
|           0000:2850     e8f602         call fcn.00002b49
|           ; XREFS: CODE 0x000026ce  CODE 0x000026e0  CODE 0x00002700  CODE 0x00002749  CODE 0x0000275a  CODE 0x000027b1  
|           ; XREFS: CODE 0x000027bf  CODE 0x000027f2  CODE 0x000027fc  CODE 0x00002813  CODE 0x0000281d  CODE 0x00002834  
|           ; XREFS: CODE 0x0000283d  CODE 0x0000284a  
|           0000:2853    .string "ZY[X\xc3\xa3\x90" ; len=7
|           0000:285a     d3891e92       ror word [bx + di - 0x6de2], cl
|           0000:285e     d3e8           shr ax, cl
|           0000:2860     ab             stosw word es:[di], ax
|           0000:2861     00e8           add al, ch
|           0000:2863     c00132         rol byte [bx + di], 0x32
|           0000:2866     c9             leave
|           0000:2867     f6068ad3ff     test byte [0xd38a], 0xff
|           0000:286c     7402           je 0x2870
|           0000:286e     fec1           inc cl
|           ; CODE XREF from fcn.00002858 @ 0x286c(x)
|           0000:2870     f6068bd3ff     test byte [0xd38b], 0xff
|           0000:2875     7402           je 0x2879
|           0000:2877     fec1           inc cl
|           ; CODE XREF from fcn.00002858 @ 0x2875(x)
|           0000:2879     f6068cd3ff     test byte [0xd38c], 0xff
|           0000:287e     7402           je 0x2882
|           0000:2880     fec1           inc cl
|           ; CODE XREF from fcn.00002858 @ 0x287e(x)
|           0000:2882     f6068dd3ff     test byte [0xd38d], 0xff
|           0000:2887     7402           je 0x288b
|           0000:2889     fec1           inc cl
|           ; CODE XREF from fcn.00002858 @ 0x2887(x)
|           0000:288b     80f900         cmp cl, 0
|           0000:288e     747c           je 0x290c
|           0000:2890     80f903         cmp cl, 3                     ; 3
|           0000:2893     7477           je 0x290c
|           0000:2895     80f901         cmp cl, 1                     ; 1
|           0000:2898     7434           je 0x28ce
|           0000:289a     32c0           xor al, al
|           0000:289c     f6068ad3ff     test byte [0xd38a], 0xff
|           0000:28a1     7402           je 0x28a5
|           0000:28a3     fec0           inc al
|           ; CODE XREF from fcn.00002858 @ 0x28a1(x)
|           0000:28a5     d0e0           shl al, 1
|           0000:28a7     f6068bd3ff     test byte [0xd38b], 0xff
|           0000:28ac     7402           je 0x28b0
|           0000:28ae     fec0           inc al
|           ; CODE XREF from fcn.00002858 @ 0x28ac(x)
|           0000:28b0     d0e0           shl al, 1
|           0000:28b2     f6068cd3ff     test byte [0xd38c], 0xff
|           0000:28b7     7402           je 0x28bb
|           0000:28b9     fec0           inc al
|           ; CODE XREF from fcn.00002858 @ 0x28b7(x)
|           0000:28bb     d0e0           shl al, 1
|           0000:28bd     f6068dd3ff     test byte [0xd38d], 0xff
|           0000:28c2     7402           je 0x28c6
|           0000:28c4     fec0           inc al
|           ; CODE XREF from fcn.00002858 @ 0x28c2(x)
|           0000:28c6     bb6a0b         mov bx, 0xb6a                 ; 'j\v'
|           0000:28c9     d7             xlatb
|           0000:28ca     88c5           mov ch, al
|           0000:28cc     eb3e           jmp 0x290c
|           ; CODE XREF from fcn.00002858 @ 0x2898(x)
|           0000:28ce     a192d3         mov ax, word [0xd392]         ; [0xd392:2]=0xffff
|           0000:28d1     b30c           mov bl, 0xc                   ; 12
|           0000:28d3     f6f3           div bl
|           0000:28d5     32e4           xor ah, ah
|           0000:28d7     f6e3           mul bl
|           0000:28d9     8bd8           mov bx, ax
|           0000:28db     a190d3         mov ax, word [0xd390]         ; [0xd390:2]=0xffff
|           0000:28de     2d1000         sub ax, 0x10                  ; 16
|           0000:28e1     25e0ff         and ax, 0xffe0
|           0000:28e4     051000         add ax, 0x10                  ; 16
|           0000:28e7     803e8ad300     cmp byte [0xd38a], 0
|           0000:28ec     751e           jne 0x290c
|           0000:28ee     803e8bd300     cmp byte [0xd38b], 0
|           0000:28f3     7405           je 0x28fa
|           0000:28f5     052000         add ax, 0x20                  ; 32
|           0000:28f8     eb12           jmp 0x290c
|           ; CODE XREF from fcn.00002858 @ 0x28f3(x)
|           0000:28fa     803e8cd300     cmp byte [0xd38c], 0
|           0000:28ff     7405           je 0x2906
|           0000:2901     83c30c         add bx, 0xc                   ; 12
|           0000:2904     eb06           jmp 0x290c
|           ; CODE XREF from fcn.00002858 @ 0x28ff(x)
|           0000:2906     052000         add ax, 0x20                  ; 32
|           0000:2909     83c30c         add bx, 0xc                   ; 12
|           ; XREFS: CODE 0x0000288e  CODE 0x00002893  CODE 0x000028cc  CODE 0x000028ec  CODE 0x000028f8  CODE 0x00002904  
\           0000:290c     c3             ret
            ;-- str.PSQPS:
            ; CALL XREF from fcn.00002858 @ 0x285f(x)
/ 237: fcn.0000290d (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:290d    .string "PSQPS\xc6" ; len=6                   ; arg1
|           0000:2913     06             push es
|           0000:2914     8ad3           mov dl, bl
|           0000:2916     00c6           add dh, al
|           0000:2918     06             push es
|           0000:2919     8bd3           mov dx, bx
|           0000:291b     00c6           add dh, al
|           0000:291d     06             push es
|           0000:291e     8cd3           mov bx, ss
|           0000:2920     00c6           add dh, al
|           0000:2922     06             push es
|           0000:2923     8d             invalid
|           0000:2924     d300           rol word [bx + si], cl
|           0000:2926     89c1           mov cx, ax                    ; arg1
|           0000:2928     8bc3           mov ax, bx                    ; arg3
|           0000:292a     b30c           mov bl, 0xc                   ; 12
|           0000:292c     f6f3           div bl
|           0000:292e     32e4           xor ah, ah
|           0000:2930     48             dec ax
|           0000:2931     a396d3         mov word [0xd396], ax         ; [0xd396:2]=0xffff
|           0000:2934     89c8           mov ax, cx
|           0000:2936     2d1000         sub ax, 0x10                  ; 16
|           0000:2939     d1e8           shr ax, 1
|           0000:293b     d1e8           shr ax, 1
|           0000:293d     d1e8           shr ax, 1
|           0000:293f     d1e8           shr ax, 1
|           0000:2941     d1e8           shr ax, 1
|           0000:2943     a394d3         mov word [0xd394], ax         ; [0xd394:2]=0xffff
|           0000:2946     8b1e96d3       mov bx, word [0xd396]
|           0000:294a     3d0e00         cmp ax, 0xe                   ; 14
|           0000:294d     7203           jb 0x2952
|           0000:294f     e9a400         jmp 0x29f6
|           ; CODE XREF from fcn.0000290d @ 0x294d(x)
|           0000:2952     85c0           test ax, ax
|           0000:2954     7903           jns 0x2959
|           0000:2956     e99d00         jmp 0x29f6
|           ; CODE XREF from fcn.0000290d @ 0x2954(x)
|           0000:2959     83fb13         cmp bx, 0x13                  ; 19
|           0000:295c     7203           jb 0x2961
|           0000:295e     e99500         jmp 0x29f6
|           ; CODE XREF from fcn.0000290d @ 0x295c(x)
|           0000:2961     85db           test bx, bx
|           0000:2963     7903           jns 0x2968
|           0000:2965     e98e00         jmp 0x29f6
|           ; CODE XREF from fcn.0000290d @ 0x2963(x)
|           0000:2968     e88f00         call fcn.000029fa
|           0000:296b     880e8ad3       mov byte [0xd38a], cl
|           0000:296f     58             pop ax
|           0000:2970     b30c           mov bl, 0xc                   ; 12
|           0000:2972     f6f3           div bl
|           0000:2974     88e0           mov al, ah
|           0000:2976     32e4           xor ah, ah
|           0000:2978     8bd8           mov bx, ax
|           0000:297a     58             pop ax
|           0000:297b     2d1000         sub ax, 0x10                  ; 16
|           0000:297e     251f00         and ax, 0x1f                  ; 31
|           0000:2981     3c18           cmp al, 0x18                  ; 24
|           0000:2983     7602           jbe 0x2987
|           0000:2985     b401           mov ah, 1
|           ; CODE XREF from fcn.0000290d @ 0x2983(x)
|           0000:2987     80fb06         cmp bl, 6                     ; 6
|           0000:298a     7602           jbe 0x298e
|           0000:298c     b701           mov bh, 1
|           ; CODE XREF from fcn.0000290d @ 0x298a(x)
|           0000:298e     88268ed3       mov byte [0xd38e], ah
|           0000:2992     883e8fd3       mov byte [0xd38f], bh
|           0000:2996     80fc01         cmp ah, 1                     ; 1
|           0000:2999     7514           jne 0x29af
|           0000:299b     a194d3         mov ax, word [0xd394]         ; [0xd394:2]=0xffff
|           0000:299e     40             inc ax
|           0000:299f     3d0e00         cmp ax, 0xe                   ; 14
|           0000:29a2     740b           je 0x29af
|           0000:29a4     8b1e96d3       mov bx, word [0xd396]
|           0000:29a8     e84f00         call fcn.000029fa
|           0000:29ab     880e8bd3       mov byte [0xd38b], cl
|           ; CODE XREFS from fcn.0000290d @ 0x2999(x), 0x29a2(x)
|           0000:29af     803e8fd301     cmp byte [0xd38f], 1
|           0000:29b4     7514           jne 0x29ca
|           0000:29b6     a194d3         mov ax, word [0xd394]         ; [0xd394:2]=0xffff
|           0000:29b9     8b1e96d3       mov bx, word [0xd396]
|           0000:29bd     43             inc bx
|           0000:29be     83fb13         cmp bx, 0x13                  ; 19
|           0000:29c1     7407           je 0x29ca
|           0000:29c3     e83400         call fcn.000029fa
|           0000:29c6     880e8cd3       mov byte [0xd38c], cl
|           ; CODE XREFS from fcn.0000290d @ 0x29b4(x), 0x29c1(x)
|           0000:29ca     803e8ed301     cmp byte [0xd38e], 1
|           0000:29cf     7521           jne 0x29f2
|           0000:29d1     803e8fd301     cmp byte [0xd38f], 1
|           0000:29d6     751a           jne 0x29f2
|           0000:29d8     a194d3         mov ax, word [0xd394]         ; [0xd394:2]=0xffff
|           0000:29db     8b1e96d3       mov bx, word [0xd396]
|           0000:29df     40             inc ax
|           0000:29e0     3d0e00         cmp ax, 0xe                   ; 14
|           0000:29e3     740d           je 0x29f2
|           0000:29e5     43             inc bx
|           0000:29e6     83fb13         cmp bx, 0x13                  ; 19
|           0000:29e9     7407           je 0x29f2
|           0000:29eb     e80c00         call fcn.000029fa
|           0000:29ee     880e8dd3       mov byte [0xd38d], cl
|           ; CODE XREFS from fcn.0000290d @ 0x29cf(x), 0x29d6(x), 0x29e3(x), 0x29e9(x), 0x29f8(x)
|           0000:29f2     59             pop cx
|           0000:29f3     5b             pop bx
|           0000:29f4     58             pop ax
|           0000:29f5     c3             ret
|           ; CODE XREFS from fcn.0000290d @ 0x294f(x), 0x2956(x), 0x295e(x), 0x2965(x)
|           0000:29f6     5b             pop bx
|           0000:29f7     58             pop ax
\           0000:29f8     ebf8           jmp 0x29f2
            ; XREFS: CALL 0x0000227f  CALL 0x00002968  CALL 0x000029a8  CALL 0x000029c3  CALL 0x000029eb  CALL 0x00002a7d  
            ; XREFS: CALL 0x00005b75  
/ 26: fcn.000029fa (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(1:sp[0x6..0x6])
|           0000:29fa    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:2a00     e5b2           in ax, 0xb2
|           0000:2a02     13f6           adc si, si
|           0000:2a04     e201           loop 0x2a07
|           0000:2a06     c3             ret
|           0000:2a07     8a8f0081       mov cl, byte [bx - 0x7f00]
|           0000:2a0b     884e04         mov byte [var_4h], cl
|           0000:2a0e    .string "]ZY[X\xc3" ; len=6
            ; CALL XREFS from fcn.00002a73 @ 0x2ac1(x), 0x2af8(x)
/ 17: fcn.00002a14 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2a14     50             push ax                       ; arg1
|           0000:2a15     53             push bx                       ; arg3
|           0000:2a16     52             push dx                       ; arg2
|           0000:2a17     b213           mov dl, 0x13                  ; 19
|           0000:2a19     f6e2           mul dl                        ; arg1
|           0000:2a1b     01c3           add bx, ax                    ; arg3
|           0000:2a1d     888f0081       mov byte [bx - 0x7f00], cl    ; arg4
|           0000:2a21     5a             pop dx
|           0000:2a22     5b             pop bx
|           0000:2a23     58             pop ax
\           0000:2a24     c3             ret
            ; CALL XREF from fcn.00002858 @ 0x2862(x)
/ 78: fcn.00002a25 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2a25     50             push ax                       ; arg1
|           0000:2a26     53             push bx                       ; arg3
|           0000:2a27     51             push cx                       ; arg4
|           0000:2a28     89c1           mov cx, ax                    ; arg1
|           0000:2a2a     8bc3           mov ax, bx                    ; arg3
|           0000:2a2c     b30c           mov bl, 0xc                   ; 12
|           0000:2a2e     f6f3           div bl
|           0000:2a30     32e4           xor ah, ah
|           0000:2a32     48             dec ax
|           0000:2a33     8bd8           mov bx, ax
|           0000:2a35     89c8           mov ax, cx
|           0000:2a37     2d1000         sub ax, 0x10                  ; 16
|           0000:2a3a     d1e8           shr ax, 1
|           0000:2a3c     d1e8           shr ax, 1
|           0000:2a3e     d1e8           shr ax, 1
|           0000:2a40     d1e8           shr ax, 1
|           0000:2a42     d1e8           shr ax, 1
|           0000:2a44     803e8ad300     cmp byte [0xd38a], 0
|           0000:2a49     7403           je 0x2a4e
|           0000:2a4b     e82500         call fcn.00002a73
|           ; CODE XREF from fcn.00002a25 @ 0x2a49(x)
|           0000:2a4e     40             inc ax
|           0000:2a4f     803e8bd300     cmp byte [0xd38b], 0
|           0000:2a54     7403           je 0x2a59
|           0000:2a56     e81a00         call fcn.00002a73
|           ; CODE XREF from fcn.00002a25 @ 0x2a54(x)
|           0000:2a59     43             inc bx
|           0000:2a5a     803e8dd300     cmp byte [0xd38d], 0
|           0000:2a5f     7403           je 0x2a64
|           0000:2a61     e80f00         call fcn.00002a73
|           ; CODE XREF from fcn.00002a25 @ 0x2a5f(x)
|           0000:2a64     48             dec ax
|           0000:2a65     803e8cd300     cmp byte [0xd38c], 0
|           0000:2a6a     7403           je 0x2a6f
|           0000:2a6c     e80400         call fcn.00002a73
|           ; CODE XREF from fcn.00002a25 @ 0x2a6a(x)
|           0000:2a6f     59             pop cx
|           0000:2a70     5b             pop bx
|           0000:2a71     58             pop ax
\           0000:2a72     c3             ret
            ; CALL XREF from fcn.00002255 @ 0x2286(x)
            ; CALL XREFS from fcn.00002a25 @ 0x2a4b(x), 0x2a56(x), 0x2a61(x), 0x2a6c(x)
/ 152: fcn.00002a73 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0x2..0x4])
|           0000:2a73    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:2a79     e5e8           in ax, 0xe8
|           0000:2a7b     81f8e87a       cmp ax, 0x7ae8
|           0000:2a7f     ff5184         call word [bx + di - 0x7c]
|           0000:2a82     c9             leave
|           0000:2a83     747f           je str.Y_ZY_X
|           0000:2a85     80f91c         cmp cl, 0x1c                  ; 28
|           0000:2a88     747a           je str.Y_ZY_X
|           0000:2a8a     88c8           mov al, cl
|           0000:2a8c     bb890b         mov bx, 0xb89
|           0000:2a8f     d7             xlatb
|           0000:2a90     32e4           xor ah, ah
|           0000:2a92     010699d3       add word [0xd399], ax
|           0000:2a96     80f904         cmp cl, 4                     ; 4
|           0000:2a99     7454           je 0x2aef
|           0000:2a9b     80f906         cmp cl, 6                     ; 6
|           0000:2a9e     744f           je 0x2aef
|           0000:2aa0     80f914         cmp cl, 0x14                  ; 20
|           0000:2aa3     744a           je 0x2aef
|           0000:2aa5     80f915         cmp cl, 0x15                  ; 21
|           0000:2aa8     7445           je 0x2aef
|           0000:2aaa     80f916         cmp cl, 0x16                  ; 22
|           0000:2aad     7440           je 0x2aef
|           0000:2aaf     80f90a         cmp cl, 0xa                   ; 10
|           0000:2ab2     7205           jb 0x2ab9
|           0000:2ab4     80f90e         cmp cl, 0xe                   ; 14
|           0000:2ab7     7618           jbe 0x2ad1
|           ; CODE XREFS from fcn.00002a73 @ 0x2ab2(x), 0x2aed(x)
|           0000:2ab9     8b4608         mov ax, word [var_8h]
|           0000:2abc     8b5e06         mov bx, word [var_6h]
|           0000:2abf     32c9           xor cl, cl
|           0000:2ac1     e850ff         call fcn.00002a14
|           0000:2ac4     88c4           mov ah, al
|           0000:2ac6     8ac3           mov al, bl
|           0000:2ac8     e8f230         call fcn.00005bbd
|           0000:2acb     ff0e52d2       dec word [0xd252]
|           0000:2acf     eb33           jmp str.Y_ZY_X
|           ; CODE XREF from fcn.00002a73 @ 0x2ab7(x)
|           0000:2ad1     80e90a         sub cl, 0xa
|           0000:2ad4     b001           mov al, 1
|           0000:2ad6     d2e0           shl al, cl
|           0000:2ad8     080659d2       or byte [0xd259], al
|           0000:2adc     3a0662d2       cmp al, byte [0xd262]
|           0000:2ae0     7504           jne 0x2ae6
|           0000:2ae2     d02662d2       shl byte [0xd262], 1
|           ; CODE XREF from fcn.00002a73 @ 0x2ae0(x)
|           0000:2ae6     7405           je 0x2aed
|           0000:2ae8     c60663d200     mov byte [0xd263], 0
|           ; CODE XREF from fcn.00002a73 @ 0x2ae6(x)
|           0000:2aed     ebca           jmp 0x2ab9
|           ; CODE XREFS from fcn.00002a73 @ 0x2a99(x), 0x2a9e(x), 0x2aa3(x), 0x2aa8(x), 0x2aad(x)
|           0000:2aef     59             pop cx
|           0000:2af0     fec1           inc cl
|           0000:2af2     8b4608         mov ax, word [var_8h]
|           0000:2af5     8b5e06         mov bx, word [var_6h]
|           0000:2af8     e819ff         call fcn.00002a14
|           0000:2afb     88c4           mov ah, al
|           0000:2afd     8ac3           mov al, bl
|           0000:2aff     e8bb30         call fcn.00005bbd
|           0000:2b02     eb01           jmp 0x2b05
|           ;-- str.Y_ZY_X:
|           ; CODE XREFS from fcn.00002a73 @ 0x2a83(x), 0x2a88(x), 0x2acf(x)
|           0000:2b04    .string "Y]ZY[X\xc3" ; len=7
            ; XREFS: CALL 0x000026da  CALL 0x000026fd  CALL 0x00002757  CALL 0x000027ae  CALL 0x000027f9  CALL 0x00002810  
            ; XREFS: CALL 0x0000283a  CALL 0x00002847  
/ 62: fcn.00002b0b (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2b0b    .string "PSQRW\xbf" ; len=6                   ; arg1
|           0000:2b11     91             xchg cx, ax
|           0000:2b12     0ce8           or al, 0xe8                   ; 232
|           0000:2b14     c9             leave
|           0000:2b15     27             daa
|           0000:2b16     8a167cd3       mov dl, byte [0xd37c]
|           0000:2b1a     88d3           mov bl, dl
|           0000:2b1c     32ff           xor bh, bh
|           0000:2b1e     b104           mov cl, 4
|           0000:2b20     d3e3           shl bx, cl
|           0000:2b22     f68775c102     test byte [bx - 0x3e8b], 2
|           0000:2b27     751a           jne 0x2b43
|           0000:2b29     f79f71c1       neg word [bx - 0x3e8f]
|           0000:2b2d     8b876dc1       mov ax, word [bx - 0x3e93]
|           0000:2b31     25f8ff         and ax, 0xfff8
|           0000:2b34     f78771c1ffff   test word [bx - 0x3e8f], 0xffff
|           0000:2b3a     7803           js 0x2b3f
|           0000:2b3c     050800         add ax, 8
|           ; CODE XREF from fcn.00002b0b @ 0x2b3a(x)
|           0000:2b3f     89876dc1       mov word [bx - 0x3e93], ax
|           ; CODE XREF from fcn.00002b0b @ 0x2b27(x)
|           0000:2b43    .string "_ZY[X\xc3" ; len=6
            ; XREFS: CALL 0x000026dd  CALL 0x000026f1  CALL 0x00002746  CALL 0x000027bc  CALL 0x000027ef  CALL 0x0000281a  
            ; XREFS: CALL 0x00002831  CALL 0x00002850  
/ 67: fcn.00002b49 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2b49    .string "PSQRW\xbf" ; len=6                   ; arg1
|           0000:2b4f     91             xchg cx, ax
|           0000:2b50     0ce8           or al, 0xe8                   ; 232
|           0000:2b52     8b27           mov sp, word [bx]
|           0000:2b54     8a167cd3       mov dl, byte [0xd37c]
|           0000:2b58     88d3           mov bl, dl
|           0000:2b5a     32ff           xor bh, bh
|           0000:2b5c     b104           mov cl, 4
|           0000:2b5e     d3e3           shl bx, cl
|           0000:2b60     f68775c102     test byte [bx - 0x3e8b], 2
|           0000:2b65     751f           jne 0x2b86
|           0000:2b67     f79f73c1       neg word [bx - 0x3e8d]
|           0000:2b6b     8b876fc1       mov ax, word [bx - 0x3e91]
|           0000:2b6f     b206           mov dl, 6
|           0000:2b71     f6f2           div dl
|           0000:2b73     32e4           xor ah, ah
|           0000:2b75     f6e2           mul dl
|           0000:2b77     f78773c1ffff   test word [bx - 0x3e8d], 0xffff
|           0000:2b7d     7803           js 0x2b82
|           0000:2b7f     050600         add ax, 6
|           ; CODE XREF from fcn.00002b49 @ 0x2b7d(x)
|           0000:2b82     89876fc1       mov word [bx - 0x3e91], ax
|           ; CODE XREF from fcn.00002b49 @ 0x2b65(x)
|           0000:2b86    .string "_ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00002d3e @ 0x2d9f(x)
/ 96: fcn.00002b8c (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2b8c    .string "PSQRW\x88" ; len=6                   ; arg1
|           0000:2b92     d332           sal word [bp + si], cl
|           0000:2b94     ffb104d3       push word [bx + di - 0x2cfc]
|           0000:2b98     e381           jcxz 0x2b1b                   ; fcn.00002b0b+0x10
|           0000:2b9a     c3             ret
|           0000:2b9b     6d             insw word es:[di], dx
|           0000:2b9c     c18b073d10     ror word [bp + di + 0x3d07], 0x10
|           0000:2ba1     007312         add byte [bp + di + 0x12], dh
|           0000:2ba4     bf830c         mov di, 0xc83
|           0000:2ba7     e83527         call fcn.000052df
|           0000:2baa     b81000         mov ax, 0x10                  ; 16
|           0000:2bad     f6470808       test byte [bx + 8], 8
|           0000:2bb1    .string "G\b\bu\x03" ; len=5
|           0000:2bb3     f75f04         neg word [bx + 4]
|           ; CODE XREFS from fcn.00002b8c @ 0x2ba2(x), 0x2bb1(x)
|           0000:2bb6     3dc801         cmp ax, 0x1c8                 ; "ning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2bb9     7612           jbe 0x2bcd
|           0000:2bbb     bf830c         mov di, 0xc83
|           0000:2bbe     e81e27         call fcn.000052df
|           0000:2bc1     b8c801         mov ax, 0x1c8                 ; "ning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2bc4 ~   f6470808       test byte [bx + 8], 8
|           ;-- str.G_b_bu:
|           0000:2bc5    .string "G\b\bu\x03" ; len=5
|           0000:2bca     f75f04         neg word [bx + 4]
|           ; CODE XREFS from fcn.00002b8c @ 0x2bb9(x), 0x2bc8(x)
|           0000:2bcd     8907           mov word [bx], ax
|           0000:2bcf     8b4702         mov ax, word [bx + 2]
|           0000:2bd2     3d0c00         cmp ax, 0xc                   ; 12
|           0000:2bd5     730c           jae 0x2be3
|           0000:2bd7     bf8a0c         mov di, 0xc8a
|           0000:2bda     e80227         call fcn.000052df
|           0000:2bdd     b80c00         mov ax, 0xc                   ; 12
|           0000:2be0     f75f06         neg word [bx + 6]
|           ; CODE XREF from fcn.00002b8c @ 0x2bd5(x)
|           0000:2be3     894702         mov word [bx + 2], ax
|           0000:2be6    .string "_ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00002d3e @ 0x2daf(x)
/ 231: fcn.00002bec (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(1:sp[0x8..0x8])
|           0000:2bec    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:2bf4     e588           in ax, 0x88
|           0000:2bf6     d332           sal word [bp + si], cl
|           0000:2bf8     ffb104d3       push word [bx + di - 0x2cfc]
|           0000:2bfc     e381           jcxz 0x2b7f                   ; fcn.00002b49+0x36
|           0000:2bfe     c3             ret
|           0000:2bff     6d             insw word es:[di], dx
|           ; DATA XREF from str.Press_a_key_to_return_to_the_demo @ +0x55(r)
|           0000:2c00     c18b47023d     ror word [bp + di + 0x247], 0x3d
|           0000:2c05     43             inc bx
|           0000:2c06     017303         add word [bp + di + 3], si
|           0000:2c09     e9bf00         jmp 0x2ccb
|           ; CODE XREF from fcn.00002bec @ 0x2c07(x)
|           0000:2c0c     8b07           mov ax, word [bx]
|           0000:2c0e     8b1647d2       mov dx, word [0xd247]
|           0000:2c12     83ea07         sub dx, 7
|           0000:2c15     39d0           cmp ax, dx
|           0000:2c17     7303           jae 0x2c1c
|           0000:2c19     e9af00         jmp 0x2ccb
|           ; CODE XREF from fcn.00002bec @ 0x2c17(x)
|           0000:2c1c     83c207         add dx, 7
|           0000:2c1f     8a0e49d2       mov cl, byte [0xd249]
|           0000:2c23     32ed           xor ch, ch
|           0000:2c25     d1e1           shl cx, 1
|           0000:2c27     d1e1           shl cx, 1
|           0000:2c29     d1e1           shl cx, 1
|           0000:2c2b     01ca           add dx, cx
|           0000:2c2d     4a             dec dx
|           0000:2c2e     39d0           cmp ax, dx
|           0000:2c30     7603           jbe 0x2c35
|           0000:2c32     e99600         jmp 0x2ccb
|           ; CODE XREF from fcn.00002bec @ 0x2c30(x)
|           0000:2c35     806708fd       and byte [bx + 8], 0xfd       ; [0xfd:1]=255
|           0000:2c39     f60656d2ff     test byte [0xd256], 0xff
|           0000:2c3e     7409           je 0x2c49
|           0000:2c40     804f0802       or byte [bx + 8], 2
|           0000:2c44     c60656d200     mov byte [0xd256], 0
|           ; CODE XREF from fcn.00002bec @ 0x2c3e(x)
|           0000:2c49     bf7c0c         mov di, 0xc7c                 ; '|\f'
|           0000:2c4c     e89026         call fcn.000052df
|           0000:2c4f     c747024301     mov word [bx + 2], 0x143      ; [0x143:2]=0xd3a ; ":\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2c54     f75f06         neg word [bx + 6]
|           0000:2c57     8b07           mov ax, word [bx]
|           0000:2c59     2b0647d2       sub ax, word [0xd247]
|           0000:2c5d     050700         add ax, 7
|           0000:2c60     be7a0b         mov si, 0xb7a                 ; 'z\v'
|           0000:2c63     8a1649d2       mov dl, byte [0xd249]
|           0000:2c67     80ea04         sub dl, 4
|           0000:2c6a     d0ea           shr dl, 1
|           0000:2c6c     32f6           xor dh, dh
|           0000:2c6e     03f2           add si, dx
|           0000:2c70     d1e2           shl dx, 1
|           0000:2c72     d1e2           shl dx, 1
|           ; DATA XREF from str.or_maybe_four_things.__First__an_annoying_sound_effect_ @ +0x18(r)
|           0000:2c74     03f2           add si, dx
|           0000:2c76     3a04           cmp al, byte [si]
|           0000:2c78     7707           ja 0x2c81
|           0000:2c7a     c74704fdff     mov word [bx + 4], 0xfffd     ; [0xfffd:2]=0xffff
|           0000:2c7f     eb35           jmp 0x2cb6
|           ; CODE XREF from fcn.00002bec @ 0x2c78(x)
|           0000:2c81     3a4401         cmp al, byte [si + 1]
|           0000:2c84     7707           ja 0x2c8d
|           0000:2c86     c74704feff     mov word [bx + 4], 0xfffe     ; [0xfffe:2]=0xffff
|           0000:2c8b     eb29           jmp 0x2cb6
|           ; CODE XREF from fcn.00002bec @ 0x2c84(x)
|           0000:2c8d     3a4402         cmp al, byte [si + 2]
|           0000:2c90     7707           ja 0x2c99
|           0000:2c92     c74704ffff     mov word [bx + 4], 0xffff     ; [0xffff:2]=0xffff
|           0000:2c97     eb1d           jmp 0x2cb6
|           ; CODE XREF from fcn.00002bec @ 0x2c90(x)
|           0000:2c99     3a4403         cmp al, byte [si + 3]
|           0000:2c9c     7707           ja 0x2ca5
|           0000:2c9e     c747040100     mov word [bx + 4], 1
|           0000:2ca3     eb11           jmp 0x2cb6
|           ; CODE XREF from fcn.00002bec @ 0x2c9c(x)
|           0000:2ca5     3a4404         cmp al, byte [si + 4]
|           0000:2ca8     7707           ja 0x2cb1
|           0000:2caa     c747040200     mov word [bx + 4], 2
|           0000:2caf     eb05           jmp 0x2cb6
|           ; CODE XREF from fcn.00002bec @ 0x2ca8(x)
|           0000:2cb1     c747040300     mov word [bx + 4], 3
|           ; CODE XREFS from fcn.00002bec @ 0x2c7f(x), 0x2c8b(x), 0x2c97(x), 0x2ca3(x), 0x2caf(x)
|           0000:2cb6     f6064cd201     test byte [0xd24c], 1
|           0000:2cbb     7408           je 0x2cc5
|           0000:2cbd ~   8a4708         mov al, byte [bx + 8]
|           ;-- str.G_b_f_b:
|           0000:2cbe    .string "G\b\f\b\x88" ; len=5
|           0000:2cc3     47             inc di
|           0000:2cc4 ~   088a5606       or byte [bp + si + 0x656], cl
|           ; CODE XREF from fcn.00002bec @ 0x2cbb(x)
|           0000:2cc5     8a5606         mov dl, byte [var_6h]
|           0000:2cc8 ~   e8a50c         call fcn.00003970
|           ;-- str._f__ZY_X:
|           0000:2cca    .string "\f]_^ZY[X\xc3" ; len=9
|           ; CODE XREFS from fcn.00002bec @ 0x2c09(x), 0x2c19(x), 0x2c32(x)
|           0000:2ccb    .string "\f]_^ZY[X\xc3" ; len=9
            ;-- str.PSQW:
            ; CALL XREF from fcn.00002d3e @ 0x2da5(x)
/ 55: fcn.00002cd3 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2cd3    .string "PSQW\xf6" ; len=5                    ; arg1
|           0000:2cd8     06             push es
|           0000:2cd9     57             push di
|           0000:2cda     d2ff           sar bh, cl
|           0000:2cdc     7427           je 0x2d05
|           0000:2cde     88d3           mov bl, dl                    ; arg2
|           0000:2ce0     32ff           xor bh, bh
|           0000:2ce2     b104           mov cl, 4
|           0000:2ce4     d3e3           shl bx, cl
|           0000:2ce6     81c36dc1       add bx, 0xc16d
|           0000:2cea     8b4702         mov ax, word [bx + 2]
|           0000:2ced     3d4801         cmp ax, 0x148                 ; "     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2cf0     7613           jbe 0x2d05
|           0000:2cf2     c747024801     mov word [bx + 2], 0x148      ; [0x148:2]=0x2020 ; "     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2cf7     f75f06         neg word [bx + 6]
|           0000:2cfa     c60657d200     mov byte [0xd257], 0
|           0000:2cff     bfbe0c         mov di, 0xcbe
|           0000:2d02 ~   e8da25         call fcn.000052df
|           ;-- str.__Y_X:
|           0000:2d04    .string "%_Y[X\xc3" ; len=6
|           ; CODE XREFS from fcn.00002cd3 @ 0x2cdc(x), 0x2cf0(x)
|           0000:2d05    .string "%_Y[X\xc3" ; len=6
            ; CALL XREF from fcn.00002d3e @ 0x2db2(x)
/ 52: fcn.00002d0a (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:2d0a     50             push ax                       ; arg1
|           0000:2d0b     53             push bx                       ; arg3
|           0000:2d0c     52             push dx                       ; arg2
|           0000:2d0d     88d3           mov bl, dl                    ; arg2
|           0000:2d0f     32ff           xor bh, bh
|           0000:2d11     b104           mov cl, 4
|           0000:2d13     d3e3           shl bx, cl
|           0000:2d15     81c36dc1       add bx, 0xc16d
|           0000:2d19     804f0801       or byte [bx + 8], 1
|           0000:2d1d     806708fb       and byte [bx + 8], 0xfb       ; [0xfb:1]=255
|           0000:2d21     8b4702         mov ax, word [bx + 2]
|           0000:2d24     3d4301         cmp ax, 0x143                 ; ":\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2d27     7611           jbe 0x2d3a
|           0000:2d29     804f0804       or byte [bx + 8], 4
|           0000:2d2d     3d5101         cmp ax, 0x151                 ; "\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2d30     7608           jbe 0x2d3a
|           0000:2d32     806708fe       and byte [bx + 8], 0xfe       ; [0xfe:1]=255
|           0000:2d36     fe0e51d2       dec byte [0xd251]
|           ; CODE XREFS from fcn.00002d0a @ 0x2d27(x), 0x2d30(x)
|           0000:2d3a     5a             pop dx
|           0000:2d3b     5b             pop bx
|           0000:2d3c     58             pop ax
\           0000:2d3d     c3             ret
            ; CALL XREF from fcn.00002e09 @ 0x2e1a(x)
/ 126: fcn.00002d3e (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2d3e    .string "PSQRVW\x88" ; len=7                  ; arg1
|           0000:2d45     16             push ss
|           0000:2d46     7dd3           jge 0x2d1b                    ; fcn.00002d0a+0x11
|           0000:2d48     88d3           mov bl, dl
|           0000:2d4a     32ff           xor bh, bh
|           0000:2d4c     b104           mov cl, 4
|           0000:2d4e     d3e3           shl bx, cl
|           0000:2d50     89de           mov si, bx
|           0000:2d52     f68475c108     test byte [si - 0x3e8b], 8
|           0000:2d57     7536           jne 0x2d8f
|           0000:2d59     8b846dc1       mov ax, word [si - 0x3e93]
|           0000:2d5d     8b9c6fc1       mov bx, word [si - 0x3e91]
|           0000:2d61     038471c1       add ax, word [si - 0x3e8f]
|           0000:2d65     039c73c1       add bx, word [si - 0x3e8d]
|           0000:2d69     8a163cd2       mov dl, byte [0xd23c]
|           0000:2d6d     32f6           xor dh, dh
|           0000:2d6f     3b9476c1       cmp dx, word [si - fcn.00003e8a]
|           0000:2d73     7310           jae 0x2d85
|           0000:2d75     ba0100         mov dx, 1
|           0000:2d78     f78473c1ffff   test word [si - 0x3e8d], 0xffff
|           0000:2d7e     7903           jns 0x2d83
|           0000:2d80     baffff         mov dx, 0xffff
|           ; CODE XREF from fcn.00002d3e @ 0x2d7e(x)
|           0000:2d83     03da           add bx, dx
|           ; CODE XREF from fcn.00002d3e @ 0x2d73(x)
|           0000:2d85     89846dc1       mov word [si - 0x3e93], ax
|           0000:2d89     899c6fc1       mov word [si - 0x3e91], bx
|           0000:2d8d     eb0c           jmp 0x2d9b
|           ; CODE XREF from fcn.00002d3e @ 0x2d57(x)
|           0000:2d8f     8b846dc1       mov ax, word [si - 0x3e93]
|           0000:2d93     03064dd2       add ax, word [0xd24d]
|           0000:2d97     89846dc1       mov word [si - 0x3e93], ax
|           ; CODE XREF from fcn.00002d3e @ 0x2d8d(x)
|           0000:2d9b     8a167dd3       mov dl, byte [0xd37d]
|           0000:2d9f     e8eafd         call fcn.00002b8c
|           0000:2da2     e8eef8         call fcn.00002693
|           0000:2da5     e82bff         call fcn.00002cd3
|           0000:2da8     f68475c10c     test byte [si - 0x3e8b], 0xc
|           0000:2dad     7503           jne 0x2db2
|           0000:2daf     e83afe         call fcn.00002bec
|           ; CODE XREF from fcn.00002d3e @ 0x2dad(x)
|           0000:2db2     e855ff         call fcn.00002d0a
|           0000:2db5    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003658 @ 0x3682(x)
/ 77: fcn.00002dbc (int16_t arg1, int16_t arg2);
| `- args(ax, bx)
|           0000:2dbc     50             push ax                       ; arg1
|           0000:2dbd     53             push bx                       ; arg2
|           0000:2dbe ~   8b1e47d2       mov bx, word [0xd247]
|           ;-- str.G_:
|           0000:2dc0    .string "G\xd2\x80>+\xd4" ; len=6
|           0000:2dc6     01751b         add word [di + 0x1b], si
|           0000:2dc9     803e2ad401     cmp byte [0xd42a], 1
|           0000:2dce     742c           je 0x2dfc
|           0000:2dd0     a147d2         mov ax, word [0xd247]         ; [0xd247:2]=0xffff
|           0000:2dd3     050300         add ax, 3
|           0000:2dd6     3b064ad2       cmp ax, word [0xd24a]
|           0000:2dda     7603           jbe 0x2ddf
|           0000:2ddc     a14ad2         mov ax, word [0xd24a]         ; [0xd24a:2]=0xffff
|           ; CODE XREF from fcn.00002dbc @ 0x2dda(x)
|           0000:2ddf     a347d2         mov word [0xd247], ax         ; [0xd247:2]=0xffff
|           0000:2de2     eb18           jmp 0x2dfc
|           ; CODE XREF from fcn.00002dbc @ 0x2dc7(x)
|           0000:2de4     803e2ad401     cmp byte [0xd42a], 1
|           0000:2de9     7511           jne 0x2dfc
|           0000:2deb     a147d2         mov ax, word [0xd247]         ; [0xd247:2]=0xffff
|           0000:2dee     2d0300         sub ax, 3
|           0000:2df1     3d0f00         cmp ax, 0xf                   ; 15
|           0000:2df4     7703           ja 0x2df9
|           0000:2df6     b80f00         mov ax, 0xf                   ; 15
|           ; CODE XREF from fcn.00002dbc @ 0x2df4(x)
|           0000:2df9     a347d2         mov word [0xd247], ax         ; [0xd247:2]=0xffff
|           ; CODE XREFS from fcn.00002dbc @ 0x2dce(x), 0x2de2(x), 0x2de9(x)
|           0000:2dfc     2b1e47d2       sub bx, word [0xd247]
|           0000:2e00     f7db           neg bx
|           0000:2e02     891e4dd2       mov word [0xd24d], bx
|           0000:2e06     5b             pop bx
|           0000:2e07     58             pop ax
\           0000:2e08     c3             ret
            ; CALL XREF from fcn.00003658 @ 0x3685(x)
            ; CALL XREF from fcn.00003bbd @ 0x3be4(x)
/ 34: fcn.00002e09 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2e09     51             push cx                       ; arg4
|           0000:2e0a     52             push dx                       ; arg2
|           0000:2e0b     56             push si
|           0000:2e0c     b200           mov dl, 0
|           0000:2e0e     b91000         mov cx, 0x10                  ; 16
|           0000:2e11     be6dc1         mov si, 0xc16d
|           ; CODE XREF from fcn.00002e09 @ 0x2e22(x)
|           0000:2e14     f6440801       test byte [si + 8], 1
|           0000:2e18     7403           je 0x2e1d
|           0000:2e1a     e821ff         call fcn.00002d3e
|           ; CODE XREF from fcn.00002e09 @ 0x2e18(x)
|           0000:2e1d     fec2           inc dl
|           0000:2e1f     83c610         add si, 0x10                  ; 16
|           0000:2e22     e2f0           loop 0x2e14
|           0000:2e24     e80400         call fcn.00002e2b
|           0000:2e27     5e             pop si
|           0000:2e28     5a             pop dx
|           0000:2e29     59             pop cx
\           0000:2e2a     c3             ret
            ; CALL XREF from fcn.00002e09 @ 0x2e24(x)
/ 76: fcn.00002e2b (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:2e2b     50             push ax                       ; arg1
|           0000:2e2c     51             push cx                       ; arg2
|           0000:2e2d     57             push di
|           ; XREFS: DATA 0x00000162  DATA 0x000001d3  DATA 0x0000023e  DATA 0x0000043f  DATA 0x00000479  DATA 0x000004a5  
|           ; XREFS: DATA 0x000004c9  DATA 0x000004f4  DATA 0x0000083f  DATA 0x000008b9  
|           0000:2e2e     ff0e3dd2       dec word [0xd23d]
|           0000:2e32     753f           jne 0x2e73
|           0000:2e34     c7063dd20006   mov word [0xd23d], 0x600      ; [0x600:2]=0
|           0000:2e3a     bf6dc1         mov di, 0xc16d
|           0000:2e3d     b91000         mov cx, 0x10                  ; 16
|           ; CODE XREF from fcn.00002e2b @ 0x2e71(x)
|           0000:2e40     f6450801       test byte [di + 8], 1
|           0000:2e44     7428           je 0x2e6e
|           0000:2e46     837d0607       cmp word [di + 6], 7
|           0000:2e4a     7422           je 0x2e6e
|           0000:2e4c     837d06f9       cmp word [di + 6], 0xfff9
|           0000:2e50     741c           je 0x2e6e
|           0000:2e52     ff4509         inc word [di + 9]
|           0000:2e55     837d0903       cmp word [di + 9], 3
|           0000:2e59     7513           jne 0x2e6e
|           0000:2e5b     c745090000     mov word [di + 9], 0
|           0000:2e60     8b4506         mov ax, word [di + 6]
|           0000:2e63     85c0           test ax, ax
|           0000:2e65     7803           js 0x2e6a
|           0000:2e67     40             inc ax
|           ; DATA XREF from str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE @ +0x13(r)
|           0000:2e68     eb01           jmp 0x2e6b
|           ; CODE XREF from fcn.00002e2b @ 0x2e65(x)
|           0000:2e6a     48             dec ax
|           ; CODE XREF from fcn.00002e2b @ 0x2e68(x)
|           0000:2e6b     894506         mov word [di + 6], ax
|           ; CODE XREFS from fcn.00002e2b @ 0x2e44(x), 0x2e4a(x), 0x2e50(x), 0x2e59(x)
|           0000:2e6e     83c710         add di, 0x10                  ; 16
|           0000:2e71     e2cd           loop 0x2e40
|           ; DATA XREF from str.formed_bat_with_which_you_must_hit_the_ball_at_the_bricks. @ +0x35(r)
|           ; DATA XREF from str.or_maybe_four_things.__First__an_annoying_sound_effect_ @ +0x10(r)
|           ; DATA XREF from str.This_sort_only_gives_you_a_paltry_5_points. @ +0x26(r)
|           ; CODE XREF from fcn.00002e2b @ 0x2e32(x)
|           0000:2e73     5f             pop di
|           ; DATA XREF from str.move_left_and_right.__The_spacebar_is_used_to_activate @ +0x10(r)
|           0000:2e74     59             pop cx
|           0000:2e75     58             pop ax
\           0000:2e76     c3             ret
            ; CALL XREF from fcn.00003933 @ 0x3967(x)
/ 96: fcn.00002e77 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2e77    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:2e7d     e583           in ax, 0x83
|           0000:2e7f     c50a           lds cx, [bp + si]
|           0000:2e81     8b5e0e         mov bx, word [bp + 0xe]
|           0000:2e84     b104           mov cl, 4
|           0000:2e86     d3e3           shl bx, cl
|           0000:2e88     81c36dc1       add bx, 0xc16d
|           0000:2e8c     8b4602         mov ax, word [bp + 2]
|           0000:2e8f     8907           mov word [bx], ax
|           0000:2e91     8b4604         mov ax, word [bp + 4]
|           0000:2e94     894702         mov word [bx + 2], ax
|           0000:2e97     8b4606         mov ax, word [bp + 6]
|           0000:2e9a     894704         mov word [bx + 4], ax
|           0000:2e9d     8b4608         mov ax, word [bp + 8]
|           0000:2ea0     894706         mov word [bx + 6], ax
|           0000:2ea3     8b460a         mov ax, word [bp + 0xa]
|           0000:2ea6     894709         mov word [bx + 9], ax
|           0000:2ea9     8b460c         mov ax, word [bp + 0xc]
|           0000:2eac     884708         mov byte [bx + 8], al
|           0000:2eaf     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2eb2     b005           mov al, 5
|           0000:2eb4     ee             out dx, al
|           0000:2eb5     42             inc dx
|           0000:2eb6     b011           mov al, 0x11                  ; 17
|           0000:2eb8     ee             out dx, al
|           0000:2eb9     8b4602         mov ax, word [bp + 2]
|           0000:2ebc     8b5e04         mov bx, word [bp + 4]
|           0000:2ebf     8a560e         mov dl, byte [bp + 0xe]
|           0000:2ec2     e8f025         call fcn.000054b5
|           0000:2ec5     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:2ec8     b005           mov al, 5
|           0000:2eca     ee             out dx, al
|           0000:2ecb     42             inc dx
|           0000:2ecc     b010           mov al, 0x10                  ; 16
|           0000:2ece     ee             out dx, al
|           0000:2ecf    .string "]ZY[X\xc2" ; len=6
|           0000:2ed5     0e             push cs
|           0000:2ed6 ~   005053         add byte [bx + si + 0x53], dl
            ; CALL XREF from fcn.00003158 @ 0x31aa(x)
            ; CALL XREFS from fcn.000031b4 @ 0x3206(x), 0x320c(x)
/ 483: fcn.00002ed7 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:2ed7    .string "PSQRVW2\xf6" ; len=8                 ; arg1
|           0000:2edf     89d6           mov si, dx
|           0000:2ee1     d1e6           shl si, 1
|           0000:2ee3     d1e6           shl si, 1
|           0000:2ee5     d1e6           shl si, 1
|           0000:2ee7     d1e6           shl si, 1
|           0000:2ee9     81c66dc1       add si, 0xc16d
|           0000:2eed     8b04           mov ax, word [si]
|           0000:2eef     050800         add ax, 8
|           0000:2ef2     3b05           cmp ax, word [di]
|           0000:2ef4     7303           jae 0x2ef9
|           0000:2ef6     e9ba01         jmp 0x30b3
|           ; CODE XREF from fcn.00002ed7 @ 0x2ef4(x)
|           0000:2ef9     2d0800         sub ax, 8
|           0000:2efc     3b4504         cmp ax, word [di + 4]
|           0000:2eff     7603           jbe 0x2f04
|           0000:2f01     e9af01         jmp 0x30b3
|           ; CODE XREF from fcn.00002ed7 @ 0x2eff(x)
|           0000:2f04     8b5c02         mov bx, word [si + 2]
|           0000:2f07     83c306         add bx, 6
|           0000:2f0a     3b5d02         cmp bx, word [di + 2]
|           0000:2f0d     7303           jae 0x2f12
|           0000:2f0f     e9a101         jmp 0x30b3
|           ; CODE XREF from fcn.00002ed7 @ 0x2f0d(x)
|           0000:2f12     83eb06         sub bx, 6
|           0000:2f15     3b5d06         cmp bx, word [di + 6]
|           0000:2f18     7603           jbe 0x2f1d
|           0000:2f1a     e99601         jmp 0x30b3
|           ; CODE XREF from fcn.00002ed7 @ 0x2f18(x)
|           0000:2f1d     c6067ed300     mov byte [0xd37e], 0
|           0000:2f22     c6067fd300     mov byte [0xd37f], 0
|           0000:2f27     3b05           cmp ax, word [di]
|           0000:2f29     7210           jb 0x2f3b
|           0000:2f2b     fe067ed3       inc byte [0xd37e]
|           0000:2f2f     050700         add ax, 7
|           0000:2f32     3b4504         cmp ax, word [di + 4]
|           0000:2f35     7204           jb 0x2f3b
|           0000:2f37     fe067ed3       inc byte [0xd37e]
|           ; CODE XREFS from fcn.00002ed7 @ 0x2f29(x), 0x2f35(x)
|           0000:2f3b     3b5d02         cmp bx, word [di + 2]
|           0000:2f3e     7210           jb 0x2f50
|           0000:2f40     fe067fd3       inc byte [0xd37f]
|           0000:2f44     83c305         add bx, 5
|           0000:2f47     3b5d06         cmp bx, word [di + 6]
|           0000:2f4a     7204           jb 0x2f50
|           0000:2f4c     fe067fd3       inc byte [0xd37f]
|           ; CODE XREFS from fcn.00002ed7 @ 0x2f3e(x), 0x2f4a(x)
|           0000:2f50     803e7ed301     cmp byte [0xd37e], 1
|           0000:2f55     7503           jne 0x2f5a
|           0000:2f57     e91a01         jmp 0x3074
|           ; CODE XREF from fcn.00002ed7 @ 0x2f55(x)
|           0000:2f5a     803e7fd301     cmp byte [0xd37f], 1
|           0000:2f5f     7503           jne 0x2f64
|           0000:2f61     e93101         jmp 0x3095
|           ; CODE XREF from fcn.00002ed7 @ 0x2f5f(x)
|           0000:2f64     c60688d300     mov byte [0xd388], 0
|           0000:2f69     f6067ed3ff     test byte [0xd37e], 0xff
|           0000:2f6e     7505           jne 0x2f75
|           0000:2f70     800688d302     add byte [0xd388], 2
|           ; CODE XREF from fcn.00002ed7 @ 0x2f6e(x)
|           0000:2f75     f6067fd3ff     test byte [0xd37f], 0xff
|           0000:2f7a     7504           jne 0x2f80
|           0000:2f7c     fe0688d3       inc byte [0xd388]
|           ; CODE XREF from fcn.00002ed7 @ 0x2f7a(x)
|           0000:2f80     c60689d300     mov byte [0xd389], 0
|           0000:2f85     f74404ffff     test word [si + 4], 0xffff
|           0000:2f8a     7905           jns 0x2f91
|           0000:2f8c     800689d302     add byte [0xd389], 2
|           ; CODE XREF from fcn.00002ed7 @ 0x2f8a(x)
|           0000:2f91     f74406ffff     test word [si + 6], 0xffff
|           0000:2f96     7904           jns 0x2f9c
|           0000:2f98     fe0689d3       inc byte [0xd389]
|           ; CODE XREF from fcn.00002ed7 @ 0x2f96(x)
|           0000:2f9c     a088d3         mov al, byte [0xd388]         ; [0xd388:1]=255
|           0000:2f9f     d0e0           shl al, 1
|           0000:2fa1     d0e0           shl al, 1
|           0000:2fa3     020689d3       add al, byte [0xd389]
|           0000:2fa7     bb5a0b         mov bx, 0xb5a                 ; 'Z\v'
|           0000:2faa     d7             xlatb
|           0000:2fab     3c01           cmp al, 1                     ; 1
|           0000:2fad     7503           jne 0x2fb2
|           0000:2faf     e9e300         jmp 0x3095
|           ; CODE XREF from fcn.00002ed7 @ 0x2fad(x)
|           0000:2fb2     3c02           cmp al, 2                     ; 2
|           0000:2fb4     7503           jne 0x2fb9
|           0000:2fb6     e9bb00         jmp 0x3074
|           ; CODE XREF from fcn.00002ed7 @ 0x2fb4(x)
|           0000:2fb9     8a0e88d3       mov cl, byte [0xd388]
|           0000:2fbd     80f900         cmp cl, 0
|           0000:2fc0     7529           jne 0x2feb
|           0000:2fc2     8b04           mov ax, word [si]
|           0000:2fc4     2b4504         sub ax, word [di + 4]
|           0000:2fc7     050700         add ax, 7
|           0000:2fca     8b5c02         mov bx, word [si + 2]
|           0000:2fcd     2b5d06         sub bx, word [di + 6]
|           0000:2fd0     83c305         add bx, 5
|           0000:2fd3     80fb02         cmp bl, 2                     ; 2
|           0000:2fd6     7202           jb 0x2fda
|           0000:2fd8     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x2fd6(x)
|           0000:2fda     80fb05         cmp bl, 5                     ; 5
|           0000:2fdd     7202           jb 0x2fe1
|           0000:2fdf     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x2fdd(x)
|           0000:2fe1     38d8           cmp al, bl
|           0000:2fe3     7303           jae 0x2fe8
|           0000:2fe5     e98c00         jmp 0x3074
|           ; CODE XREF from fcn.00002ed7 @ 0x2fe3(x)
|           0000:2fe8     e9aa00         jmp 0x3095
|           ; CODE XREF from fcn.00002ed7 @ 0x2fc0(x)
|           0000:2feb     80f901         cmp cl, 1                     ; 1
|           0000:2fee     752d           jne 0x301d
|           0000:2ff0     8b04           mov ax, word [si]
|           0000:2ff2     2b4504         sub ax, word [di + 4]
|           0000:2ff5     050700         add ax, 7
|           0000:2ff8     8b5c02         mov bx, word [si + 2]
|           0000:2ffb     2b5d02         sub bx, word [di + 2]
|           0000:2ffe     83c305         add bx, 5
|           0000:3001     80fb02         cmp bl, 2                     ; 2
|           0000:3004     7202           jb 0x3008
|           0000:3006     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x3004(x)
|           0000:3008     80fb05         cmp bl, 5                     ; 5
|           0000:300b     7202           jb 0x300f
|           0000:300d     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x300b(x)
|           0000:300f     2c07           sub al, 7
|           0000:3011     f6d8           neg al
|           0000:3013     38d8           cmp al, bl
|           0000:3015     7703           ja 0x301a
|           0000:3017     e97b00         jmp 0x3095
|           ; CODE XREF from fcn.00002ed7 @ 0x3015(x)
|           0000:301a     e95700         jmp 0x3074
|           ; CODE XREF from fcn.00002ed7 @ 0x2fee(x)
|           0000:301d     80f902         cmp cl, 2                     ; 2
|           0000:3020     752c           jne 0x304e
|           0000:3022     8b04           mov ax, word [si]
|           0000:3024     2b05           sub ax, word [di]
|           0000:3026     050700         add ax, 7
|           0000:3029     8b5c02         mov bx, word [si + 2]
|           0000:302c     2b5d06         sub bx, word [di + 6]
|           0000:302f     83c305         add bx, 5
|           0000:3032     80fb02         cmp bl, 2                     ; 2
|           0000:3035     7202           jb 0x3039
|           0000:3037     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x3035(x)
|           0000:3039     80fb05         cmp bl, 5                     ; 5
|           0000:303c     7202           jb 0x3040
|           0000:303e     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x303c(x)
|           0000:3040     2c07           sub al, 7
|           0000:3042     f6d8           neg al
|           0000:3044     38d8           cmp al, bl
|           0000:3046     7703           ja 0x304b
|           0000:3048     e92900         jmp 0x3074
|           ; CODE XREF from fcn.00002ed7 @ 0x3046(x)
|           0000:304b     e94700         jmp 0x3095
|           ; CODE XREF from fcn.00002ed7 @ 0x3020(x)
|           0000:304e     8b04           mov ax, word [si]
|           0000:3050     2b05           sub ax, word [di]
|           0000:3052     050700         add ax, 7
|           0000:3055     8b5c02         mov bx, word [si + 2]
|           0000:3058     2b5d02         sub bx, word [di + 2]
|           0000:305b     83c305         add bx, 5
|           0000:305e     80fb02         cmp bl, 2                     ; 2
|           0000:3061     7202           jb 0x3065
|           0000:3063     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x3061(x)
|           0000:3065     80fb05         cmp bl, 5                     ; 5
|           0000:3068     7202           jb 0x306c
|           0000:306a     fec3           inc bl
|           ; CODE XREF from fcn.00002ed7 @ 0x3068(x)
|           0000:306c     38d8           cmp al, bl
|           0000:306e     7302           jae 0x3072
|           0000:3070     eb23           jmp 0x3095
|           ; CODE XREF from fcn.00002ed7 @ 0x306e(x)
|           0000:3072     eb00           jmp 0x3074
|           ; XREFS: CODE 0x00002f57  CODE 0x00002fb6  CODE 0x00002fe5  CODE 0x0000301a  CODE 0x00003048  CODE 0x00003072  
|           0000:3074     803e7fd300     cmp byte [0xd37f], 0
|           0000:3079     750e           jne 0x3089
|           0000:307b     8b4502         mov ax, word [di + 2]
|           0000:307e     2d0600         sub ax, 6
|           0000:3081     894402         mov word [si + 2], ax
|           0000:3084     f75c06         neg word [si + 6]
|           0000:3087     eb2a           jmp 0x30b3
|           ; CODE XREF from fcn.00002ed7 @ 0x3079(x)
|           0000:3089     8b4506         mov ax, word [di + 6]
|           0000:308c     40             inc ax
|           0000:308d     894402         mov word [si + 2], ax
|           0000:3090     f75c06         neg word [si + 6]
|           0000:3093     eb1e           jmp 0x30b3
|           ; XREFS: CODE 0x00002f61  CODE 0x00002faf  CODE 0x00002fe8  CODE 0x00003017  CODE 0x0000304b  CODE 0x00003070  
|           0000:3095     803e7ed300     cmp byte [0xd37e], 0
|           0000:309a     750c           jne 0x30a8
|           0000:309c     8b05           mov ax, word [di]
|           0000:309e     2d0800         sub ax, 8
|           0000:30a1     8904           mov word [si], ax
|           0000:30a3     f75c04         neg word [si + 4]
|           0000:30a6     eb0b           jmp 0x30b3
|           ; CODE XREF from fcn.00002ed7 @ 0x309a(x)
|           0000:30a8     8b4504         mov ax, word [di + 4]
|           0000:30ab     40             inc ax
|           0000:30ac     8904           mov word [si], ax
|           0000:30ae     f75c04         neg word [si + 4]
|           0000:30b1     eb00           jmp 0x30b3
|           ; XREFS: CODE 0x00002ef6  CODE 0x00002f01  CODE 0x00002f0f  CODE 0x00002f1a  CODE 0x00003087  CODE 0x00003093  
|           ; XREFS: CODE 0x000030a6  CODE 0x000030b1  
|           0000:30b3    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003158 @ 0x31a4(x)
/ 79: fcn.000030ba (int16_t arg1);
| `- args(dx)
|           0000:30ba     52             push dx                       ; arg1
|           0000:30bb     56             push si
|           0000:30bc     32f6           xor dh, dh
|           0000:30be     89d6           mov si, dx                    ; arg1
|           0000:30c0     d1e6           shl si, 1
|           0000:30c2     d1e6           shl si, 1
|           0000:30c4     d1e6           shl si, 1
|           0000:30c6     d1e6           shl si, 1
|           0000:30c8     81c66dc1       add si, 0xc16d
|           0000:30cc     833c10         cmp word [si], 0x10
|           0000:30cf     7309           jae 0x30da
|           0000:30d1     c7041000       mov word [si], 0x10           ; [0x10:2]=0xffff ; 16
|           0000:30d5     f75c04         neg word [si + 4]
|           0000:30d8     eb0d           jmp 0x30e7
|           ; CODE XREF from fcn.000030ba @ 0x30cf(x)
|           0000:30da     813c6702       cmp word [si], 0x267
|           0000:30de     7607           jbe 0x30e7
|           0000:30e0     c7046702       mov word [si], 0x267          ; [0x267:2]=0x6c61 ; "alled - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:30e4     f75c04         neg word [si + 4]
|           ; CODE XREFS from fcn.000030ba @ 0x30d8(x), 0x30de(x)
|           0000:30e7     837c020c       cmp word [si + 2], 0xc
|           0000:30eb     730a           jae 0x30f7
|           0000:30ed     c744020c00     mov word [si + 2], 0xc        ; [0xc:2]=0xffff ; 12
|           0000:30f2     f75c06         neg word [si + 6]
|           0000:30f5     eb0f           jmp 0x3106
|           ; CODE XREF from fcn.000030ba @ 0x30eb(x)
|           0000:30f7     817c021001     cmp word [si + 2], 0x110
|           0000:30fc     7608           jbe 0x3106
|           0000:30fe     c744021001     mov word [si + 2], 0x110      ; [0x110:2]=0xff00
|           0000:3103     f75c06         neg word [si + 6]
|           ; CODE XREFS from fcn.000030ba @ 0x30f5(x), 0x30fc(x)
|           0000:3106     5e             pop si
|           0000:3107     5a             pop dx
\           0000:3108     c3             ret
            ; CALL XREF from fcn.000031b4 @ 0x3200(x)
/ 79: fcn.00003109 (int16_t arg1);
| `- args(dx)
|           0000:3109     52             push dx                       ; arg1
|           0000:310a     56             push si
|           0000:310b     32f6           xor dh, dh
|           0000:310d     89d6           mov si, dx                    ; arg1
|           0000:310f     d1e6           shl si, 1
|           0000:3111     d1e6           shl si, 1
|           0000:3113     d1e6           shl si, 1
|           0000:3115     d1e6           shl si, 1
|           0000:3117     81c66dc1       add si, 0xc16d
|           0000:311b     833c10         cmp word [si], 0x10
|           0000:311e     7309           jae 0x3129
|           0000:3120     c7041000       mov word [si], 0x10           ; [0x10:2]=0xffff ; 16
|           0000:3124     f75c04         neg word [si + 4]
|           0000:3127     eb0d           jmp 0x3136
|           ; CODE XREF from fcn.00003109 @ 0x311e(x)
|           0000:3129     813c6702       cmp word [si], 0x267
|           0000:312d     7607           jbe 0x3136
|           0000:312f     c7046702       mov word [si], 0x267          ; [0x267:2]=0x6c61 ; "alled - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3133     f75c04         neg word [si + 4]
|           ; CODE XREFS from fcn.00003109 @ 0x3127(x), 0x312d(x)
|           0000:3136     837c020c       cmp word [si + 2], 0xc
|           0000:313a     730a           jae 0x3146
|           0000:313c     c744020c00     mov word [si + 2], 0xc        ; [0xc:2]=0xffff ; 12
|           0000:3141     f75c06         neg word [si + 6]
|           0000:3144     eb0f           jmp 0x3155
|           ; DATA XREF from str.___Level_xx @ +0x30(r)
|           ; DATA XREF from str.information @ +0x15(r)
|           ; CODE XREF from fcn.00003109 @ 0x313a(x)
|           0000:3146     817c024c01     cmp word [si + 2], 0x14c
|           0000:314b     7608           jbe 0x3155
|           0000:314d     c744024c01     mov word [si + 2], 0x14c      ; [0x14c:2]=0x2420 ; " $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3152     f75c06         neg word [si + 6]
|           ; CODE XREFS from fcn.00003109 @ 0x3144(x), 0x314b(x)
|           0000:3155     5e             pop si
|           0000:3156     5a             pop dx
\           0000:3157     c3             ret
            ; CALL XREF from fcn.00003216 @ 0x3227(x)
/ 92: fcn.00003158 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3158    .string "PSQRVW\x88" ; len=7                  ; arg1
|           0000:315f     16             push ss
|           0000:3160     7dd3           jge 0x3135                    ; fcn.00003109+0x2c
|           0000:3162     88d3           mov bl, dl
|           0000:3164     32ff           xor bh, bh
|           0000:3166     b104           mov cl, 4
|           0000:3168     d3e3           shl bx, cl
|           0000:316a     89de           mov si, bx
|           0000:316c     8b846dc1       mov ax, word [si - 0x3e93]
|           0000:3170     8b9c6fc1       mov bx, word [si - 0x3e91]
|           0000:3174     038471c1       add ax, word [si - 0x3e8f]
|           0000:3178     039c73c1       add bx, word [si - 0x3e8d]
|           0000:317c     8a163cd2       mov dl, byte [0xd23c]
|           0000:3180     32f6           xor dh, dh
|           0000:3182     3b9476c1       cmp dx, word [si - fcn.00003e8a]
|           0000:3186     7310           jae 0x3198
|           0000:3188     ba0100         mov dx, 1
|           0000:318b     f78473c1ffff   test word [si - 0x3e8d], 0xffff
|           0000:3191     7903           jns 0x3196
|           0000:3193     baffff         mov dx, 0xffff
|           ; CODE XREF from fcn.00003158 @ 0x3191(x)
|           0000:3196     03da           add bx, dx
|           ; CODE XREF from fcn.00003158 @ 0x3186(x)
|           0000:3198     89846dc1       mov word [si - 0x3e93], ax
|           0000:319c     899c6fc1       mov word [si - 0x3e91], bx
|           0000:31a0     8a167dd3       mov dl, byte [0xd37d]
|           0000:31a4     e813ff         call fcn.000030ba
|           0000:31a7     bf4805         mov di, 0x548
|           0000:31aa     e82afd         call fcn.00002ed7
|           0000:31ad    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003235 @ 0x3246(x)
/ 98: fcn.000031b4 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:31b4    .string "PSQRVW\x88" ; len=7                  ; arg1
|           0000:31bb     16             push ss
|           0000:31bc     7dd3           jge 0x3191                    ; fcn.00003158+0x39
|           0000:31be     88d3           mov bl, dl
|           0000:31c0     32ff           xor bh, bh
|           0000:31c2     b104           mov cl, 4
|           0000:31c4     d3e3           shl bx, cl
|           0000:31c6     89de           mov si, bx
|           0000:31c8     8b846dc1       mov ax, word [si - 0x3e93]
|           0000:31cc     8b9c6fc1       mov bx, word [si - 0x3e91]
|           0000:31d0     038471c1       add ax, word [si - 0x3e8f]
|           0000:31d4     039c73c1       add bx, word [si - 0x3e8d]
|           0000:31d8     8a163cd2       mov dl, byte [0xd23c]
|           0000:31dc     32f6           xor dh, dh
|           0000:31de     3b9476c1       cmp dx, word [si - fcn.00003e8a]
|           0000:31e2     7310           jae 0x31f4
|           0000:31e4     ba0100         mov dx, 1
|           0000:31e7     f78473c1ffff   test word [si - 0x3e8d], 0xffff
|           0000:31ed     7903           jns 0x31f2
|           0000:31ef     baffff         mov dx, 0xffff
|           ; CODE XREF from fcn.000031b4 @ 0x31ed(x)
|           0000:31f2     03da           add bx, dx
|           ; CODE XREF from fcn.000031b4 @ 0x31e2(x)
|           0000:31f4     89846dc1       mov word [si - 0x3e93], ax
|           0000:31f8     899c6fc1       mov word [si - 0x3e91], bx
|           0000:31fc     8a167dd3       mov dl, byte [0xd37d]
|           ; DATA XREF from str.Press_a_key_to_return_to_the_demo @ +0x59(r)
|           ; DATA XREF from str.The_ones_with_pretty_pictures_on_are_worth @ +0x2c(r)
|           0000:3200     e806ff         call fcn.00003109
|           0000:3203     bf1307         mov di, 0x713
|           0000:3206     e8cefc         call fcn.00002ed7
|           0000:3209     bf1b07         mov di, 0x71b
|           0000:320c     e8c8fc         call fcn.00002ed7
|           0000:320f    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.0000648d @ 0x64a0(x)
/ 31: fcn.00003216 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3216     51             push cx                       ; arg4
|           0000:3217     52             push dx                       ; arg2
|           0000:3218     56             push si
|           0000:3219     b200           mov dl, 0
|           0000:321b     b91000         mov cx, 0x10                  ; 16
|           0000:321e     be6dc1         mov si, 0xc16d
|           ; CODE XREF from fcn.00003216 @ 0x322f(x)
|           0000:3221     f6440801       test byte [si + 8], 1
|           0000:3225     7403           je 0x322a
|           0000:3227     e82eff         call fcn.00003158
|           ; CODE XREF from fcn.00003216 @ 0x3225(x)
|           0000:322a     fec2           inc dl
|           0000:322c     83c610         add si, 0x10                  ; 16
|           0000:322f     e2f0           loop 0x3221
|           0000:3231     5e             pop si
|           ; DATA XREF from str._n_nR_n @ +0x1f(r)
|           0000:3232     5a             pop dx
|           0000:3233     59             pop cx
\           0000:3234     c3             ret
            ; CALL XREF from fcn.00004b19 @ 0x4b2c(x)
/ 31: fcn.00003235 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3235     51             push cx                       ; arg4
|           0000:3236     52             push dx                       ; arg2
|           0000:3237     56             push si
|           0000:3238     b200           mov dl, 0
|           0000:323a     b91000         mov cx, 0x10                  ; 16
|           0000:323d     be6dc1         mov si, 0xc16d
|           ; CODE XREF from fcn.00003235 @ 0x324e(x)
|           0000:3240     f6440801       test byte [si + 8], 1
|           0000:3244     7403           je 0x3249
|           0000:3246     e86bff         call fcn.000031b4
|           ; CODE XREF from fcn.00003235 @ 0x3244(x)
|           0000:3249     fec2           inc dl
|           0000:324b     83c610         add si, 0x10                  ; 16
|           0000:324e     e2f0           loop 0x3240
|           0000:3250     5e             pop si
|           0000:3251     5a             pop dx
|           0000:3252     59             pop cx
\           0000:3253     c3             ret
            0000:3254     3100           xor word [bx + si], ax
            0000:3256     e27e           loop 0x32d6                   ; fcn.000032a2+0x34
            0000:3258     3b27           cmp sp, word [bx]
|           ; CODE XREF from fcn.000032a2 @ 0x32c3(x)
|           ; CODE XREF from fcn.00003368 @ 0x3389(x)
|           ; CODE XREF from fcn.00003475 @ 0x34a0(x)
|           0000:325a     e8be32         call fcn.0000651b
|           0000:325d     b409           mov ah, 9
|           0000:325f     ba2b01         mov dx, str.Corrupt_or_missing_file_:_r_n_r_n_______r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_creating_high_score_table_file._r_n_r_nCheck_for_full_disk_or_write_protect._r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_writing_high_score_table_file._r_n_r_nCheck_for_write_protect_on_disk._r_n_r_nReturning_to_DOS_..._r_n_r_n__r_n_r_nNot_enough_video_memory_installed___Paranoid_requires_256Kb._r_n_r_n__r_n_r_nSorry__Paranoid_requires_colour_EGA___VGA_to_run._r_n_r_n_G ; 0x12b ; "Corrupt or missing file : |           ;                                                         |           ;      $                                                  |           ;                                                         |           ; Returning to DOS ...                                    |           ;                                                         |           ; $Fatal error creating high score table file.            |           ;                                                         |           ; Check for full disk or write protect.                   |           ;                                                         |           ; Returning to DOS ...                                    |           ;                                                         |           ; $Fatal error writing high score table file.             |           ;                                                         |           ; Check for write protect on disk."
|           0000:3262     cd21           int 0x21
|           0000:3264     ba0e80         mov dx, 0x800e
|           0000:3267     cd21           int 0x21
|           0000:3269     ba4e01         mov dx, 0x14e                 ; "\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:326c     cd21           int 0x21
|           0000:326e     b8014c         mov ax, 0x4c01
|           0000:3271     cd21           int 0x21
|           ; CODE XREF from int.0000352f @ 0x3552(x)
|           0000:3273     e8a532         call fcn.0000651b
|           0000:3276     b409           mov ah, 9
|           0000:3278     ba6b01         mov dx, 0x16b                 ; "Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:327b     cd21           int 0x21
|           0000:327d     b8014c         mov ax, 0x4c01
|           0000:3280     cd21           int 0x21
|           ; CODE XREF from fcn.000034d7 @ 0x3525(x)
|           0000:3282     e89632         call fcn.0000651b
|           0000:3285     b409           mov ah, 9
|           0000:3287     badc01         mov dx, 0x1dc                 ; "Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:328a     cd21           int 0x21
|           0000:328c     b8014c         mov ax, 0x4c01
|           0000:328f     cd21           int 0x21
|           ; DATA XREF from fcn.00003295 @ 0x329a(r)
|           0000:3291     fb             sti
|           0000:3292     b003           mov al, 3
|           0000:3294     cf             iret
            ; CALL XREF from fcn.00000100 @ 0x511a(x)
/ 13: fcn.00003295 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:3295     50             push ax                       ; arg1
|           0000:3296     52             push dx                       ; arg2
|           0000:3297     b82425         mov ax, 0x2524                ; '$%' ; "I\u04a1J\xd2\x05\x10"
|           0000:329a     ba9132         mov dx, 0x3291
|           0000:329d     cd21           int 0x21
|           0000:329f     5a             pop dx
|           0000:32a0     58             pop ax
\           0000:32a1     c3             ret
            ; CALL XREF from fcn.00000100 @ 0x5126(x)
/ 198: fcn.000032a2 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:32a2    .string "PSQRVW\xbe" ; len=7                  ; arg1
|           0000:32a9     7f07           jg 0x32b2
|           0000:32ab     bf0e80         mov di, 0x800e
|           0000:32ae     b90d00         mov cx, 0xd                   ; 13
|           ; CODE XREF from fcn.000032a2 @ 0x32b7(x)
|           0000:32b1     8a04           mov al, byte [si]
|           0000:32b3     8805           mov byte [di], al
|           0000:32b5     46             inc si
|           0000:32b6     47             inc di
|           0000:32b7     e2f8           loop 0x32b1
|           0000:32b9     b8003d         mov ax, fcn.00003d00          ; 0x3d00 ; "PSQRVWU\x89\xe5\x8b\xc3\xd1\xe3\xd1\xe3\x01\u00f9\x04"
|           0000:32bc     ba0e80         mov dx, 0x800e
|           0000:32bf     cd21           int 0x21
|           0000:32c1     7302           jae 0x32c5
|           0000:32c3     eb95           jmp 0x325a                    ; fcn.00003475-0x21b
|           ; CODE XREF from fcn.000032a2 @ 0x32c1(x)
|           0000:32c5     a30080         mov word [sp], ax             ; bp
|                                                                      ; [0x8000:2]=0xffff
|           0000:32c8     c6063fd201     mov byte [0xd23f], 1
|           ; CODE XREF from fcn.000032a2 @ 0x32f3(x)
|           0000:32cd     bac403         mov dx, 0x3c4                 ; " * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:32d0     b002           mov al, 2
|           0000:32d2     ee             out dx, al
|           0000:32d3     42             inc dx
|           0000:32d4     a03fd2         mov al, byte [0xd23f]         ; [0xd23f:1]=255
|           0000:32d7     ee             out dx, al
|           0000:32d8     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:32da     8b1e0080       mov bx, word [0x8000]
|           0000:32de     b98400         mov cx, 0x84                  ; 132
|           0000:32e1     ba00dc         mov dx, 0xdc00
|           0000:32e4     1e             push ds
|           0000:32e5     06             push es
|           0000:32e6     1f             pop ds
|           0000:32e7     cd21           int 0x21
|           0000:32e9     1f             pop ds
|           0000:32ea     d0263fd2       shl byte [0xd23f], 1
|           0000:32ee    .string "&?\xd2\x80>?\xd2" ; len=7
|           0000:32f2     0876d8         or byte [bp - 0x28], dh
|           0000:32f5     c6063fd201     mov byte [0xd23f], 1
|           ; CODE XREF from fcn.000032a2 @ 0x3320(x)
|           0000:32fa     bac403         mov dx, 0x3c4                 ; " * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:32fd     b002           mov al, 2
|           0000:32ff     ee             out dx, al
|           0000:3300     42             inc dx
|           0000:3301     a03fd2         mov al, byte [0xd23f]         ; [0xd23f:1]=255
|           0000:3304     ee             out dx, al
|           0000:3305     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:3307     8b1e0080       mov bx, word [0x8000]
|           0000:330b     b93006         mov cx, 0x630
|           0000:330e     ba84dc         mov dx, 0xdc84
|           0000:3311     1e             push ds
|           0000:3312     06             push es
|           0000:3313     1f             pop ds
|           0000:3314     cd21           int 0x21
|           0000:3316     1f             pop ds
|           0000:3317     d0263fd2       shl byte [0xd23f], 1
|           0000:331b    .string "&?\xd2\x80>?\xd2" ; len=7
|           0000:331f     0876d8         or byte [bp - 0x28], dh
|           0000:3322     c6063fd201     mov byte [0xd23f], 1
|           ; CODE XREF from fcn.000032a2 @ 0x334d(x)
|           0000:3327     bac403         mov dx, 0x3c4                 ; " * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:332a     b002           mov al, 2
|           0000:332c     ee             out dx, al
|           0000:332d     42             inc dx
|           0000:332e     a03fd2         mov al, byte [0xd23f]         ; [0xd23f:1]=255
|           0000:3331     ee             out dx, al
|           0000:3332     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:3334     8b1e0080       mov bx, word [0x8000]
|           0000:3338     b99804         mov cx, 0x498                 ; "- Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:333b     ba7ce4         mov dx, 0xe47c
|           0000:333e     1e             push ds
|           0000:333f     06             push es
|           0000:3340     1f             pop ds
|           0000:3341     cd21           int 0x21
|           0000:3343     1f             pop ds
|           0000:3344     d0263fd2       shl byte [0xd23f], 1
|           0000:3348    .string "&?\xd2\x80>?\xd2" ; len=7
|           0000:334c     0876d8         or byte [bp - 0x28], dh
|           0000:334f     bac403         mov dx, 0x3c4                 ; " * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3352     b002           mov al, 2
|           0000:3354     ee             out dx, al
|           0000:3355     42             inc dx
|           0000:3356     b00f           mov al, 0xf                   ; 15
|           0000:3358     ee             out dx, al
|           0000:3359     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:335b     8b1e0080       mov bx, word [0x8000]
|           0000:335f     cd21           int 0x21
|           0000:3361    .string "!_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.00000100 @ 0x5129(x)
/ 79: fcn.00003368 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3368    .string "PSQRVW\xbe" ; len=7                  ; arg1
|           0000:336f     98             cwde
|           0000:3370     07             pop es
|           0000:3371     bf0e80         mov di, 0x800e
|           0000:3374     b90e00         mov cx, 0xe                   ; 14
|           ; CODE XREF from fcn.00003368 @ 0x337d(x)
|           0000:3377     8a04           mov al, byte [si]
|           0000:3379     8805           mov byte [di], al
|           0000:337b     46             inc si
|           0000:337c     47             inc di
|           0000:337d     e2f8           loop 0x3377
|           0000:337f     b8003d         mov ax, fcn.00003d00          ; 0x3d00 ; "PSQRVWU\x89\xe5\x8b\xc3\xd1\xe3\xd1\xe3\x01\u00f9\x04"
|           0000:3382     ba0e80         mov dx, 0x800e
|           0000:3385     cd21           int 0x21
|           0000:3387     7303           jae 0x338c
|           0000:3389     e9cefe         jmp 0x325a                    ; fcn.00003475-0x21b
|           ; CODE XREF from fcn.00003368 @ 0x3387(x)
|           0000:338c     8bd8           mov bx, ax
|           0000:338e     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:3390     b90002         mov cx, 0x200                 ; " file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3393     ba64c3         mov dx, 0xc364
|           0000:3396     cd21           int 0x21
|           0000:3398     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:339a     b98003         mov cx, 0x380                 ; "s\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:339d     ba64c5         mov dx, 0xc564
|           0000:33a0     cd21           int 0x21
|           0000:33a2     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:33a4     b9e805         mov cx, 0x5e8                 ; "    Level     Score"
|           0000:33a7     bae4c8         mov dx, 0xc8e4
|           0000:33aa     cd21           int 0x21
|           0000:33ac     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:33ae     cd21           int 0x21
|           0000:33b0    .string "!_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.000037db @ 0x37f3(x)
            ; CALL XREF from fcn.00003b69 @ 0x3b71(x)
/ 51: fcn.000033b7 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:33b7    .string "PSQRV\xe8" ; len=6                   ; arg1
|           0000:33bd     7800           js 0x33bf
|           0000:33bf     8ac2           mov al, dl
|           0000:33c1     d40a           aam 0xa
|           0000:33c3     8826a8d3       mov byte [0xd3a8], ah
|           0000:33c7     a2a9d3         mov byte [0xd3a9], al         ; [0xd3a9:1]=255
|           0000:33ca     be0081         mov si, 0x8100
|           0000:33cd     b90a01         mov cx, 0x10a
|           0000:33d0     33d2           xor dx, dx
|           ; CODE XREF from fcn.000033b7 @ 0x33de(x)
|           0000:33d2     f604ff         test byte [si], 0xff
|           0000:33d5     7406           je 0x33dd
|           0000:33d7     803c1c         cmp byte [si], 0x1c
|           0000:33da     7401           je 0x33dd
|           0000:33dc     42             inc dx
|           ; CODE XREFS from fcn.000033b7 @ 0x33d5(x), 0x33da(x)
|           0000:33dd     46             inc si
|           0000:33de     e2f2           loop 0x33d2
|           0000:33e0     891652d2       mov word [0xd252], dx
|           0000:33e4    .string "^ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00000100 @ 0x5120(x)
/ 77: fcn.000033ea (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:33ea    .string "PSQR\xb8" ; len=5                    ; arg1
|           0000:33ef     003d           add byte [di], bh
|           0000:33f1     ba4e80         mov dx, 0x804e
|           0000:33f4     cd21           int 0x21
|           0000:33f6     7224           jb 0x341c
|           0000:33f8     8bd8           mov bx, ax
|           0000:33fa     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:33fc     b92c1f         mov cx, 0x1f2c                ; ',\x1f'
|           0000:33ff     ba1483         mov dx, 0x8314
|           0000:3402     cd21           int 0x21
|           0000:3404     3bc1           cmp ax, cx
|           0000:3406     7514           jne 0x341c
|           0000:3408     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:340a     ba40a2         mov dx, 0xa240
|           0000:340d     cd21           int 0x21
|           0000:340f     3bc1           cmp ax, cx
|           0000:3411     7509           jne 0x341c
|           0000:3413     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:3415     cd21           int 0x21
|           0000:3417     e88801         call fcn.000035a2
|           0000:341a     eb16           jmp 0x3432
|           ; CODE XREFS from fcn.000033ea @ 0x33f6(x), 0x3406(x), 0x3411(x)
|           0000:341c     b409           mov ah, 9
|           0000:341e     ba5608         mov dx, 0x856                 ; "\r\nCannot continue; the levels data file\r\n\r\n           $\r\n\r\nwas missing or corrupt, returning to DOS ...\r\n$\x10"
|           0000:3421     cd21           int 0x21
|           0000:3423     ba4e80         mov dx, 0x804e
|           0000:3426     cd21           int 0x21
|           0000:3428     ba8d08         mov dx, 0x88d                 ; "\r\n\r\nwas missing or corrupt, returning to DOS ...\r\n$\x10"
|           0000:342b     cd21           int 0x21
|           0000:342d     b8014c         mov ax, 0x4c01
|           0000:3430     cd21           int 0x21
|           ; CODE XREF from fcn.000033ea @ 0x341a(x)
|           0000:3432    .string "!ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.000033b7 @ 0x33bc(x)
/ 62: fcn.00003437 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:3437    .string "PQRVW\x06" ; len=6                   ; arg1
|           0000:343d     1e             push ds
|           0000:343e     07             pop es
|           0000:343f     fc             cld
|           0000:3440     feca           dec dl                        ; arg2
|           0000:3442     32f6           xor dh, dh
|           0000:3444     8bc2           mov ax, dx
|           0000:3446     b105           mov cl, 5
|           0000:3448     d3e0           shl ax, cl
|           0000:344a     01d0           add ax, dx
|           0000:344c     b102           mov cl, 2
|           0000:344e     d3e0           shl ax, cl
|           0000:3450     01d0           add ax, dx
|           0000:3452     d1e0           shl ax, 1
|           0000:3454     be1483         mov si, 0x8314
|           0000:3457     01c6           add si, ax
|           0000:3459     bf0081         mov di, 0x8100
|           0000:345c     b90a01         mov cx, 0x10a
|           0000:345f     f3a4           rep movsb byte es:[di], byte [si]
|           0000:3461     be40a2         mov si, 0xa240
|           0000:3464     01c6           add si, ax
|           0000:3466     bf0a82         mov di, 0x820a
|           0000:3469     b90a01         mov cx, 0x10a
|           0000:346c     f3a4           rep movsb byte es:[di], byte [si]
|           ;-- str._a_ZYX:
|           0000:346e    .string "\a_^ZYX\xc3" ; len=7
            ; CALL XREF from fcn.00000100 @ 0x511d(x)
/ 123: fcn.00003475 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3475    .string "PSQRVW\xbe" ; len=7                  ; arg1
|           0000:347c     a307bf         mov word [0xbf07], ax         ; [0xbf07:2]=0xffff
|           0000:347f     0e             push cs
|           0000:3480 ~   80b90e008a     cmp byte [bx + di + 0xe], 0x8a
|           ; CODE XREF from fcn.00003475 @ 0x348a(x)
|           0000:3484     8a04           mov al, byte [si]
|           0000:3486     8805           mov byte [di], al
|           0000:3488     46             inc si
|           0000:3489     47             inc di
|           0000:348a     e2f8           loop 0x3484
|           0000:348c     b8003d         mov ax, fcn.00003d00          ; 0x3d00 ; "PSQRVWU\x89\xe5\x8b\xc3\xd1\xe3\xd1\xe3\x01\u00f9\x04"
|           0000:348f     ba0e80         mov dx, 0x800e
|           0000:3492 ~   cd21           int 0x21
|           ;-- str._s_r:
|           0000:3493    .string "!s\r=\x02" ; len=5
|           0000:3498     007505         add byte [di + 5], dh
|           0000:349b     e89100         call int.0000352f
|           0000:349e     eb30           jmp 0x34d0
|           ; CODE XREF from fcn.00003475 @ 0x3499(x)
|           0000:34a0     e9b7fd         jmp 0x325a
|           ; CODE XREF from fcn.00003475 @ 0x3494(x)
|           0000:34a3     a30c80         mov word [0x800c], ax         ; [0x800c:2]=0xffff
|           0000:34a6     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:34a8     8b1e0c80       mov bx, word [0x800c]
|           0000:34ac     b94600         mov cx, 0x46                  ; 'F' ; 70
|           0000:34af     ba66d2         mov dx, 0xd266
|           0000:34b2     cd21           int 0x21
|           0000:34b4     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:34b6     b9a000         mov cx, 0xa0                  ; 160
|           0000:34b9     baacd2         mov dx, 0xd2ac
|           0000:34bc     cd21           int 0x21
|           0000:34be     b43f           mov ah, 0x3f                  ; '?' ; 63
|           0000:34c0     b91e00         mov cx, 0x1e                  ; 30
|           0000:34c3     ba4cd3         mov dx, 0xd34c
|           0000:34c6     cd21           int 0x21
|           0000:34c8     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:34ca     8b1e0c80       mov bx, word [0x800c]
|           0000:34ce     cd21           int 0x21
|           ; CODE XREF from fcn.00003475 @ 0x349e(x)
|           0000:34d0    .string "!_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.00003cdc @ 0x3ca4(x)
/ 88: fcn.000034d7 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:34d7    .string "PSQRVW\xbe" ; len=7                  ; arg1
|           0000:34de     a307bf         mov word [0xbf07], ax         ; [0xbf07:2]=0xffff
|           0000:34e1     0e             push cs
|           0000:34e2 ~   80b90e008a     cmp byte [bx + di + 0xe], 0x8a
|           ; CODE XREF from fcn.000034d7 @ 0x34ec(x)
|           0000:34e6     8a04           mov al, byte [si]
|           0000:34e8     8805           mov byte [di], al
|           0000:34ea     46             inc si
|           0000:34eb     47             inc di
|           0000:34ec     e2f8           loop 0x34e6
|           0000:34ee     b8013d         mov ax, 0x3d01
|           0000:34f1     ba0e80         mov dx, 0x800e
|           0000:34f4     cd21           int 0x21
|           0000:34f6     a30c80         mov word [0x800c], ax         ; [0x800c:2]=0xffff
|           0000:34f9     b440           mov ah, 0x40                  ; '@' ; 64
|           0000:34fb     8b1e0c80       mov bx, word [0x800c]
|           0000:34ff     b94600         mov cx, 0x46                  ; 'F' ; 70
|           0000:3502     ba66d2         mov dx, 0xd266
|           0000:3505     cd21           int 0x21
|           0000:3507     b440           mov ah, 0x40                  ; '@' ; 64
|           ; DATA XREF from fcn.000050b6 @ 0x50b9(r)
|           0000:3509     b9a000         mov cx, 0xa0                  ; 160
|           0000:350c     baacd2         mov dx, 0xd2ac
|           0000:350f     cd21           int 0x21
|           0000:3511     b440           mov ah, 0x40                  ; '@' ; 64
|           0000:3513     b91e00         mov cx, 0x1e                  ; 30
|           0000:3516     ba4cd3         mov dx, 0xd34c
|           0000:3519     cd21           int 0x21
|           0000:351b     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:351d     8b1e0c80       mov bx, word [0x800c]
|           0000:3521     cd21           int 0x21
|           0000:3523     7303           jae 0x3528
|           0000:3525     e95afd         jmp 0x3282                    ; int.0000352f-0x2ad
|           ; CODE XREF from fcn.000034d7 @ 0x3523(x)
|           0000:3528    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003475 @ 0x349b(x)
/ 149: int.0000352f (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:352f    .string "PSQRVW\xbe" ; len=7                  ; arg1
|           0000:3536     a307bf         mov word [0xbf07], ax         ; [0xbf07:2]=0xffff
|           0000:3539     0e             push cs
|           0000:353a ~   80b90e008a     cmp byte [bx + di + 0xe], 0x8a
|           ; CODE XREF from int.0000352f @ 0x3544(x)
|           0000:353e     8a04           mov al, byte [si]
|           0000:3540     8805           mov byte [di], al
|           0000:3542     46             inc si
|           0000:3543     47             inc di
|           0000:3544     e2f8           loop 0x353e
|           0000:3546     b45b           mov ah, 0x5b                  ; '[' ; 91
|           0000:3548     b90000         mov cx, 0
|           0000:354b     ba0e80         mov dx, 0x800e
|           0000:354e     cd21           int 0x21
|           0000:3550     7303           jae 0x3555
|           0000:3552     e91efd         jmp 0x3273
|           ; CODE XREF from int.0000352f @ 0x3550(x)
|           0000:3555     a30c80         mov word [0x800c], ax         ; [0x800c:2]=0xffff
|           0000:3558     b440           mov ah, 0x40                  ; '@' ; 64
|           0000:355a     8b1e0c80       mov bx, word [0x800c]
|           0000:355e     b90401         mov cx, 0x104
|           0000:3561     bafc05         mov dx, 0x5fc
|           0000:3564     cd21           int 0x21
|           0000:3566     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:3568     8b1e0c80       mov bx, word [0x800c]
|           0000:356c     cd21           int 0x21
|           0000:356e     bf66d2         mov di, 0xd266
|           0000:3571     befc05         mov si, 0x5fc
|           0000:3574     b94600         mov cx, 0x46                  ; 'F' ; 70
|           ; CODE XREF from int.0000352f @ 0x357d(x)
|           0000:3577     8a04           mov al, byte [si]
|           0000:3579     8805           mov byte [di], al
|           0000:357b     46             inc si
|           0000:357c     47             inc di
|           0000:357d     e2f8           loop 0x3577
|           0000:357f     bfacd2         mov di, 0xd2ac
|           0000:3582     b9a000         mov cx, 0xa0                  ; 160
|           ; CODE XREF from int.0000352f @ 0x358b(x)
|           0000:3585     8a04           mov al, byte [si]
|           0000:3587     8805           mov byte [di], al
|           0000:3589     46             inc si
|           0000:358a     47             inc di
|           0000:358b     e2f8           loop 0x3585
|           0000:358d     bf4cd3         mov di, 0xd34c
|           0000:3590     b91e00         mov cx, 0x1e                  ; 30
|           ; CODE XREF from int.0000352f @ 0x3599(x)
|           0000:3593     8a04           mov al, byte [si]
|           0000:3595     8805           mov byte [di], al
|           0000:3597     46             inc si
|           0000:3598     47             inc di
|           0000:3599     e2f8           loop 0x3593
|           0000:359b    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.000033ea @ 0x3417(x)
/ 104: fcn.000035a2 (int16_t arg1, int16_t arg2);
| `- args(ax, cx) vars(2:sp[0xc..0xe])
|           0000:35a2    .string "PQVWU\x89" ; len=6                   ; arg1
|           0000:35a8     e5b8           in ax, 0xb8
|           0000:35aa     1483           adc al, 0x83                  ; 131
|           0000:35ac     50             push ax
|           0000:35ad     b840a2         mov ax, 0xa240
|           0000:35b0     50             push ax
|           ; CODE XREF from fcn.000035a2 @ 0x35ff(x)
|           0000:35b1     bec061         mov si, 0x61c0
|           0000:35b4     8b7efe         mov di, word [var_2h]
|           0000:35b7     b400           mov ah, 0
|           0000:35b9     b9640a         mov cx, 0xa64                 ; 'd\n'
|           ; CODE XREF from fcn.000035a2 @ 0x35d1(x)
|           0000:35bc     8a05           mov al, byte [di]
|           0000:35be     3204           xor al, byte [si]
|           0000:35c0     2ac4           sub al, ah
|           0000:35c2     8805           mov byte [di], al
|           0000:35c4     47             inc di
|           0000:35c5     46             inc si
|           0000:35c6     81fed761       cmp si, 0x61d7
|           0000:35ca     7503           jne 0x35cf
|           0000:35cc     bec061         mov si, 0x61c0
|           ; CODE XREF from fcn.000035a2 @ 0x35ca(x)
|           0000:35cf     fec4           inc ah
|           0000:35d1     e2e9           loop 0x35bc
|           0000:35d3     8b7efc         mov di, word [var_4h]
|           0000:35d6     b9640a         mov cx, 0xa64                 ; 'd\n'
|           ; CODE XREF from fcn.000035a2 @ 0x35ee(x)
|           0000:35d9     8a05           mov al, byte [di]
|           0000:35db     3204           xor al, byte [si]
|           0000:35dd     2ac4           sub al, ah
|           0000:35df     8805           mov byte [di], al
|           0000:35e1     47             inc di
|           0000:35e2     46             inc si
|           0000:35e3     81fed761       cmp si, 0x61d7
|           0000:35e7     7503           jne 0x35ec
|           0000:35e9     bec061         mov si, 0x61c0
|           ; CODE XREF from fcn.000035a2 @ 0x35e7(x)
|           0000:35ec     fec4           inc ah
|           0000:35ee     e2e9           loop 0x35d9
|           0000:35f0     8146fe640a     add word [var_2h], 0xa64      ; [0xa64:2]=0x7c0 "NTS.PAR"
|           0000:35f5     8146fc640a     add word [var_4h], 0xa64      ; [0xa64:2]=0x7c0 "NTS.PAR"
|           0000:35fa     817efe40a2     cmp word [var_2h], 0xa240
|           0000:35ff     75b0           jne 0x35b1
|           0000:3601     83c404         add sp, 4
|           0000:3604    .string "]_^YX\xc3" ; len=6
            0000:360a     3100           xor word [bx + si], ax
            0000:360c ~   e27e           loop 0x368c                   ; fcn.00003658+0x34
            ;-- str.__Q:
            0000:360d    .string "~;'Q\xe8" ; len=5
|           0000:3612     f0             invalid
|           0000:3613     02e8           add ch, al
|           0000:3615     c9             leave
|           0000:3616     02c6           add al, dh
|           0000:3618     06             push es
|           0000:3619     51             push cx
|           0000:361a     d201           rol byte [bx + di], cl
|           0000:361c     c60655d200     mov byte [0xd255], 0
|           0000:3621     c60656d200     mov byte [0xd256], 0
|           0000:3626     c60698d301     mov byte [0xd398], 1
|           0000:362b     c6063ad204     mov byte [0xd23a], 4
|           0000:3630     c6063bd201     mov byte [0xd23b], 1
|           0000:3635     c7063dd20006   mov word [0xd23d], 0x600      ; [0x600:2]=0
|           0000:363b     e813ee         call fcn.00002451
|           0000:363e     e8b81f         call fcn.000055f9
|           0000:3641     e8d321         call fcn.00005817
|           0000:3644     e80320         call fcn.0000564a
|           0000:3647     e8be21         call fcn.00005808
|           0000:364a     e8beed         call fcn.0000240b
|           0000:364d     e8eb2e         call fcn.0000653b
|           0000:3650     b97800         mov cx, 0x78                  ; 'x' ; 120
|           0000:3653     e8f604         call fcn.00003b4c
|           0000:3656     59             pop cx
\           0000:3657     c3             ret
            ; CALL XREF from str.E_b2 @ +0x37(x)
/ 165: fcn.00003658 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx) vars(1:sp[0x2..0x2])
|           0000:3658     50             push ax                       ; arg1
|           0000:3659     57             push di
|           0000:365a     55             push bp
|           0000:365b     89e5           mov bp, sp
|           0000:365d     e86b1a         call fcn.000050cb
|           ; CODE XREF from fcn.00003658 @ 0x36d5(x)
|           0000:3660     fe063cd2       inc byte [0xd23c]
|           0000:3664    .string "<\xd2\x80><\xd2" ; len=6
|           0000:3668     037505         add si, word [di + 5]
|           0000:366b     c6063cd200     mov byte [0xd23c], 0
|           ; CODE XREF from fcn.00003658 @ 0x3669(x)
|           0000:3670     e8e018         call fcn.00004f53
|           0000:3673     e8431f         call fcn.000055b9
|           0000:3676     e8d8ed         call fcn.00002451
|           0000:3679     e86527         call fcn.00005de1
|           0000:367c     e82522         call fcn.000058a4
|           0000:367f     e8b9ec         call fcn.0000233b
|           0000:3682     e837f7         call fcn.00002dbc
|           0000:3685     e881f7         call fcn.00002e09
|           0000:3688     e845ed         call fcn.000023d0
|           0000:368b     e80aec         call fcn.00002298
|           0000:368e     e89524         call fcn.00005b26
|           0000:3691     e85125         call fcn.00005be5
|           0000:3694     e8ce27         call fcn.00005e65
|           0000:3697     e8e4ec         call fcn.0000237e
|           0000:369a     e85c1f         call fcn.000055f9
|           0000:369d     e87721         call fcn.00005817
|           0000:36a0     e8e926         call fcn.00005d8c
|           0000:36a3     e865ed         call fcn.0000240b
|           0000:36a6     e87a27         call fcn.00005e23
|           0000:36a9     e89e1f         call fcn.0000564a
|           0000:36ac     e85921         call fcn.00005808
|           0000:36af     e82f28         call fcn.00005ee1
|           0000:36b2     e8651b         call fcn.0000521a
|           0000:36b5     e8832e         call fcn.0000653b
|           0000:36b8     f60665d2ff     test byte [0xd265], 0xff
|           0000:36bd     7530           jne 0x36ef
|           0000:36bf     f70652d2ffff   test word [0xd252], 0xffff
|           0000:36c5     741c           je 0x36e3
|           0000:36c7     f60664d2ff     test byte [0xd264], 0xff
|           0000:36cc     7515           jne 0x36e3
|           0000:36ce     f60651d2ff     test byte [0xd251], 0xff
|           0000:36d3     7402           je 0x36d7
|           0000:36d5     eb89           jmp 0x3660
|           ; CODE XREF from fcn.00003658 @ 0x36d3(x)
|           0000:36d7     bfc50c         mov di, 0xcc5
|           0000:36da     e8021c         call fcn.000052df
|           0000:36dd     c6460400       mov byte [var_4h], 0
|           0000:36e1     eb10           jmp 0x36f3
|           ; CODE XREFS from fcn.00003658 @ 0x36c5(x), 0x36cc(x)
|           0000:36e3     bfde0c         mov di, 0xcde
|           0000:36e6     e8f61b         call fcn.000052df
|           0000:36e9     c6460401       mov byte [var_4h], 1
|           0000:36ed     eb04           jmp 0x36f3
|           ; CODE XREF from fcn.00003658 @ 0x36bd(x)
|           0000:36ef     c6460402       mov byte [var_4h], 2
|           ; CODE XREFS from fcn.00003658 @ 0x36e1(x), 0x36ed(x)
|           0000:36f3     e80700         call fcn.000036fd
|           0000:36f6     e8ef19         call fcn.000050e8
|           0000:36f9     5d             pop bp
|           0000:36fa     5f             pop di
|           0000:36fb     58             pop ax
\           0000:36fc     c3             ret
            ; CALL XREF from fcn.00003658 @ 0x36f3(x)
/ 94: fcn.000036fd (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:36fd     51             push cx                       ; arg4
|           0000:36fe     b90200         mov cx, 2
|           ; CODE XREF from fcn.000036fd @ 0x3747(x)
|           0000:3701     e8b51e         call fcn.000055b9
|           0000:3704     e89d21         call fcn.000058a4
|           0000:3707     e8d726         call fcn.00005de1
|           0000:370a     e844ed         call fcn.00002451
|           ; CODE XREF from fcn.000036fd @ 0x374e(x)
|           0000:370d     f70652d2ffff   test word [0xd252], 0xffff
|           0000:3713     740a           je 0x371f
|           0000:3715     f60664d2ff     test byte [0xd264], 0xff
|           0000:371a     7503           jne 0x371f
|           0000:371c     e832ed         call fcn.00002451
|           ; CODE XREFS from fcn.000036fd @ 0x3713(x), 0x371a(x)
|           0000:371f     c60654d201     mov byte [0xd254], 1
|           0000:3724     e8ff23         call fcn.00005b26
|           0000:3727     e8b727         call fcn.00005ee1
|           0000:372a     e8ed1a         call fcn.0000521a
|           0000:372d     f70652d2ffff   test word [0xd252], 0xffff
|           0000:3733     740d           je 0x3742
|           0000:3735     f60664d2ff     test byte [0xd264], 0xff
|           0000:373a     7506           jne 0x3742
|           0000:373c     e83fec         call fcn.0000237e
|           0000:373f     e8c9ec         call fcn.0000240b
|           ; CODE XREFS from fcn.000036fd @ 0x3733(x), 0x373a(x)
|           0000:3742     e8f62d         call fcn.0000653b
|           0000:3745     e302           jcxz 0x3749
|           0000:3747     e2b8           loop 0x3701
|           ; CODE XREF from fcn.000036fd @ 0x3745(x)
|           0000:3749     f60654d2ff     test byte [0xd254], 0xff
|           0000:374e     74bd           je 0x370d
|           0000:3750     e80800         call fcn.0000375b
|           0000:3753     e82200         call fcn.00003778
|           0000:3756     e85f00         call fcn.000037b8
|           0000:3759     59             pop cx
\           0000:375a     c3             ret
            ; CALL XREF from fcn.000036fd @ 0x3750(x)
            ; CALL XREF from fcn.00003863 @ 0x3863(x)
            ; CALL XREF from fcn.00004abd @ 0x4ac2(x)
            ; CALL XREF from fcn.000064d9 @ 0x64da(x)
/ 29: fcn.0000375b (int16_t arg1, int16_t arg2);
| `- args(bx, cx)
|           0000:375b     53             push bx                       ; arg1
|           0000:375c     51             push cx                       ; arg2
|           0000:375d     b90001         mov cx, fcn.00000100          ; ip
|                                                                      ; 0x100
|           0000:3760     bb6dc1         mov bx, 0xc16d
|           ; CODE XREF from fcn.0000375b @ 0x3767(x)
|           0000:3763     c60700         mov byte [bx], 0
|           0000:3766     43             inc bx
|           0000:3767     e2fa           loop 0x3763
|           0000:3769     b92000         mov cx, 0x20                  ; 32
|           0000:376c     bbadc2         mov bx, 0xc2ad
|           ; CODE XREF from fcn.0000375b @ 0x3773(x)
|           0000:376f     c607ff         mov byte [bx], 0xff           ; [0xff:1]=255
|           0000:3772     43             inc bx
|           0000:3773     e2fa           loop 0x376f
|           0000:3775     59             pop cx
|           0000:3776     5b             pop bx
\           0000:3777     c3             ret
            ; CALL XREF from fcn.000036fd @ 0x3753(x)
            ; CALL XREF from fcn.00003863 @ 0x3866(x)
/ 32: fcn.00003778 (int16_t arg1, int16_t arg2);
| `- args(bx, cx)
|           0000:3778     53             push bx                       ; arg1
|           0000:3779     51             push cx                       ; arg2
|           0000:377a     b94000         mov cx, 0x40                  ; '@' ; 64
|           0000:377d     bb0ec3         mov bx, 0xc30e
|           ; CODE XREF from fcn.00003778 @ 0x3784(x)
|           0000:3780     c60700         mov byte [bx], 0
|           0000:3783     43             inc bx
|           0000:3784     e2fa           loop 0x3780
|           0000:3786     b90800         mov cx, 8
|           0000:3789     bb4ec3         mov bx, 0xc34e
|           ; CODE XREF from fcn.00003778 @ 0x3793(x)
|           0000:378c     c707ffff       mov word [bx], 0xffff         ; [0xffff:2]=0xffff
|           0000:3790     83c302         add bx, 2
|           0000:3793     e2f7           loop 0x378c
|           0000:3795     59             pop cx
|           0000:3796     5b             pop bx
\           0000:3797     c3             ret
            ; CALL XREF from fcn.00003863 @ 0x3869(x)
/ 32: fcn.00003798 (int16_t arg1, int16_t arg2);
| `- args(bx, cx)
|           0000:3798     53             push bx                       ; arg1
|           0000:3799     51             push cx                       ; arg2
|           0000:379a     b92d00         mov cx, 0x2d                  ; '-' ; 45
|           0000:379d     bbcdc2         mov bx, 0xc2cd
|           ; CODE XREF from fcn.00003798 @ 0x37a4(x)
|           0000:37a0     c60700         mov byte [bx], 0
|           0000:37a3     43             inc bx
|           0000:37a4     e2fa           loop 0x37a0
|           0000:37a6     b90a00         mov cx, 0xa
|           0000:37a9     bbfac2         mov bx, 0xc2fa
|           ; CODE XREF from fcn.00003798 @ 0x37b3(x)
|           0000:37ac     c707ffff       mov word [bx], 0xffff         ; [0xffff:2]=0xffff
|           0000:37b0     83c302         add bx, 2
|           0000:37b3     e2f7           loop 0x37ac
|           0000:37b5     59             pop cx
|           0000:37b6     5b             pop bx
\           0000:37b7     c3             ret
            ; CALL XREF from fcn.000036fd @ 0x3756(x)
            ; CALL XREF from fcn.00003863 @ 0x386c(x)
/ 13: fcn.000037b8 ();
|           0000:37b8     c7065ec3ffff   mov word [0xc35e], 0xffff     ; [0xffff:2]=0xffff
|           0000:37be     c70660c3ffff   mov word [0xc360], 0xffff     ; [0xffff:2]=0xffff
\           0000:37c4     c3             ret
            ; CALL XREF from fcn.00003b94 @ 0x3bb9(x)
            ; CALL XREF from fcn.00005134 @ 0x5196(x)
/ 22: fcn.000037c5 (int16_t arg1, int16_t arg2);
| `- args(bx, cx)
|           0000:37c5     53             push bx                       ; arg1
|           0000:37c6     51             push cx                       ; arg2
|           0000:37c7     b91e03         mov cx, 0x31e                 ; "e sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:37ca     bb17cf         mov bx, 0xcf17
|           ; CODE XREF from fcn.000037c5 @ 0x37d1(x)
|           0000:37cd     c60700         mov byte [bx], 0
|           0000:37d0     43             inc bx
|           0000:37d1     e2fa           loop 0x37cd
|           0000:37d3     c60635d200     mov byte [0xd235], 0
|           0000:37d8     59             pop cx
|           0000:37d9     5b             pop bx
\           0000:37da     c3             ret
            ; CALL XREF from str.E_b2 @ +0x2e(x)
/ 81: fcn.000037db (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:37db     50             push ax                       ; arg1
|           0000:37dc     52             push dx                       ; arg2
|           0000:37dd     e88300         call fcn.00003863
|           0000:37e0     e8b92e         call fcn.0000669c
|           0000:37e3     e8c72e         call fcn.000066ad
|           0000:37e6     e84300         call fcn.0000382c
|           0000:37e9     e8b02e         call fcn.0000669c
|           0000:37ec     e8be2e         call fcn.000066ad
|           0000:37ef     8a164fd2       mov dl, byte [0xd24f]
|           0000:37f3     e8c1fb         call fcn.000033b7
|           0000:37f6     b8006e         mov ax, 0x6e00
|           0000:37f9     e8ed2d         call fcn.000065e9
|           0000:37fc     c60639d200     mov byte [0xd239], 0
|           0000:3801     c70637d20000   mov word [0xd237], 0
|           0000:3807     e8fe06         call fcn.00003f08
|           0000:380a     e86008         call fcn.0000406d
|           0000:380d     e80f01         call fcn.0000391f
|           0000:3810     e82318         call fcn.00005036
|           0000:3813     e83f2d         call fcn.00006555
|           0000:3816     7203           jb 0x381b
|           0000:3818     e8722d         call fcn.0000658d
|           ; CODE XREF from fcn.000037db @ 0x3816(x)
|           0000:381b     c60639d201     mov byte [0xd239], 1
|           0000:3820     c70637d2006e   mov word [0xd237], 0x6e00     ; [0x6e00:2]=0xffff
|           0000:3826     e80e2e         call fcn.00006637
|           0000:3829     5a             pop dx
|           0000:382a     58             pop ax
\           0000:382b     c3             ret
            ; CALL XREF from fcn.000037db @ 0x37e6(x)
/ 55: fcn.0000382c (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:382c    .string "PQRVW\xb9" ; len=6                   ; arg1
|           0000:3832     1200           adc al, byte [bx + si]
|           0000:3834     bfda80         mov di, 0x80da
|           0000:3837     beb209         mov si, 0x9b2
|           0000:383a     06             push es
|           0000:383b     1e             push ds
|           0000:383c     07             pop es
|           0000:383d     f3a4           rep movsb byte es:[di], byte [si] ; int16_t arg4
|           0000:383f     07             pop es
|           0000:3840     a04fd2         mov al, byte [0xd24f]         ; [0xd24f:1]=255
|           0000:3843     32e4           xor ah, ah
|           0000:3845     b20a           mov dl, 0xa
|           0000:3847     f6f2           div dl
|           0000:3849     053030         add ax, 0x3030                ; int16_t arg1
|           0000:384c     a3e880         mov word [0x80e8], ax         ; [0x80e8:2]=0xffff
|           0000:384f     b200           mov dl, 0
|           0000:3851     bfda80         mov di, 0x80da
|           0000:3854     e8550c         call fcn.000044ac
|           0000:3857     b9f000         mov cx, 0xf0
|           0000:385a     e8cc02         call fcn.00003b29
|           0000:385d    .string "_^ZYX\xc3" ; len=6
            ; CALL XREF from fcn.000037db @ 0x37dd(x)
            ; CALL XREF from fcn.00003b94 @ 0x3b94(x)
/ 84: fcn.00003863 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:3863     e8f5fe         call fcn.0000375b
|           0000:3866     e80fff         call fcn.00003778
|           0000:3869     e82cff         call fcn.00003798
|           0000:386c     e849ff         call fcn.000037b8
|           0000:386f     c60664d200     mov byte [0xd264], 0
|           0000:3874     c60659d200     mov byte [0xd259], 0
|           0000:3879     c6065ad200     mov byte [0xd25a], 0
|           0000:387e     c6065bd200     mov byte [0xd25b], 0
|           0000:3883     c60662d201     mov byte [0xd262], 1
|           0000:3888     c60663d201     mov byte [0xd263], 1
|           0000:388d     c60698d301     mov byte [0xd398], 1
|           0000:3892     c6063ad204     mov byte [0xd23a], 4
|           0000:3897     c6063bd201     mov byte [0xd23b], 1
|           0000:389c     c7063dd20006   mov word [0xd23d], 0x600      ; [0x600:2]=0
|           0000:38a2     c60655d200     mov byte [0xd255], 0
|           0000:38a7     c60657d200     mov byte [0xd257], 0
|           0000:38ac     c60658d200     mov byte [0xd258], 0
|           0000:38b1     c60635d200     mov byte [0xd235], 0
\           0000:38b6     c3             ret
            ; CALL XREF from str.O_O @ +0x9(x)
/ 41: fcn.000038b7 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:38b7     50             push ax                       ; arg1
|           0000:38b8     51             push cx                       ; arg3
|           0000:38b9     52             push dx                       ; arg2
|           0000:38ba     803e39d200     cmp byte [0xd239], 0
|           0000:38bf     7403           je 0x38c4
|           0000:38c1     e8772c         call fcn.0000653b
|           ; CODE XREF from fcn.000038b7 @ 0x38bf(x)
|           0000:38c4     e8d52d         call fcn.0000669c
|           0000:38c7     b91e00         mov cx, 0x1e                  ; 30
|           ; CODE XREFS from fcn.000038b7 @ 0x38d0(x), 0x38d7(x)
|           0000:38ca     bada03         mov dx, 0x3da                 ; "ket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:38cd     ec             in al, dx
|           0000:38ce     a808           test al, 8                    ; 8
|           0000:38d0     75f8           jne 0x38ca
|           ; CODE XREF from fcn.000038b7 @ 0x38d5(x)
|           0000:38d2     ec             in al, dx
|           0000:38d3     a808           test al, 8                    ; 8
|           0000:38d5     74fb           je 0x38d2
|           0000:38d7     e2f1           loop 0x38ca
|           0000:38d9 ~   e8792c         call fcn.00006555
|           ;-- str.y_ZYX:
|           0000:38da    .string "y,ZYX\xc3" ; len=6
            ; CALL XREF from fcn.00003610 @ 0x3614(x)
            ; CALL XREF from fcn.00003b94 @ 0x3b9a(x)
/ 36: fcn.000038e0 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:38e0    .string "PSQR\xb8" ; len=5                    ; arg1
|           0000:38e5     0100           add word [bx + si], ax
|           0000:38e7     50             push ax
|           0000:38e8     b80000         mov ax, 0
|           0000:38eb     50             push ax
|           0000:38ec     b8feff         mov ax, 0xfffe
|           0000:38ef     50             push ax
|           0000:38f0     b80200         mov ax, 2
|           0000:38f3     50             push ax
|           0000:38f4     b83001         mov ax, 0x130                 ; "pt or missing file :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:38f7     50             push ax
|           0000:38f8     b8ed00         mov ax, 0xed
|           0000:38fb     50             push ax
|           0000:38fc     e83400         call fcn.00003933
|           0000:38ff    .string "ZY[X\xc3" ; len=5
            ; CALL XREF from fcn.00003610 @ 0x3611(x)
            ; CALL XREF from fcn.00003b94 @ 0x3b97(x)
/ 27: fcn.00003904 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:3904     50             push ax                       ; arg1
|           0000:3905     52             push dx                       ; arg2
|           0000:3906     c60649d206     mov byte [0xd249], 6
|           0000:390b     c70647d2d800   mov word [0xd247], 0xd8       ; [0xd8:2]=0xffff ; 216
|           0000:3911     c7064ad2a001   mov word [0xd24a], 0x1a0      ; [0x1a0:2]=0x6f66 ; "for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3917     c6064cd200     mov byte [0xd24c], 0
|           0000:391c     5a             pop dx
|           0000:391d     58             pop ax
\           0000:391e     c3             ret
            ; CALL XREF from fcn.000037db @ 0x380d(x)
/ 20: fcn.0000391f (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:391f    .string "PSRW\xb2" ; len=5                    ; arg1
|           0000:3924     00e8           add al, ch
|           0000:3926     9b             wait
|           0000:3927     26e8ab26       call fcn.00005fd6
|           0000:392b     e8bb26         call fcn.00005fe9
|           0000:392e    .string "&_Z[X\xc3" ; len=6
            ; CALL XREF from fcn.000038e0 @ 0x38fc(x)
            ; CALL XREF from fcn.00003970 @ 0x39a1(x)
            ; CALL XREF from fcn.00004aea @ 0x4b11(x)
            ; CALL XREF from fcn.000064aa @ 0x64d1(x)
/ 61: fcn.00003933 (int16_t arg1);
| `- args(dx)
|           0000:3933     52             push dx                       ; arg1
|           0000:3934     57             push di
|           0000:3935     55             push bp
|           0000:3936     89e5           mov bp, sp
|           0000:3938     83c506         add bp, 6
|           0000:393b     bf6dc1         mov di, 0xc16d
|           0000:393e     32d2           xor dl, dl
|           ; CODE XREF from fcn.00003933 @ 0x394e(x)
|           0000:3940     f6450801       test byte [di + 8], 1
|           0000:3944     740c           je 0x3952
|           0000:3946     fec2           inc dl
|           0000:3948     83c710         add di, 0x10                  ; 16
|           0000:394b     80fa10         cmp dl, 0x10                  ; 16
|           0000:394e     72f0           jb 0x3940
|           0000:3950     eb18           jmp 0x396a
|           ; CODE XREF from fcn.00003933 @ 0x3944(x)
|           0000:3952     32f6           xor dh, dh
|           0000:3954     52             push dx
|           0000:3955     ff760c         push word [bp + 0xc]
|           0000:3958     ff760a         push word [bp + 0xa]
|           0000:395b     ff7608         push word [bp + 8]
|           0000:395e     ff7606         push word [bp + 6]
|           0000:3961     ff7604         push word [bp + 4]
|           0000:3964     ff7602         push word [bp + 2]
|           0000:3967     e80df5         call fcn.00002e77
|           ; CODE XREF from fcn.00003933 @ 0x3950(x)
|           0000:396a     5d             pop bp
|           0000:396b     5f             pop di
|           0000:396c     5a             pop dx
\           0000:396d     c20c00         ret 0xc
            ; CALL XREF from fcn.00002bec @ 0x2cc8(x)
/ 66: fcn.00003970 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3970    .string "PSQRW\xf6" ; len=6                   ; arg1
|           0000:3976     06             push es
|           0000:3977     55             push bp
|           0000:3978     d2ff           sar bh, cl
|           0000:397a     7430           je 0x39ac
|           0000:397c     88d3           mov bl, dl
|           0000:397e     32ff           xor bh, bh
|           0000:3980     b104           mov cl, 4
|           0000:3982     d3e3           shl bx, cl
|           0000:3984     81c36dc1       add bx, 0xc16d
|           0000:3988 ~   89df           mov di, bx
|           ;-- str.E_b2:
|           0000:3989    .string "\xdf\x8aE\b2\xe4" ; len=6
|           0000:398f     50             push ax
|           0000:3990     ff7509         push word [di + 9]
|           0000:3993     ff7506         push word [di + 6]
|           0000:3996     8b4504         mov ax, word [di + 4]
|           0000:3999     f7d8           neg ax                        ; int16_t arg1
|           0000:399b     50             push ax
|           0000:399c     ff7502         push word [di + 2]
|           0000:399f     ff35           push word [di]
|           0000:39a1     e88fff         call fcn.00003933
|           0000:39a4     fe0e55d2       dec byte [0xd255]
|           0000:39a8     fe0651d2       inc byte [0xd251]
|           ; CODE XREF from fcn.00003970 @ 0x397a(x)
|           0000:39ac    .string "_ZY[X\xc3" ; len=6
            0000:39b2     50             push ax
            0000:39b3     52             push dx
            0000:39b4     e83c00         call fcn.000039f3
            ; CODE XREF from str.O_O @ +0xc(x)
            0000:39b7     e821fe         call fcn.000037db
            ; CODE XREF from str.O_O @ +0x11(x)
            0000:39ba     e853fc         call fcn.00003610
            0000:39bd     e81c03         call fcn.00003cdc
            0000:39c0     e895fc         call fcn.00003658
            0000:39c3     84c0           test al, al
            0000:39c5     7416           je 0x39dd
            0000:39c7     3c01           cmp al, 1                     ; 1
            0000:39c9     7402           je 0x39cd
            0000:39cb     eb23           jmp 0x39f0
            ; CODE XREF from str.E_b2 @ +0x40(x)
            0000:39cd ~   fe064fd2       inc byte [0xd24f]
            ;-- str.O_O:
            0000:39cf    .string "O\xd2\x80>O\xd2" ; len=6
            0000:39d5     1e             push ds
            0000:39d6     7712           ja 0x39ea
            0000:39d8     e8dcfe         call fcn.000038b7
            0000:39db     ebda           jmp 0x39b7
            ; CODE XREF from str.E_b2 @ +0x3c(x)
            0000:39dd     e87900         call fcn.00003a59
            0000:39e0     73d8           jae 0x39ba
            0000:39e2     e8d000         call fcn.00003ab5
            0000:39e5     e89a0e         call fcn.00004882
            0000:39e8     eb06           jmp 0x39f0
            ; CODE XREF from str.O_O @ +0x7(x)
            0000:39ea     e8c202         call fcn.00003caf
            0000:39ed     e8920e         call fcn.00004882
            ; CODE XREF from str.E_b2 @ +0x42(x)
            ; CODE XREF from str.O_O @ +0x19(x)
            0000:39f0     5a             pop dx
            0000:39f1     58             pop ax
            0000:39f2     c3             ret
            ; CALL XREF from str.E_b2 @ +0x2b(x)
/ 102: fcn.000039f3 ();
|           0000:39f3     c6064fd201     mov byte [0xd24f], 1
|           0000:39f8     c6069bd300     mov byte [0xd39b], 0
|           0000:39fd     c6069cd300     mov byte [0xd39c], 0
|           0000:3a02     c6069dd300     mov byte [0xd39d], 0
|           0000:3a07     c6069ed300     mov byte [0xd39e], 0
|           0000:3a0c     c6069fd300     mov byte [0xd39f], 0
|           0000:3a11     c606a0d300     mov byte [0xd3a0], 0
|           0000:3a16     c606a2d300     mov byte [0xd3a2], 0
|           0000:3a1b     c606a3d300     mov byte [0xd3a3], 0
|           0000:3a20     c606a4d304     mov byte [0xd3a4], 4
|           0000:3a25     c606a5d300     mov byte [0xd3a5], 0
|           0000:3a2a     c606a6d300     mov byte [0xd3a6], 0
|           0000:3a2f     c606a7d300     mov byte [0xd3a7], 0
|           0000:3a34     c70699d30000   mov word [0xd399], 0
|           0000:3a3a     c60650d203     mov byte [0xd250], 3
|           0000:3a3f     c606abd300     mov byte [0xd3ab], 0
|           0000:3a44     c606acd303     mov byte [0xd3ac], 3
|           0000:3a49     c606d0ce00     mov byte [0xced0], 0
|           0000:3a4e     c6060ecf00     mov byte [0xcf0e], 0
|           0000:3a53     c60665d200     mov byte [0xd265], 0
\           0000:3a58     c3             ret
            ; CALL XREF from str.O_O @ +0xe(x)
/ 38: fcn.00003a59 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3a59     52             push dx                       ; arg2
|           0000:3a5a     fe0e50d2       dec byte [0xd250]
|           0000:3a5e     fe0eacd3       dec byte [0xd3ac]
|           0000:3a62     7909           jns 0x3a6d
|           0000:3a64     c606acd309     mov byte [0xd3ac], 9
|           0000:3a69     fe0eabd3       dec byte [0xd3ab]
|           ; CODE XREF from fcn.00003a59 @ 0x3a62(x)
|           0000:3a6d     b201           mov dl, 1
|           0000:3a6f     e87725         call fcn.00005fe9
|           0000:3a72     f60650d2ff     test byte [0xd250], 0xff
|           0000:3a77     7403           je 0x3a7c
|           0000:3a79     f8             clc
|           0000:3a7a     eb01           jmp 0x3a7d
|           ; CODE XREF from fcn.00003a59 @ 0x3a77(x)
|           0000:3a7c     f9             stc
|           ; CODE XREF from fcn.00003a59 @ 0x3a7a(x)
|           0000:3a7d     5a             pop dx
\           0000:3a7e     c3             ret
            0000:3a7f     c6062cd400     mov byte [0xd42c], 0
            0000:3a84     f6064cd2ff     test byte [0xd24c], 0xff
            0000:3a89     740f           je 0x3a9a
            0000:3a8b     f6064cd201     test byte [0xd24c], 1
            0000:3a90     7405           je 0x3a97
            0000:3a92     e80600         call fcn.00003a9b
            0000:3a95     eb03           jmp 0x3a9a
            ; CODE XREF from str.O_O @ +0xc1(x)
            0000:3a97     e870e7         call fcn.0000220a
            ; CODE XREFS from str.O_O @ +0xba(x), +0xc6(x)
            0000:3a9a     c3             ret
            ; CALL XREF from str.J.G @ +0x83(x)
            ; CALL XREF from str.O_O @ +0xc3(x)
/ 26: fcn.00003a9b (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:3a9b     50             push ax                       ; arg1
|           0000:3a9c     51             push cx                       ; arg2
|           0000:3a9d     56             push si
|           0000:3a9e     be6dc1         mov si, 0xc16d
|           0000:3aa1     b91000         mov cx, 0x10                  ; 16
|           ; CODE XREF from fcn.00003a9b @ 0x3aaf(x)
|           0000:3aa4     8a4408         mov al, byte [si + 8]
|           0000:3aa7     24f7           and al, 0xf7
|           0000:3aa9     884408         mov byte [si + 8], al
|           0000:3aac     83c610         add si, 0x10                  ; 16
|           0000:3aaf     e2f3           loop 0x3aa4
|           0000:3ab1     5e             pop si
|           0000:3ab2     59             pop cx
|           0000:3ab3     58             pop ax
\           0000:3ab4     c3             ret
            ; CALL XREF from str.O_O @ +0x13(x)
/ 28: fcn.00003ab5 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3ab5     52             push dx                       ; arg2
|           0000:3ab6     57             push di
|           0000:3ab7     e897e9         call fcn.00002451
|           0000:3aba     e87e2a         call fcn.0000653b
|           0000:3abd     e891e9         call fcn.00002451
|           0000:3ac0     b201           mov dl, 1
|           0000:3ac2     bfc008         mov di, 0x8c0
|           0000:3ac5     e8e409         call fcn.000044ac
|           0000:3ac8     b9f000         mov cx, 0xf0
|           0000:3acb     e85b00         call fcn.00003b29
|           0000:3ace     5f             pop di
|           0000:3acf     5a             pop dx
\           0000:3ad0     c3             ret
            ; CALL XREF from fcn.00005e83 @ 0x5ed1(x)
/ 88: fcn.00003ad1 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:3ad1     52             push dx                       ; arg2
|           0000:3ad2     f60663d2ff     test byte [0xd263], 0xff
|           0000:3ad7     754b           jne 0x3b24
|           0000:3ad9     80069ed302     add byte [0xd39e], 2
|           0000:3ade     803e9ed30a     cmp byte [0xd39e], 0xa
|           0000:3ae3     7235           jb 0x3b1a
|           0000:3ae5     802e9ed30a     sub byte [0xd39e], 0xa
|           0000:3aea     fe069dd3       inc byte [0xd39d]
|           0000:3aee     803e9dd30a     cmp byte [0xd39d], 0xa
|           0000:3af3     7225           jb 0x3b1a
|           0000:3af5     c6069dd300     mov byte [0xd39d], 0
|           0000:3afa     fe069cd3       inc byte [0xd39c]
|           0000:3afe     803e9cd30a     cmp byte [0xd39c], 0xa
|           0000:3b03     7215           jb 0x3b1a
|           0000:3b05     c6069cd300     mov byte [0xd39c], 0
|           0000:3b0a     fe069bd3       inc byte [0xd39b]
|           0000:3b0e     803e9bd30a     cmp byte [0xd39b], 0xa
|           0000:3b13     7205           jb 0x3b1a
|           0000:3b15     c6069bd300     mov byte [0xd39b], 0
|           ; CODE XREFS from fcn.00003ad1 @ 0x3ae3(x), 0x3af3(x), 0x3b03(x), 0x3b13(x)
|           0000:3b1a     b201           mov dl, 1
|           0000:3b1c     e8a424         call fcn.00005fc3
|           0000:3b1f     e85724         call fcn.00005f79
|           0000:3b22     eb03           jmp 0x3b27
|           ; CODE XREF from fcn.00003ad1 @ 0x3ad7(x)
|           0000:3b24     e818ea         call fcn.0000253f
|           ; CODE XREF from fcn.00003ad1 @ 0x3b22(x)
|           0000:3b27     5a             pop dx
\           0000:3b28     c3             ret
            ; CALL XREF from fcn.0000382c @ 0x385a(x)
            ; CALL XREF from fcn.00003ab5 @ 0x3acb(x)
            ; CALL XREF from fcn.00004882 @ 0x489b(x)
/ 35: fcn.00003b29 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:3b29     50             push ax                       ; arg1
|           0000:3b2a     51             push cx                       ; arg3
|           0000:3b2b     52             push dx                       ; arg2
|           0000:3b2c     e80715         call fcn.00005036
|           ; CODE XREFS from fcn.00003b29 @ 0x3b35(x), 0x3b40(x)
|           0000:3b2f     bada03         mov dx, 0x3da                 ; "ket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3b32     ec             in al, dx
|           0000:3b33     a808           test al, 8                    ; 8
|           0000:3b35     75f8           jne 0x3b2f
|           ; CODE XREF from fcn.00003b29 @ 0x3b3a(x)
|           0000:3b37     ec             in al, dx
|           0000:3b38     a808           test al, 8                    ; 8
|           0000:3b3a     74fb           je 0x3b37
|           0000:3b3c     b401           mov ah, 1
|           0000:3b3e     cd16           int 0x16
|           0000:3b40     e1ed           loope 0x3b2f
|           0000:3b42     e304           jcxz 0x3b48
|           0000:3b44     b400           mov ah, 0
|           0000:3b46     cd16           int 0x16
|           ; CODE XREF from fcn.00003b29 @ 0x3b42(x)
|           0000:3b48     5a             pop dx
|           0000:3b49     59             pop cx
|           0000:3b4a     58             pop ax
\           0000:3b4b     c3             ret
            ; CALL XREF from fcn.00003610 @ 0x3653(x)
/ 29: fcn.00003b4c (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:3b4c     50             push ax                       ; arg1
|           0000:3b4d     51             push cx                       ; arg3
|           0000:3b4e     52             push dx                       ; arg2
|           0000:3b4f     e8e414         call fcn.00005036
|           ; CODE XREFS from fcn.00003b4c @ 0x3b58(x), 0x3b63(x)
|           0000:3b52     bada03         mov dx, 0x3da                 ; "ket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3b55     ec             in al, dx
|           0000:3b56     a808           test al, 8                    ; 8
|           0000:3b58     75f8           jne 0x3b52
|           ; CODE XREF from fcn.00003b4c @ 0x3b5d(x)
|           0000:3b5a     ec             in al, dx
|           0000:3b5b     a808           test al, 8                    ; 8
|           0000:3b5d     74fb           je 0x3b5a
|           0000:3b5f     b401           mov ah, 1
|           0000:3b61     cd16           int 0x16
|           0000:3b63     e1ed           loope 0x3b52
|           0000:3b65     5a             pop dx
|           0000:3b66     59             pop cx
|           0000:3b67     58             pop ax
\           0000:3b68     c3             ret
            ; CALL XREF from fcn.00003c38 @ 0x3c3f(x)
/ 43: fcn.00003b69 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3b69     52             push dx                       ; arg2
|           0000:3b6a     56             push si
|           0000:3b6b     8b36cece       mov si, word [0xcece]
|           0000:3b6f     8a14           mov dl, byte [si]
|           0000:3b71     e843f8         call fcn.000033b7
|           0000:3b74     e86704         call fcn.00003fde
|           0000:3b77     e8f304         call fcn.0000406d
|           0000:3b7a     e8be29         call fcn.0000653b
|           0000:3b7d     e8e52a         call fcn.00006665
|           0000:3b80     46             inc si
|           0000:3b81     81fe7f07       cmp si, 0x77f                 ; "BitMaps.PAR"
|           0000:3b85     7503           jne 0x3b8a
|           0000:3b87     be7507         mov si, 0x775
|           ; CODE XREF from fcn.00003b69 @ 0x3b85(x)
|           0000:3b8a     8936cece       mov word [0xcece], si
|           0000:3b8e     e80300         call fcn.00003b94
|           0000:3b91     5e             pop si
|           0000:3b92     5a             pop dx
\           0000:3b93     c3             ret
            ; CALL XREF from fcn.00003b69 @ 0x3b8e(x)
/ 41: fcn.00003b94 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:3b94     e8ccfc         call fcn.00003863
|           0000:3b97     e86afd         call fcn.00003904
|           0000:3b9a     e843fd         call fcn.000038e0
|           0000:3b9d     e8591a         call fcn.000055f9
|           0000:3ba0     e8741c         call fcn.00005817
|           0000:3ba3     e8a41a         call fcn.0000564a
|           0000:3ba6     e85f1c         call fcn.00005808
|           0000:3ba9     e88f29         call fcn.0000653b
|           0000:3bac     c60656d200     mov byte [0xd256], 0
|           0000:3bb1     c606d0ce01     mov byte [0xced0], 1
|           0000:3bb6     e80400         call fcn.00003bbd
|           0000:3bb9     e809fc         call fcn.000037c5
\           0000:3bbc     c3             ret
            ; CALL XREF from fcn.00003b94 @ 0x3bb6(x)
/ 94: fcn.00003bbd (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(1:sp[0x2..0x2])
|           0000:3bbd     50             push ax                       ; arg1
|           0000:3bbe     51             push cx                       ; arg4
|           0000:3bbf     55             push bp
|           0000:3bc0     89e5           mov bp, sp
|           0000:3bc2     b90004         mov cx, 0x400                 ; "  ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           ; CODE XREF from fcn.00003bbd @ 0x3c06(x)
|           0000:3bc5     fe063cd2       inc byte [0xd23c]
|           0000:3bc9    .string "<\xd2\x80><\xd2" ; len=6
|           0000:3bcd     037505         add si, word [di + 5]
|           0000:3bd0     c6063cd200     mov byte [0xd23c], 0
|           ; CODE XREF from fcn.00003bbd @ 0x3bce(x)
|           0000:3bd5     e8e119         call fcn.000055b9
|           0000:3bd8     e876e8         call fcn.00002451
|           0000:3bdb     e8c61c         call fcn.000058a4
|           0000:3bde     e85ae7         call fcn.0000233b
|           0000:3be1     e83700         call fcn.00003c1b
|           0000:3be4     e822f2         call fcn.00002e09
|           0000:3be7     e8e6e7         call fcn.000023d0
|           0000:3bea     e8391f         call fcn.00005b26
|           0000:3bed     e88ee7         call fcn.0000237e
|           0000:3bf0     e8061a         call fcn.000055f9
|           0000:3bf3     e8211c         call fcn.00005817
|           0000:3bf6     e812e8         call fcn.0000240b
|           0000:3bf9     e84e1a         call fcn.0000564a
|           0000:3bfc     e8091c         call fcn.00005808
|           0000:3bff     e83929         call fcn.0000653b
|           0000:3c02     b401           mov ah, 1
|           0000:3c04     cd16           int 0x16
|           0000:3c06     e1bd           loope 0x3bc5
|           0000:3c08     e309           jcxz 0x3c13
|           0000:3c0a     b400           mov ah, 0
|           0000:3c0c     cd16           int 0x16
|           0000:3c0e     886604         mov byte [var_4h], ah
|           0000:3c11     eb04           jmp 0x3c17
|           ; CODE XREF from fcn.00003bbd @ 0x3c08(x)
|           0000:3c13     c6460400       mov byte [var_4h], 0
|           ; CODE XREF from fcn.00003bbd @ 0x3c11(x)
|           0000:3c17     5d             pop bp
|           0000:3c18     59             pop cx
|           0000:3c19     58             pop ax
\           0000:3c1a     c3             ret
            ; CALL XREF from fcn.00003bbd @ 0x3be1(x)
/ 29: fcn.00003c1b (int16_t arg1);
| `- args(ax)
|           0000:3c1b     50             push ax                       ; arg1
|           0000:3c1c     a16dc1         mov ax, word [0xc16d]         ; [0xc16d:2]=0xffff
|           0000:3c1f     2d1500         sub ax, 0x15                  ; 21
|           0000:3c22     3d0f00         cmp ax, 0xf                   ; 15
|           0000:3c25     7d03           jge 0x3c2a
|           0000:3c27     b80f00         mov ax, 0xf                   ; 15
|           ; CODE XREF from fcn.00003c1b @ 0x3c25(x)
|           0000:3c2a     3b064ad2       cmp ax, word [0xd24a]
|           0000:3c2e     7e03           jle 0x3c33
|           0000:3c30     a14ad2         mov ax, word [0xd24a]         ; [0xd24a:2]=0xffff
|           ; CODE XREF from fcn.00003c1b @ 0x3c2e(x)
|           0000:3c33     a347d2         mov word [0xd247], ax         ; [0xd247:2]=0xffff
|           0000:3c36     58             pop ax
\           0000:3c37     c3             ret
            ; CALL XREF from fcn.00000100 @ 0x51d6(x)
/ 29: fcn.00003c38 (int16_t arg1);
| `- args(ax)
|           0000:3c38     84c0           test al, al                   ; arg1
|           0000:3c3a     750b           jne 0x3c47
|           ; CODE XREF from fcn.00003c38 @ 0x3c52(x)
|           0000:3c3c     e8f713         call fcn.00005036
|           0000:3c3f     e827ff         call fcn.00003b69
|           0000:3c42     e81000         call fcn.00003c55
|           0000:3c45     730d           jae 0x3c54
|           ; CODE XREF from fcn.00003c38 @ 0x3c3a(x)
|           0000:3c47     e8ec13         call fcn.00005036
|           0000:3c4a     e85a0f         call fcn.00004ba7
|           0000:3c4d     e80500         call fcn.00003c55
|           0000:3c50     7302           jae 0x3c54
|           0000:3c52     ebe8           jmp 0x3c3c
|           ; CODE XREFS from fcn.00003c38 @ 0x3c45(x), 0x3c50(x)
\           0000:3c54     c3             ret
            ; CALL XREFS from fcn.00003c38 @ 0x3c42(x), 0x3c4d(x)
/ 32: fcn.00003c55 (uint16_t arg1);
| `- args(ax) vars(1:sp[0x2..0x2])
|           0000:3c55     50             push ax                       ; arg1
|           0000:3c56     55             push bp
|           0000:3c57     89e5           mov bp, sp
|           0000:3c59     b400           mov ah, 0
|           0000:3c5b     3c3b           cmp al, 0x3b                  ; ';' ; 59 ; arg1
|           0000:3c5d     740f           je 0x3c6e
|           0000:3c5f     fec4           inc ah
|           ;-- str._Dt_t:
|           0000:3c61    .string "<Dt\t\xfe" ; len=5                   ; arg1
|           0000:3c66     c43c           les di, [si]
|           0000:3c68     397403         cmp word [si + 3], si
|           0000:3c6b     f9             stc
|           0000:3c6c     eb04           jmp 0x3c72
|           ; CODE XREFS from fcn.00003c55 @ 0x3c5d(x), 0x3c63(x), 0x3c69(x)
|           0000:3c6e     886602         mov byte [var_2h], ah
|           0000:3c71     f8             clc
|           ; CODE XREF from fcn.00003c55 @ 0x3c6c(x)
|           0000:3c72     5d             pop bp
|           0000:3c73     58             pop ax
\           0000:3c74     c3             ret
            ; CALL XREF from fcn.00000100 @ 0x51d9(x)
/ 32: fcn.00003c75 (int16_t arg1);
| `- args(ax) vars(1:sp[0x2..0x2])
|           0000:3c75     50             push ax                       ; arg1
|           0000:3c76     56             push si
|           0000:3c77     55             push bp
|           0000:3c78     89e5           mov bp, sp
|           0000:3c7a     32e4           xor ah, ah
|           0000:3c7c     be490c         mov si, 0xc49                 ; 'I\f'
|           0000:3c7f     01c6           add si, ax                    ; arg1
|           0000:3c81     8a24           mov ah, byte [si]
|           0000:3c83     886604         mov byte [var_4h], ah
|           0000:3c86     be1b01         mov si, 0x11b
|           0000:3c89     32e4           xor ah, ah
|           0000:3c8b     d0e0           shl al, 1                     ; arg1
|           0000:3c8d     01c6           add si, ax
|           0000:3c8f     ff14           call word [si]
|           0000:3c91     5d             pop bp
|           0000:3c92     5e             pop si
|           0000:3c93     58             pop ax
\           0000:3c94     c3             ret
|           ; CODE XREF from fcn.00003cdc @ 0x3cf6(x)
|           0000:3c95     e461           in al, 0x61
|           0000:3c97     24fc           and al, 0xfc
|           0000:3c99     e661           out 0x61, al
|           0000:3c9b     e84a14         call fcn.000050e8
|           0000:3c9e     e89513         call fcn.00005036
|           0000:3ca1     e87728         call fcn.0000651b
|           0000:3ca4     e830f8         call fcn.000034d7
|           0000:3ca7     e87c12         call fcn.00004f26
|           0000:3caa     b8004c         mov ax, 0x4c00                ; "\r\x8a\r\x80\xf9\xfft\x0f\xe8\x7f\xf2\x83\xc3\x0eG\xf6E\xff\xffu\xf9\xeb\xea\xc6\x06\xcc\xce"
|           0000:3cad     cd21           int 0x21
            ; CALL XREF from str.O_O @ +0x1b(x)
/ 19: fcn.00003caf (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3caf     52             push dx                       ; arg2
|           0000:3cb0     57             push di
|           0000:3cb1     b201           mov dl, 1
|           0000:3cb3     bfd708         mov di, 0x8d7
|           0000:3cb6     e8f307         call fcn.000044ac
|           0000:3cb9     e87a13         call fcn.00005036
|           0000:3cbc     e8b312         call fcn.00004f72
|           0000:3cbf     5f             pop di
|           0000:3cc0     5a             pop dx
\           0000:3cc1     c3             ret
            ; CALL XREF from fcn.00003cdc @ 0x3cec(x)
/ 6: fcn.00003cc2 ();
|           0000:3cc2     c60665d201     mov byte [0xd265], 1
\           0000:3cc7     c3             ret
            0000:3cc8     c6062fd400     mov byte [0xd42f], 0
            ; CODE XREF from str._Dt_t @ +0x73(x)
            0000:3ccd     803e2fd401     cmp byte [0xd42f], 1
            0000:3cd2     7402           je 0x3cd6
            0000:3cd4     ebf7           jmp 0x3ccd
            ; CODE XREF from str._Dt_t @ +0x71(x)
            0000:3cd6     c6062fd400     mov byte [0xd42f], 0
            0000:3cdb     c3             ret
            ; CALL XREF from str.E_b2 @ +0x34(x)
/ 56: fcn.00003cdc (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:3cdc     50             push ax                       ; arg1
|           0000:3cdd     b401           mov ah, 1
|           0000:3cdf     cd16           int 0x16
|           0000:3ce1     7415           je 0x3cf8
|           0000:3ce3     b400           mov ah, 0
|           0000:3ce5     cd16           int 0x16
|           0000:3ce7     80fc01         cmp ah, 1                     ; 1
|           0000:3cea     7505           jne 0x3cf1
|           0000:3cec     e8d3ff         call fcn.00003cc2
|           0000:3cef     eb07           jmp 0x3cf8
|           ; CODE XREF from fcn.00003cdc @ 0x3cea(x)
|           0000:3cf1     80fc44         cmp ah, 0x44                  ; 'D' ; 68
|           0000:3cf4     7502           jne 0x3cf8
|           0000:3cf6     eb9d           jmp 0x3c95
|           ; CODE XREFS from fcn.00003cdc @ 0x3ce1(x), 0x3cef(x), 0x3cf4(x)
|           0000:3cf8     58             pop ax
|           0000:3cf9     c3             ret
            0000:3cfa     3100           xor word [bx + si], ax
            0000:3cfc ~   e27e           loop 0x3d7c                   ; fcn.00003d00+0x7c
            ;-- str.__PSQRVWU:
            0000:3cfd    .string "~;'PSQRVWU\x89" ; len=11
|           0000:3d08     e58b           in ax, 0x8b
|           0000:3d0a     c3             ret
|           0000:3d0b     d1e3           shl bx, 1
|           0000:3d0d     d1e3           shl bx, 1
|           0000:3d0f     01c3           add bx, ax
|           0000:3d11     b90400         mov cx, 4
|           0000:3d14     d3e3           shl bx, cl
|           0000:3d16     035e0c         add bx, word [var_ch]
|           0000:3d19     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3d1c     b005           mov al, 5
|           0000:3d1e     ee             out dx, al
|           0000:3d1f     42             inc dx
|           0000:3d20     b011           mov al, 0x11                  ; 17
|           0000:3d22     ee             out dx, al
|           0000:3d23     c60646d201     mov byte [0xd246], 1
|           ; CODE XREF from fcn.00003d00 @ 0x3d92(x)
|           0000:3d28     8a05           mov al, byte [di]
|           0000:3d2a     47             inc di
|           0000:3d2b     32e4           xor ah, ah
|           0000:3d2d     3cff           cmp al, 0xff
|           0000:3d2f     7463           je 0x3d94
|           0000:3d31     803dff         cmp byte [di], 0xff
|           0000:3d34     7505           jne 0x3d3b
|           0000:3d36     c60646d200     mov byte [0xd246], 0
|           ; CODE XREF from fcn.00003d00 @ 0x3d34(x)
|           0000:3d3b     3c00           cmp al, 0
|           0000:3d3d     7407           je 0x3d46
|           0000:3d3f     c60646d200     mov byte [0xd246], 0
|           0000:3d44     eb0a           jmp 0x3d50
|           ; CODE XREF from fcn.00003d00 @ 0x3d3d(x)
|           0000:3d46     803e46d201     cmp byte [0xd246], 1
|           0000:3d4b     7503           jne 0x3d50
|           0000:3d4d     b8ffff         mov ax, 0xffff
|           ; CODE XREFS from fcn.00003d00 @ 0x3d44(x), 0x3d4b(x)
|           0000:3d50     be0cdc         mov si, 0xdc0c
|           0000:3d53     89c1           mov cx, ax
|           0000:3d55     d1e0           shl ax, 1
|           0000:3d57     03c1           add ax, cx
|           0000:3d59     d1e0           shl ax, 1
|           0000:3d5b     d1e0           shl ax, 1
|           0000:3d5d     01c6           add si, ax
|           0000:3d5f     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREF from fcn.00003d00 @ 0x3d6c(x)
|           0000:3d62     268a04         mov al, byte es:[si]
|           0000:3d65     46             inc si
|           0000:3d66     268807         mov byte es:[bx], al
|           0000:3d69     83c350         add bx, 0x50                  ; 80
|           0000:3d6c     e2f4           loop 0x3d62
|           0000:3d6e     f64606ff       test byte [var_6h], 0xff
|           0000:3d72     741a           je 0x3d8e
|           0000:3d74     83ee0c         sub si, 0xc                   ; 12
|           0000:3d77     81c3406a       add bx, 0x6a40
|           0000:3d7b     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREF from fcn.00003d00 @ 0x3d88(x)
|           0000:3d7e     268a04         mov al, byte es:[si]
|           0000:3d81     46             inc si
|           0000:3d82     268807         mov byte es:[bx], al
|           0000:3d85     83c350         add bx, 0x50                  ; 80
|           0000:3d88     e2f4           loop 0x3d7e
|           0000:3d8a     81eb006e       sub bx, 0x6e00
|           ; CODE XREF from fcn.00003d00 @ 0x3d72(x)
|           0000:3d8e     81ebbf03       sub bx, 0x3bf                 ; "- * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3d92     eb94           jmp 0x3d28
|           ; CODE XREF from fcn.00003d00 @ 0x3d2f(x)
|           0000:3d94     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3d97     b005           mov al, 5
|           0000:3d99     ee             out dx, al
|           0000:3d9a     42             inc dx
|           0000:3d9b     b010           mov al, 0x10                  ; 16
|           0000:3d9d     ee             out dx, al
|           0000:3d9e    .string "]_^ZY[X\xc3" ; len=8
            ; XREFS: CALL 0x00003f7a  CALL 0x00003f8d  CALL 0x00005ea5  CALL 0x00005ec7  CALL 0x000062e2  CALL 0x000062eb  
            ; XREFS: CALL 0x000062f7  CALL 0x00006329  
/ 228: fcn.00003da6 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(3:sp[0x2..0xc])
|           0000:3da6    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:3dae     e5ba           in ax, 0xba
|           0000:3db0     ce             into
|           0000:3db1     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:3db5     42             inc dx
|           0000:3db6     b00f           mov al, 0xf                   ; 15
|           0000:3db8     ee             out dx, al
|           0000:3db9     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3dbc     32c0           xor al, al
|           0000:3dbe     ee             out dx, al
|           0000:3dbf     42             inc dx
|           0000:3dc0     8a4606         mov al, byte [var_6h]
|           0000:3dc3     ee             out dx, al
|           0000:3dc4     8bc3           mov ax, bx
|           0000:3dc6     d1e3           shl bx, 1
|           0000:3dc8     d1e3           shl bx, 1
|           0000:3dca     01c3           add bx, ax
|           0000:3dcc     d1e3           shl bx, 1
|           0000:3dce     d1e3           shl bx, 1
|           0000:3dd0     d1e3           shl bx, 1
|           0000:3dd2     d1e3           shl bx, 1
|           0000:3dd4     8b460c         mov ax, word [var_ch]
|           0000:3dd7     d1e8           shr ax, 1
|           0000:3dd9     d1e8           shr ax, 1
|           0000:3ddb     d1e8           shr ax, 1
|           0000:3ddd     01c3           add bx, ax
|           0000:3ddf     031e37d2       add bx, word [0xd237]
|           0000:3de3     53             push bx
|           0000:3de4     8b4e0c         mov cx, word [var_ch]
|           0000:3de7     80e107         and cl, 7
|           ; CODE XREF from fcn.00003da6 @ 0x3e23(x)
|           0000:3dea     8a05           mov al, byte [di]
|           0000:3dec     47             inc di
|           0000:3ded     84c0           test al, al
|           0000:3def    .string "t4, 2\xe4" ; len=6
|           0000:3df5     d1e0           shl ax, 1
|           0000:3df7     d1e0           shl ax, 1
|           0000:3df9     d1e0           shl ax, 1
|           0000:3dfb     0564c3         add ax, 0xc364
|           0000:3dfe     8bf0           mov si, ax
|           0000:3e00     b407           mov ah, 7
|           ; CODE XREF from fcn.00003da6 @ 0x3e1d(x)
|           0000:3e02     8a2c           mov ch, byte [si]
|           0000:3e04     d2ed           shr ch, cl
|           0000:3e06     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3e09     b008           mov al, 8
|           0000:3e0b     ee             out dx, al
|           0000:3e0c     42             inc dx
|           0000:3e0d     88e8           mov al, ch
|           0000:3e0f     ee             out dx, al
|           0000:3e10     268a07         mov al, byte es:[bx]
|           0000:3e13     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:3e17     83c350         add bx, 0x50                  ; 80
|           0000:3e1a     46             inc si
|           0000:3e1b     fecc           dec ah
|           0000:3e1d     75e3           jne 0x3e02
|           0000:3e1f     81eb2f02       sub bx, 0x22f                 ; "eturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3e23     ebc5           jmp 0x3dea
|           ; CODE XREF from fcn.00003da6 @ 0x3def(x)
|           0000:3e25     5b             pop bx
|           0000:3e26     84c9           test cl, cl
|           0000:3e28     7444           je 0x3e6e
|           0000:3e2a     43             inc bx
|           0000:3e2b     80e908         sub cl, 8
|           0000:3e2e     f6d9           neg cl
|           0000:3e30     8b7e02         mov di, word [var_2h]
|           ; CODE XREF from fcn.00003da6 @ 0x3e6c(x)
|           0000:3e33     8a05           mov al, byte [di]
|           0000:3e35     47             inc di
|           0000:3e36     84c0           test al, al
|           ;-- str.t4__2:
|           0000:3e38    .string "t4, 2\xe4" ; len=6
|           0000:3e3e     d1e0           shl ax, 1
|           0000:3e40     d1e0           shl ax, 1
|           0000:3e42     d1e0           shl ax, 1
|           0000:3e44     0564c3         add ax, 0xc364
|           0000:3e47     8bf0           mov si, ax
|           0000:3e49     b407           mov ah, 7
|           ; CODE XREF from fcn.00003da6 @ 0x3e66(x)
|           0000:3e4b     8a2c           mov ch, byte [si]
|           0000:3e4d     d2e5           shl ch, cl
|           0000:3e4f     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3e52     b008           mov al, 8
|           0000:3e54     ee             out dx, al
|           0000:3e55     42             inc dx
|           0000:3e56     88e8           mov al, ch
|           0000:3e58     ee             out dx, al
|           0000:3e59     268a07         mov al, byte es:[bx]
|           0000:3e5c     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:3e60     83c350         add bx, 0x50                  ; 80
|           0000:3e63     46             inc si
|           0000:3e64     fecc           dec ah
|           0000:3e66     75e3           jne 0x3e4b
|           0000:3e68     81eb2f02       sub bx, 0x22f                 ; "eturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3e6c     ebc5           jmp 0x3e33
|           ; CODE XREFS from fcn.00003da6 @ 0x3e28(x), 0x3e38(x)
|           0000:3e6e     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3e71     b008           mov al, 8
|           0000:3e73     ee             out dx, al
|           0000:3e74     42             inc dx
|           0000:3e75     b0ff           mov al, 0xff
|           0000:3e77     ee             out dx, al
|           0000:3e78     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:3e7b     b001           mov al, 1
|           0000:3e7d     ee             out dx, al
|           0000:3e7e     42             inc dx
|           0000:3e7f     b000           mov al, 0
|           0000:3e81     ee             out dx, al
|           0000:3e82    .string "]_^ZY[X\xc3" ; len=8
            ;-- str.PSQRWU:
            ; XREFS(22)
/ 61: fcn.00003e8a (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0xe..0x10])
|           0000:3e8a    .string "PSQRWU\x89" ; len=7                  ; arg1
|           0000:3e91     e550           in ax, 0x50
|           0000:3e93     53             push bx
|           0000:3e94     ff4efe         dec word [var_2h]
|           ; CODE XREFS from fcn.00003e8a @ 0x3ead(x), 0x3ebc(x)
|           0000:3e97     ff46fe         inc word [var_2h]
|           0000:3e9a     8a05           mov al, byte [di]
|           0000:3e9c     47             inc di
|           0000:3e9d     84c0           test al, al
|           0000:3e9f     741d           je str._X__ZY_X
|           0000:3ea1     3c80           cmp al, 0x80                  ; 128
|           0000:3ea3     720a           jb 0x3eaf
|           0000:3ea5     ff4efe         dec word [var_2h]
|           0000:3ea8     2c80           sub al, 0x80                  ; 128
|           0000:3eaa     a2ccce         mov byte [0xcecc], al         ; [0xcecc:1]=255
|           0000:3ead     ebe8           jmp 0x3e97
|           ; CODE XREF from fcn.00003e8a @ 0x3ea3(x)
|           0000:3eaf     8ad0           mov dl, al
|           0000:3eb1     8b46fe         mov ax, word [var_2h]
|           0000:3eb4     8b5efc         mov bx, word [var_4h]
|           0000:3eb7     b100           mov cl, 0
|           0000:3eb9     e85a06         call fcn.00004516
|           0000:3ebc     ebd9           jmp 0x3e97
|           ;-- str._X__ZY_X:
|           ; CODE XREF from fcn.00003e8a @ 0x3e9f(x)
|           0000:3ebe    .string "[X]_ZY[X\xc3" ; len=9
            ; CALL XREFS from fcn.00004a53 @ 0x4a94(x), 0x4aac(x)
/ 65: fcn.00003ec7 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3ec7    .string "PQRW\xc6" ; len=5                    ; arg1
|           0000:3ecc     06             push es
|           0000:3ecd     46             inc si
|           0000:3ece     d201           rol byte [bx + di], cl
|           0000:3ed0     48             dec ax                        ; arg1
|           ; CODE XREF from fcn.00003ec7 @ 0x3f01(x)
|           0000:3ed1     40             inc ax
|           0000:3ed2     8a15           mov dl, byte [di]
|           0000:3ed4     47             inc di
|           0000:3ed5     80faff         cmp dl, 0xff
|           0000:3ed8     7429           je 0x3f03
|           0000:3eda     803dff         cmp byte [di], 0xff
|           0000:3edd     7505           jne 0x3ee4
|           0000:3edf     c60646d200     mov byte [0xd246], 0
|           ; CODE XREF from fcn.00003ec7 @ 0x3edd(x)
|           0000:3ee4     80fa00         cmp dl, 0
|           0000:3ee7     7407           je 0x3ef0
|           0000:3ee9     c60646d200     mov byte [0xd246], 0
|           0000:3eee     eb09           jmp 0x3ef9
|           ; CODE XREF from fcn.00003ec7 @ 0x3ee7(x)
|           0000:3ef0     803e46d201     cmp byte [0xd246], 1
|           0000:3ef5     7502           jne 0x3ef9
|           0000:3ef7     b2f0           mov dl, 0xf0
|           ; CODE XREFS from fcn.00003ec7 @ 0x3eee(x), 0x3ef5(x)
|           0000:3ef9     80c230         add dl, 0x30                  ; 48
|           0000:3efc     b100           mov cl, 0
|           0000:3efe     e81506         call fcn.00004516
|           0000:3f01     ebce           jmp 0x3ed1
|           ; CODE XREF from fcn.00003ec7 @ 0x3ed8(x)
|           0000:3f03    .string "_ZYX\xc3" ; len=5
            ; CALL XREF from fcn.000037db @ 0x3807(x)
/ 146: fcn.00003f08 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3f08    .string "PSQRVW\xb8" ; len=7                  ; arg1
|           0000:3f0f     0000           add byte [bx + si], al
|           0000:3f11     bb0000         mov bx, 0                     ; int16_t arg3
|           0000:3f14     b9df01         mov cx, 0x1df                 ; "al error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:3f17     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg2
|           0000:3f1a     e8d503         call fcn.000042f2
|           0000:3f1d     b80f00         mov ax, 0xf                   ; 15 ; int16_t arg1
|           0000:3f20     bb0b00         mov bx, 0xb                   ; 11 ; int16_t arg3
|           0000:3f23     b9cf01         mov cx, 0x1cf                 ; " DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:3f26     ba5101         mov dx, 0x151                 ; "\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg2
|           0000:3f29     e84604         call fcn.00004372
|           0000:3f2c     b8f001         mov ax, 0x1f0                 ; "high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg1
|           0000:3f2f     bb0000         mov bx, 0                     ; int16_t arg3
|           0000:3f32     b97f02         mov cx, 0x27f                 ; "s 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:3f35     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg2
|           0000:3f38     e8b703         call fcn.000042f2
|           0000:3f3b     e8fe08         call fcn.0000483c
|           0000:3f3e     beaf0a         mov si, 0xaaf
|           ; CODE XREF from fcn.00003f08 @ 0x3f66(x)
|           0000:3f41     8b04           mov ax, word [si]
|           0000:3f43     3dffff         cmp ax, 0xffff
|           0000:3f46     7420           je 0x3f68
|           0000:3f48     8b5c02         mov bx, word [si + 2]         ; int16_t arg3
|           0000:3f4b     8b4c04         mov cx, word [si + 4]         ; int16_t arg4
|           0000:3f4e     8b5406         mov dx, word [si + 6]         ; int16_t arg2
|           0000:3f51     e89e03         call fcn.000042f2
|           0000:3f54     051100         add ax, 0x11                  ; 17 ; int16_t arg1
|           0000:3f57     83c30d         add bx, 0xd                   ; 13 ; int16_t arg3
|           0000:3f5a     83e911         sub cx, 0x11                  ; 17 ; int16_t arg4
|           0000:3f5d     83ea0d         sub dx, 0xd                   ; 13 ; int16_t arg2
|           0000:3f60     e80f04         call fcn.00004372
|           0000:3f63     83c608         add si, 8
|           0000:3f66     ebd9           jmp 0x3f41
|           ; CODE XREF from fcn.00003f08 @ 0x3f46(x)
|           0000:3f68     bee90a         mov si, 0xae9
|           0000:3f6b     b200           mov dl, 0
|           ; CODE XREF from fcn.00003f08 @ 0x3f80(x)
|           0000:3f6d     8b04           mov ax, word [si]
|           0000:3f6f     3dffff         cmp ax, 0xffff
|           0000:3f72     740e           je 0x3f82
|           0000:3f74     8b5c02         mov bx, word [si + 2]         ; int16_t arg3
|           0000:3f77     8b7c04         mov di, word [si + 4]
|           0000:3f7a     e829fe         call fcn.00003da6
|           0000:3f7d     83c606         add si, 6
|           0000:3f80     ebeb           jmp 0x3f6d
|           ; CODE XREF from fcn.00003f08 @ 0x3f72(x)
|           0000:3f82     b82502         mov ax, 0x225                 ; "disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg1
|           0000:3f85     bbc400         mov bx, 0xc4                  ; 196 ; int16_t arg3
|           0000:3f88     bfe30a         mov di, str.BONUS             ; 0xae3 ; "BONUS"
|           0000:3f8b     b207           mov dl, 7
|           0000:3f8d     e816fe         call fcn.00003da6
|           0000:3f90     e80700         call fcn.00003f9a
|           0000:3f93    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003f08 @ 0x3f90(x)
            ; CALL XREF from fcn.00003fde @ 0x4063(x)
/ 68: fcn.00003f9a (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3f9a    .string "PSQRVW\xbe" ; len=7                  ; arg1
|           0000:3fa1     030b           add cx, word [bp + di]
|           ; CODE XREF from fcn.00003f9a @ 0x3fb9(x)
|           0000:3fa3     8b04           mov ax, word [si]
|           0000:3fa5     3dffff         cmp ax, 0xffff
|           0000:3fa8     7411           je 0x3fbb
|           0000:3faa     8b5c02         mov bx, word [si + 2]
|           0000:3fad     8b4c04         mov cx, word [si + 4]
|           0000:3fb0     8b5406         mov dx, word [si + 6]
|           0000:3fb3     e83c03         call fcn.000042f2
|           0000:3fb6     83c608         add si, 8
|           0000:3fb9     ebe8           jmp 0x3fa3
|           ; CODE XREF from fcn.00003f9a @ 0x3fa8(x)
|           0000:3fbb     bf150b         mov di, 0xb15                 ; '\x15\v'
|           ; CODE XREF from fcn.00003f9a @ 0x3fd5(x)
|           0000:3fbe     8b05           mov ax, word [di]
|           0000:3fc0     3dffff         cmp ax, 0xffff
|           0000:3fc3     7412           je 0x3fd7
|           0000:3fc5     8b5d02         mov bx, word [di + 2]         ; int16_t arg3
|           0000:3fc8     83c704         add di, 4
|           0000:3fcb     e8bcfe         call fcn.00003e8a
|           ; CODE XREF from fcn.00003f9a @ 0x3fd3(x)
|           0000:3fce     47             inc di
|           0000:3fcf     f645ffff       test byte [di - 1], 0xff
|           0000:3fd3     75f9           jne 0x3fce
|           0000:3fd5     ebe7           jmp 0x3fbe
|           ; CODE XREF from fcn.00003f9a @ 0x3fc3(x)
|           0000:3fd7    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003b69 @ 0x3b74(x)
/ 143: fcn.00003fde (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:3fde    .string "PSQRVW\xf6" ; len=7                  ; arg1
|           0000:3fe5     06             push es
|           0000:3fe6     39d2           cmp dx, dx
|           0000:3fe8     ff7505         push word [di + 5]
|           0000:3feb     e8ae26         call fcn.0000669c
|           0000:3fee     eb03           jmp 0x3ff3
|           ; CODE XREF from fcn.00003fde @ 0x3fe9(x)
|           0000:3ff0     e8ba26         call fcn.000066ad
|           ; CODE XREF from fcn.00003fde @ 0x3fee(x)
|           0000:3ff3     b80000         mov ax, 0                     ; int16_t arg1
|           0000:3ff6     bb0000         mov bx, 0                     ; int16_t arg3
|           0000:3ff9     b9df01         mov cx, 0x1df                 ; "al error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:3ffc     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg2
|           0000:3fff     e8f002         call fcn.000042f2
|           0000:4002     b80f00         mov ax, 0xf                   ; 15 ; int16_t arg1
|           0000:4005     bb0b00         mov bx, 0xb                   ; 11 ; int16_t arg3
|           0000:4008     b9cf01         mov cx, 0x1cf                 ; " DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:400b     ba5101         mov dx, 0x151                 ; "\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg2
|           0000:400e     e86103         call fcn.00004372
|           0000:4011     b8f001         mov ax, 0x1f0                 ; "high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg1
|           0000:4014     bb0000         mov bx, 0                     ; int16_t arg3
|           0000:4017     b97f02         mov cx, 0x27f                 ; "s 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:401a     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg2
|           0000:401d     e8d202         call fcn.000042f2
|           0000:4020     e81908         call fcn.0000483c
|           0000:4023     bec409         mov si, 0x9c4
|           ; CODE XREF from fcn.00003fde @ 0x403c(x)
|           0000:4026     8b04           mov ax, word [si]
|           0000:4028     3dffff         cmp ax, 0xffff
|           0000:402b     7411           je 0x403e
|           0000:402d     8b5c02         mov bx, word [si + 2]         ; int16_t arg3
|           0000:4030     8b4c04         mov cx, word [si + 4]         ; int16_t arg4
|           0000:4033     8b5406         mov dx, word [si + 6]         ; int16_t arg2
|           0000:4036     e8b902         call fcn.000042f2
|           0000:4039     83c608         add si, 8
|           0000:403c     ebe8           jmp 0x4026
|           ; CODE XREF from fcn.00003fde @ 0x402b(x)
|           0000:403e     c606ccce00     mov byte [0xcecc], 0
|           0000:4043     bede09         mov si, 0x9de
|           ; CODE XREF from fcn.00003fde @ 0x4061(x)
|           0000:4046     8b04           mov ax, word [si]
|           0000:4048     83c602         add si, 2
|           0000:404b     3dffff         cmp ax, 0xffff
|           0000:404e     7413           je 0x4063
|           0000:4050     8b1c           mov bx, word [si]             ; int16_t arg3
|           0000:4052     83c602         add si, 2
|           0000:4055     89f7           mov di, si
|           0000:4057     e830fe         call fcn.00003e8a
|           ; CODE XREF from fcn.00003fde @ 0x405f(x)
|           0000:405a     46             inc si
|           0000:405b     f644ffff       test byte [si - 1], 0xff
|           0000:405f     75f9           jne 0x405a
|           0000:4061     ebe3           jmp 0x4046
|           ; CODE XREF from fcn.00003fde @ 0x404e(x)
|           0000:4063     e834ff         call fcn.00003f9a
|           0000:4066    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.000037db @ 0x380a(x)
            ; CALL XREF from fcn.00003b69 @ 0x3b77(x)
/ 33: fcn.0000406d (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, bx, cx)
|           0000:406d     50             push ax                       ; arg1
|           0000:406e     53             push bx                       ; arg2
|           0000:406f     51             push cx                       ; arg3
|           0000:4070     bb0081         mov bx, 0x8100
|           0000:4073     32e4           xor ah, ah
|           ; CODE XREF from fcn.0000406d @ 0x4088(x)
|           0000:4075     32c0           xor al, al
|           ; CODE XREF from fcn.0000406d @ 0x4081(x)
|           0000:4077     8a0f           mov cl, byte [bx]
|           0000:4079     43             inc bx                        ; int16_t arg3
|           0000:407a     e8a219         call fcn.00005a1f
|           0000:407d     fec0           inc al
|           0000:407f     3c12           cmp al, 0x12                  ; 18
|           0000:4081     76f4           jbe 0x4077
|           0000:4083     fec4           inc ah
|           0000:4085     80fc0d         cmp ah, 0xd                   ; 13
|           0000:4088     76eb           jbe 0x4075
|           0000:408a     59             pop cx
|           0000:408b     5b             pop bx
|           0000:408c     58             pop ax
\           0000:408d     c3             ret
            ; CALL XREF from fcn.000042f2 @ 0x4314(x)
            ; CALL XREF from fcn.00004372 @ 0x4384(x)
/ 270: fcn.0000408e (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:408e    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:4094     e583           in ax, 0x83
|           0000:4096     c50a           lds cx, [bp + si]
|           0000:4098     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:409b     b001           mov al, 1
|           0000:409d     ee             out dx, al
|           0000:409e     42             inc dx
|           0000:409f     b00f           mov al, 0xf                   ; 15
|           0000:40a1     ee             out dx, al
|           0000:40a2     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:40a5     32c0           xor al, al
|           0000:40a7     ee             out dx, al
|           0000:40a8     42             inc dx
|           0000:40a9     8a460a         mov al, byte [bp + 0xa]
|           0000:40ac     ee             out dx, al
|           0000:40ad ~   8b4608         mov ax, word [bp + 8]
|           ;-- str.F_bF:
|           0000:40ae    .string "F\b+F\x04" ; len=5
|           0000:40b3     40             inc ax
|           0000:40b4     a3b2d3         mov word [0xd3b2], ax         ; [0xd3b2:2]=0xffff
|           0000:40b7     8b4604         mov ax, word [bp + 4]
|           0000:40ba     8bd8           mov bx, ax
|           0000:40bc     d1e0           shl ax, 1
|           0000:40be     d1e0           shl ax, 1
|           0000:40c0     01d8           add ax, bx
|           0000:40c2     d1e0           shl ax, 1
|           0000:40c4     d1e0           shl ax, 1
|           0000:40c6     d1e0           shl ax, 1
|           0000:40c8     d1e0           shl ax, 1
|           0000:40ca     a3aed3         mov word [0xd3ae], ax         ; [0xd3ae:2]=0xffff
|           0000:40cd     8b4602         mov ax, word [bp + 2]
|           0000:40d0     d1e8           shr ax, 1
|           0000:40d2     d1e8           shr ax, 1
|           0000:40d4     d1e8           shr ax, 1
|           0000:40d6     40             inc ax
|           0000:40d7     8b4e06         mov cx, word [bp + 6]
|           0000:40da     d1e9           shr cx, 1
|           0000:40dc     d1e9           shr cx, 1
|           0000:40de     d1e9           shr cx, 1
|           0000:40e0     49             dec cx
|           0000:40e1     2bc8           sub cx, ax
|           0000:40e3     41             inc cx
|           0000:40e4     890eb0d3       mov word [0xd3b0], cx
|           0000:40e8     8bd8           mov bx, ax
|           0000:40ea     031eaed3       add bx, word [0xd3ae]
|           0000:40ee     031e37d2       add bx, word [0xd237]
|           0000:40f2     a1b2d3         mov ax, word [0xd3b2]         ; [0xd3b2:2]=0xffff
|           ; CODE XREF from fcn.0000408e @ 0x4108(x)
|           0000:40f5     8b0eb0d3       mov cx, word [0xd3b0]
|           ; CODE XREF from fcn.0000408e @ 0x40fe(x)
|           0000:40f9     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:40fd     43             inc bx
|           0000:40fe     e2f9           loop 0x40f9
|           0000:4100     2b1eb0d3       sub bx, word [0xd3b0]
|           0000:4104     83c350         add bx, 0x50                  ; 80
|           0000:4107     48             dec ax
|           0000:4108     75eb           jne 0x40f5
|           0000:410a     b0ff           mov al, 0xff
|           0000:410c     8b4e02         mov cx, word [bp + 2]
|           0000:410f     80e107         and cl, 7
|           0000:4112     d2e8           shr al, cl
|           0000:4114     8ad8           mov bl, al
|           0000:4116     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4119     b008           mov al, 8
|           0000:411b     ee             out dx, al
|           0000:411c     42             inc dx
|           0000:411d     8ac3           mov al, bl
|           0000:411f     ee             out dx, al
|           0000:4120     8b4602         mov ax, word [bp + 2]
|           0000:4123     d1e8           shr ax, 1
|           0000:4125     d1e8           shr ax, 1
|           0000:4127     d1e8           shr ax, 1
|           0000:4129     8b1eaed3       mov bx, word [0xd3ae]
|           0000:412d     01c3           add bx, ax
|           0000:412f     031e37d2       add bx, word [0xd237]
|           0000:4133     8b0eb2d3       mov cx, word [0xd3b2]
|           ; CODE XREF from fcn.0000408e @ 0x4141(x)
|           0000:4137     268a07         mov al, byte es:[bx]
|           0000:413a     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:413e     83c350         add bx, 0x50                  ; 80
|           0000:4141     e2f4           loop 0x4137
|           0000:4143     b0ff           mov al, 0xff
|           0000:4145     8b4e06         mov cx, word [bp + 6]
|           0000:4148     80e107         and cl, 7
|           0000:414b     d2e8           shr al, cl
|           0000:414d     d0e8           shr al, 1
|           0000:414f     f6d0           not al
|           0000:4151     8ad8           mov bl, al
|           0000:4153     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4156     b008           mov al, 8
|           0000:4158     ee             out dx, al
|           0000:4159     42             inc dx
|           0000:415a     8ac3           mov al, bl
|           0000:415c     ee             out dx, al
|           0000:415d     8b4606         mov ax, word [bp + 6]
|           0000:4160     d1e8           shr ax, 1
|           0000:4162     d1e8           shr ax, 1
|           0000:4164     d1e8           shr ax, 1
|           0000:4166     8b1eaed3       mov bx, word [0xd3ae]
|           0000:416a     01c3           add bx, ax
|           0000:416c     031e37d2       add bx, word [0xd237]
|           0000:4170     8b0eb2d3       mov cx, word [0xd3b2]
|           ; CODE XREF from fcn.0000408e @ 0x417e(x)
|           0000:4174     268a07         mov al, byte es:[bx]
|           0000:4177     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:417b     83c350         add bx, 0x50                  ; 80
|           0000:417e     e2f4           loop 0x4174
|           0000:4180     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4183     b001           mov al, 1
|           0000:4185     ee             out dx, al
|           0000:4186     42             inc dx
|           0000:4187     b000           mov al, 0
|           0000:4189     ee             out dx, al
|           0000:418a     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:418d     b008           mov al, 8
|           0000:418f     ee             out dx, al
|           0000:4190     42             inc dx
|           0000:4191     b0ff           mov al, 0xff
|           0000:4193     ee             out dx, al
|           0000:4194    .string "]ZY[X\xc2" ; len=6
\           0000:419a     0a00           or al, byte [bx + si]
            ; XREFS: CALL 0x0000432d  CALL 0x00004332  CALL 0x00004364  CALL 0x00004369  CALL 0x00004392  CALL 0x00004397  
            ; XREFS: CALL 0x000043bf  CALL 0x000043c4  CALL 0x00005c18  
/ 216: fcn.0000419c (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(3:sp[0x2..0x8])
|           0000:419c    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:41a2     e5ba           in ax, 0xba
|           0000:41a4     ce             into
|           0000:41a5     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:41a9     42             inc dx
|           0000:41aa     b00f           mov al, 0xf                   ; 15
|           0000:41ac     ee             out dx, al
|           0000:41ad     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:41b0     32c0           xor al, al
|           0000:41b2     ee             out dx, al
|           0000:41b3     42             inc dx
|           0000:41b4     8a4602         mov al, byte [var_2h]
|           0000:41b7     ee             out dx, al
|           0000:41b8     89c8           mov ax, cx
|           0000:41ba     d1e1           shl cx, 1
|           0000:41bc     d1e1           shl cx, 1
|           0000:41be     03c8           add cx, ax
|           0000:41c0     d1e1           shl cx, 1
|           0000:41c2     d1e1           shl cx, 1
|           0000:41c4     d1e1           shl cx, 1
|           0000:41c6     d1e1           shl cx, 1
|           0000:41c8     890eb4d3       mov word [0xd3b4], cx
|           0000:41cc     8b4608         mov ax, word [var_8h]
|           0000:41cf     d1e8           shr ax, 1
|           0000:41d1     d1e8           shr ax, 1
|           0000:41d3     d1e8           shr ax, 1
|           0000:41d5     40             inc ax
|           0000:41d6     8b4e06         mov cx, word [var_6h]
|           0000:41d9     d1e9           shr cx, 1
|           0000:41db     d1e9           shr cx, 1
|           0000:41dd     d1e9           shr cx, 1
|           0000:41df     49             dec cx
|           0000:41e0     2bc8           sub cx, ax
|           0000:41e2     41             inc cx
|           0000:41e3     8bd8           mov bx, ax
|           0000:41e5     031eb4d3       add bx, word [0xd3b4]
|           0000:41e9     031e37d2       add bx, word [0xd237]
|           0000:41ed     85c9           test cx, cx
|           ;-- str.t_tx_a:
|           0000:41ef    .string "t\tx\a&\xc6" ; len=6
|           0000:41f5     07             pop es
|           0000:41f6     ff43e2         inc word [bp + di - 0x1e]
|           0000:41f9     f9             stc
|           ; CODE XREFS from fcn.0000419c @ 0x41ef(x), 0x41f1(x)
|           0000:41fa     b0ff           mov al, 0xff
|           0000:41fc     8b4e08         mov cx, word [var_8h]
|           0000:41ff     80e107         and cl, 7
|           ; DATA XREF from str.Corrupt_or_missing_file_:_r_n_r_n_______r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_creating_high_score_table_file._r_n_r_nCheck_for_full_disk_or_write_protect._r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_writing_high_score_table_file._r_n_r_nCheck_for_write_protect_on_disk._r_n_r_nReturning_to_DOS_..._r_n_r_n__r_n_r_nNot_enough_video_memory_installed___Paranoid_requires_256Kb._r_n_r_n__r_n_r_nSorry__Paranoid_requires_colour_EGA___VGA_to_run._r_n_r_n_G @ +0x19c(r)
|           0000:4202     d2e8           shr al, cl
|           0000:4204     8ad8           mov bl, al
|           0000:4206     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4209     b008           mov al, 8
|           0000:420b     ee             out dx, al
|           0000:420c     42             inc dx
|           0000:420d     8ac3           mov al, bl
|           0000:420f     ee             out dx, al
|           0000:4210     8b5e08         mov bx, word [var_8h]
|           0000:4213     d1eb           shr bx, 1
|           0000:4215     d1eb           shr bx, 1
|           0000:4217     d1eb           shr bx, 1
|           0000:4219     031eb4d3       add bx, word [0xd3b4]
|           0000:421d     031e37d2       add bx, word [0xd237]
|           0000:4221     268a07         mov al, byte es:[bx]
|           0000:4224     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:4228     b0ff           mov al, 0xff
|           0000:422a     8b4e06         mov cx, word [var_6h]
|           0000:422d     80e107         and cl, 7
|           0000:4230     d2e8           shr al, cl
|           0000:4232     d0e8           shr al, 1
|           0000:4234     f6d0           not al
|           0000:4236     8ad8           mov bl, al
|           0000:4238     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:423b     b008           mov al, 8
|           0000:423d     ee             out dx, al
|           0000:423e     42             inc dx
|           0000:423f     8ac3           mov al, bl
|           0000:4241     ee             out dx, al
|           0000:4242     8b5e06         mov bx, word [var_6h]
|           0000:4245     d1eb           shr bx, 1
|           0000:4247     d1eb           shr bx, 1
|           0000:4249     d1eb           shr bx, 1
|           0000:424b     031eb4d3       add bx, word [0xd3b4]
|           0000:424f     031e37d2       add bx, word [0xd237]
|           0000:4253     268a07         mov al, byte es:[bx]
|           0000:4256     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:425a     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:425d     b001           mov al, 1
|           0000:425f     ee             out dx, al
|           0000:4260     42             inc dx
|           0000:4261     b000           mov al, 0
|           0000:4263     ee             out dx, al
|           0000:4264     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4267     b008           mov al, 8
|           0000:4269     ee             out dx, al
|           0000:426a     42             inc dx
|           0000:426b     b0ff           mov al, 0xff
|           0000:426d     ee             out dx, al
|           0000:426e    .string "]ZY[X\xc3" ; len=6
            ; XREFS: CALL 0x0000433e  CALL 0x00004343  CALL 0x00004352  CALL 0x00004357  CALL 0x000043a7  CALL 0x000043ac  
            ; XREFS: CALL 0x000043d6  CALL 0x000043db  
/ 126: fcn.00004274 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(4:sp[0x2..0x8])
|           0000:4274    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:427a     e5ba           in ax, 0xba
|           0000:427c     ce             into
|           0000:427d     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:4281     42             inc dx
|           0000:4282     b00f           mov al, 0xf                   ; 15
|           0000:4284     ee             out dx, al
|           0000:4285     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4288     32c0           xor al, al
|           0000:428a     ee             out dx, al
|           0000:428b     42             inc dx
|           0000:428c     8a4602         mov al, byte [var_2h]
|           0000:428f     ee             out dx, al
|           0000:4290     80e107         and cl, 7
|           0000:4293     b080           mov al, 0x80                  ; 128
|           0000:4295     d2e8           shr al, cl
|           0000:4297     8ad8           mov bl, al
|           0000:4299     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:429c     b008           mov al, 8
|           0000:429e     ee             out dx, al
|           0000:429f     42             inc dx
|           0000:42a0     8ac3           mov al, bl
|           0000:42a2     ee             out dx, al
|           0000:42a3     8b4e06         mov cx, word [var_6h]
|           ;-- str.N_bA:
|           0000:42a6    .string "+N\bA\x8b" ; len=5
|           0000:42ab     5e             pop si
|           0000:42ac     088bc3d1       or byte [bp + di - 0x2e3d], cl
|           0000:42b0     e3d1           jcxz 0x4283
|           0000:42b2     e301           jcxz 0x42b5
|           0000:42b4     c3             ret
|           0000:42b5     d1e3           shl bx, 1
|           0000:42b7     d1e3           shl bx, 1
|           0000:42b9     d1e3           shl bx, 1
|           0000:42bb     d1e3           shl bx, 1
|           0000:42bd     8b4604         mov ax, word [var_4h]
|           0000:42c0     d1e8           shr ax, 1
|           0000:42c2     d1e8           shr ax, 1
|           0000:42c4     d1e8           shr ax, 1
|           0000:42c6     01c3           add bx, ax
|           0000:42c8     031e37d2       add bx, word [0xd237]
|           ; CODE XREF from fcn.00004274 @ 0x42d6(x)
|           0000:42cc     268a07         mov al, byte es:[bx]
|           0000:42cf     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:42d3     83c350         add bx, 0x50                  ; 80
|           0000:42d6     e2f4           loop 0x42cc
|           0000:42d8     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:42db     b001           mov al, 1
|           0000:42dd     ee             out dx, al
|           0000:42de     42             inc dx
|           0000:42df     b000           mov al, 0
|           0000:42e1     ee             out dx, al
|           0000:42e2     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:42e5     b008           mov al, 8
|           0000:42e7     ee             out dx, al
|           0000:42e8     42             inc dx
|           0000:42e9     b0ff           mov al, 0xff
|           0000:42eb     ee             out dx, al
|           0000:42ec    .string "]ZY[X\xc3" ; len=6
            ; XREFS: CALL 0x00003f1a  CALL 0x00003f38  CALL 0x00003f51  CALL 0x00003fb3  CALL 0x00003fff  CALL 0x0000401d  
            ; XREFS: CALL 0x00004036  CALL 0x000043f9  CALL 0x0000442f  CALL 0x00004b46  CALL 0x00004b64  CALL 0x00004b73  
            ; XREFS: CALL 0x00004bd4  CALL 0x0000625e  CALL 0x0000627c  CALL 0x000062aa  CALL 0x000062b9  
/ 128: fcn.000042f2 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(4:sp[0x2..0x8])
|           0000:42f2    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:42f8     e5b8           in ax, 0xb8
|           0000:42fa     07             pop es
|           0000:42fb     00508b         add byte [bx + si - 0x75], dl
|           0000:42fe     46             inc si
|           0000:42ff     0805           or byte [di], al
|           ; DATA XREF from str.No_amount_of_battering_can_demolish_this_sturdy_block. @ +0x38(r)
|           0000:4301     0200           add al, byte [bx + si]
|           0000:4303     83c302         add bx, 2
|           0000:4306     83e902         sub cx, 2
|           0000:4309     83ea02         sub dx, 2
|           0000:430c     3bda           cmp bx, dx
|           ;-- str.w_tRQSP:
|           0000:430e    .string "w\tRQSP\xe8" ; len=7
|           0000:4315     77fd           ja 0x4314
|           0000:4317     eb07           jmp 0x4320
|           ; CODE XREF from fcn.000042f2 @ 0x430e(x)
|           0000:4319     58             pop ax
|           0000:431a     8b4608         mov ax, word [var_8h]
|           0000:431d     050200         add ax, 2
|           ; CODE XREF from fcn.000042f2 @ 0x4317(x)
|           0000:4320     2d0200         sub ax, 2                     ; int16_t arg1
|           0000:4323     8bd9           mov bx, cx
|           0000:4325     83c302         add bx, 2                     ; int16_t arg3
|           0000:4328     8b4e06         mov cx, word [var_6h]
|           0000:432b     b20f           mov dl, 0xf                   ; 15
|           0000:432d     e86cfe         call fcn.0000419c
|           0000:4330     40             inc ax                        ; int16_t arg1
|           0000:4331     41             inc cx                        ; int16_t arg4
|           0000:4332     e867fe         call fcn.0000419c
|           0000:4335     8b4606         mov ax, word [var_6h]
|           0000:4338     8b5e02         mov bx, word [var_2h]
|           0000:433b     8b4e04         mov cx, word [var_4h]
|           0000:433e     e833ff         call fcn.00004274
|           0000:4341     49             dec cx                        ; int16_t arg4
|           0000:4342     4b             dec bx                        ; int16_t arg3
|           0000:4343     e82eff         call fcn.00004274
|           0000:4346     8b4606         mov ax, word [var_6h]
|           0000:4349     40             inc ax                        ; int16_t arg1
|           0000:434a     8b5e02         mov bx, word [var_2h]
|           0000:434d     8b4e08         mov cx, word [var_8h]
|           0000:4350     b208           mov dl, 8
|           0000:4352     e81fff         call fcn.00004274
|           0000:4355     41             inc cx                        ; int16_t arg4
|           0000:4356     40             inc ax                        ; int16_t arg1
|           0000:4357     e81aff         call fcn.00004274
|           0000:435a     8b4608         mov ax, word [var_8h]
|           0000:435d     8b5e04         mov bx, word [var_4h]
|           0000:4360     4b             dec bx                        ; int16_t arg3
|           0000:4361     8b4e02         mov cx, word [var_2h]
|           0000:4364     e835fe         call fcn.0000419c
|           0000:4367     49             dec cx                        ; int16_t arg4
|           0000:4368     4b             dec bx                        ; int16_t arg3
|           0000:4369     e830fe         call fcn.0000419c
|           0000:436c    .string "]ZY[X\xc3" ; len=6
            ; XREFS: CALL 0x00003f29  CALL 0x00003f60  CALL 0x0000400e  CALL 0x0000443e  CALL 0x00004b55  CALL 0x00004be3  
            ; XREFS: CALL 0x0000626d  CALL 0x0000628b  
/ 114: fcn.00004372 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(4:sp[0x2..0x8])
|           0000:4372    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:4378     e5b8           in ax, 0xb8
|           0000:437a     0000           add byte [bx + si], al
|           0000:437c     50             push ax
|           0000:437d ~   8b4608         mov ax, word [var_8h]
|           ;-- str.F_bRQSP:
|           0000:437e    .string "F\bRQSP\xe8" ; len=7
|           0000:4385     07             pop es
|           0000:4386     fd             std
|           0000:4387     8bd9           mov bx, cx
|           0000:4389     83c302         add bx, 2                     ; int16_t arg3
|           0000:438c     8b4e06         mov cx, word [var_6h]
|           0000:438f     49             dec cx                        ; int16_t arg4
|           0000:4390     b208           mov dl, 8
|           0000:4392     e807fe         call fcn.0000419c
|           0000:4395     49             dec cx                        ; int16_t arg4
|           0000:4396     48             dec ax                        ; int16_t arg1
|           0000:4397     e802fe         call fcn.0000419c
|           0000:439a     8b4606         mov ax, word [var_6h]
|           0000:439d     2d0200         sub ax, 2                     ; int16_t arg1
|           0000:43a0     8b5e02         mov bx, word [var_2h]
|           0000:43a3     8b4e04         mov cx, word [var_4h]
|           0000:43a6     41             inc cx                        ; int16_t arg4
|           0000:43a7     e8cafe         call fcn.00004274
|           0000:43aa     41             inc cx                        ; int16_t arg4
|           0000:43ab     43             inc bx                        ; int16_t arg3
|           0000:43ac     e8c5fe         call fcn.00004274
|           0000:43af     8b4608         mov ax, word [var_8h]
|           0000:43b2     2d0200         sub ax, 2                     ; int16_t arg1
|           0000:43b5     8b5e04         mov bx, word [var_4h]
|           0000:43b8     43             inc bx                        ; int16_t arg3
|           0000:43b9     8b4e02         mov cx, word [var_2h]
|           0000:43bc     41             inc cx                        ; int16_t arg4
|           0000:43bd     b20f           mov dl, 0xf                   ; 15
|           0000:43bf     e8dafd         call fcn.0000419c
|           0000:43c2     41             inc cx                        ; int16_t arg4
|           0000:43c3     43             inc bx                        ; int16_t arg3
|           0000:43c4     e8d5fd         call fcn.0000419c
|           0000:43c7     8b4606         mov ax, word [var_6h]
|           0000:43ca     2d0200         sub ax, 2                     ; int16_t arg1
|           0000:43cd     8b5e02         mov bx, word [var_2h]
|           0000:43d0     8b4e08         mov cx, word [var_8h]
|           0000:43d3     83e902         sub cx, 2                     ; int16_t arg4
|           0000:43d6     e89bfe         call fcn.00004274
|           0000:43d9     41             inc cx                        ; int16_t arg4
|           0000:43da     40             inc ax                        ; int16_t arg1
|           0000:43db     e896fe         call fcn.00004274
|           0000:43de    .string "]ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00004446 @ 0x44a1(x)
/ 71: fcn.000043e4 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0x4..0x8])
|           0000:43e4    .string "PSQRVU\x89" ; len=7                  ; arg1
|           0000:43eb     e503           in ax, 3
|           0000:43ed     dad1           fcmovbe st(0), st(1)
|           0000:43ef     eb89           jmp 0x437a                    ; fcn.00004372+0x8
|           0000:43f1     da4b83         fimul dword [bp + di - 0x7d]
|           0000:43f4     c202be         ret 0xbe02
|           0000:43f7     0c00           or al, 0
|           ; CODE XREF from fcn.000043e4 @ 0x4402(x)
|           0000:43f9     e8f6fe         call fcn.000042f2
|           0000:43fc ~   e83c21         call fcn.0000653b
|           ;-- str.__KBNu:
|           0000:43fd    .string "<!KBNu\xf5" ; len=7
|           ;-- str.CJKB__bv_b:
|           0000:4404    .string "CJKB;^\bv\b\xe8" ; len=10
|           0000:440e     1b00           sbb ax, word [bx + si]
|           0000:4410     e82821         call fcn.0000653b
|           0000:4413     ebf1           jmp 0x4406
|           ; CODE XREF from fcn.000043e4 @ 0x440b(x)
|           0000:4415     8b5e08         mov bx, word [var_8h]
|           0000:4418     8b5604         mov dx, word [var_4h]
|           0000:441b     e80d00         call fcn.0000442b
|           0000:441e     e81a21         call fcn.0000653b
|           0000:4421     e80700         call fcn.0000442b
|           0000:4424    .string "]^ZY[X\xc3" ; len=7
            ; CALL XREFS from fcn.000043e4 @ 0x440d(x), 0x441b(x), 0x4421(x)
/ 27: fcn.0000442b (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:442b    .string "PSQR\xe8" ; len=5                    ; arg1
|           0000:4430     c0fe05         sar dh, 5
|           0000:4433     1000           adc byte [bx + si], al
|           0000:4435     83c30c         add bx, 0xc                   ; 12
|           0000:4438     83e910         sub cx, 0x10                  ; 16
|           0000:443b     83ea0c         sub dx, 0xc                   ; 12
|           0000:443e     e831ff         call fcn.00004372
|           0000:4441    .string "ZY[X\xc3" ; len=5
            ; CALL XREF from fcn.000044ac @ 0x44b8(x)
/ 102: fcn.00004446 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0x2..0x8])
|           0000:4446    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:444e     e58b           in ax, 0x8b
|           0000:4450     c3             ret
|           0000:4451     d1e3           shl bx, 1
|           0000:4453     d1e3           shl bx, 1
|           0000:4455     d1e3           shl bx, 1
|           0000:4457     29c3           sub bx, ax
|           0000:4459     d1e3           shl bx, 1
|           0000:445b     53             push bx
|           0000:445c     81eb5e01       sub bx, 0x15e                 ; " DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4460     f7db           neg bx
|           0000:4462     d1eb           shr bx, 1
|           0000:4464     53             push bx
|           0000:4465     83eb0c         sub bx, 0xc                   ; 12
|           0000:4468     89de           mov si, bx
|           0000:446a     5b             pop bx
|           0000:446b     58             pop ax
|           0000:446c     01c3           add bx, ax
|           0000:446e     83c30d         add bx, 0xd                   ; 13
|           0000:4471 ~   89df           mov di, bx
|           ;-- str.F_f_P:
|           0000:4472    .string "\xdf\x8bF\f-P" ; len=7
|           0000:4479     f7d8           neg ax
|           0000:447b     d1e8           shr ax, 1
|           0000:447d     f64606ff       test byte [var_6h], 0xff
|           0000:4481     7403           je 0x4486
|           0000:4483     2d0a00         sub ax, 0xa
|           ; CODE XREF from fcn.00004446 @ 0x4481(x)
|           0000:4486     50             push ax
|           0000:4487     d1e0           shl ax, 1
|           0000:4489     d1e0           shl ax, 1
|           0000:448b     d1e0           shl ax, 1
|           0000:448d     2d1200         sub ax, 0x12                  ; 18
|           0000:4490     59             pop cx
|           0000:4491     034e0c         add cx, word [var_ch]
|           0000:4494     d1e1           shl cx, 1
|           0000:4496     d1e1           shl cx, 1
|           0000:4498     d1e1           shl cx, 1
|           0000:449a     83c110         add cx, 0x10                  ; 16
|           0000:449d     89f3           mov bx, si
|           0000:449f     89fa           mov dx, di
|           0000:44a1     e840ff         call fcn.000043e4
|           0000:44a4    .string "]_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.0000382c @ 0x3854(x)
            ; CALL XREF from fcn.00003ab5 @ 0x3ac5(x)
            ; CALL XREF from fcn.00003caf @ 0x3cb6(x)
            ; CALL XREF from fcn.00004882 @ 0x4895(x)
/ 106: fcn.000044ac (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:44ac    .string "PSQRW\x8b" ; len=6                   ; arg1
|           0000:44b2     058b5d         add ax, 0x5d8b
|           0000:44b5     028bcbe8       add cl, byte [bp + di - 0x1735]
|           0000:44b9     8bff           mov di, di
|           0000:44bb     8bc3           mov ax, bx
|           0000:44bd     d1e3           shl bx, 1
|           0000:44bf     d1e3           shl bx, 1
|           0000:44c1     d1e3           shl bx, 1
|           0000:44c3     29c3           sub bx, ax
|           0000:44c5     d1e3           shl bx, 1
|           0000:44c7     81eb5e01       sub bx, 0x15e                 ; " DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:44cb     f7db           neg bx
|           0000:44cd     d1eb           shr bx, 1
|           0000:44cf     8b05           mov ax, word [di]
|           0000:44d1     2d5000         sub ax, 0x50                  ; 80
|           0000:44d4     f7d8           neg ax
|           0000:44d6     d1e8           shr ax, 1
|           0000:44d8     84d2           test dl, dl
|           0000:44da     7403           je 0x44df
|           0000:44dc     2d0a00         sub ax, 0xa
|           ; CODE XREF from fcn.000044ac @ 0x44da(x)
|           0000:44df     50             push ax
|           0000:44e0     53             push bx
|           0000:44e1     83c704         add di, 4
|           0000:44e4     57             push di
|           0000:44e5     c606ccce0f     mov byte [0xcecc], 0xf        ; [0xf:1]=255 ; 15
|           0000:44ea     51             push cx
|           ; CODE XREF from fcn.000044ac @ 0x44f8(x)
|           0000:44eb     e89cf9         call fcn.00003e8a
|           0000:44ee     83c30e         add bx, 0xe                   ; 14
|           ; CODE XREF from fcn.000044ac @ 0x44f6(x)
|           0000:44f1     47             inc di
|           0000:44f2     f645ffff       test byte [di - 1], 0xff
|           0000:44f6     75f9           jne 0x44f1
|           0000:44f8     e2f1           loop 0x44eb
|           0000:44fa ~   e83e20         call fcn.0000653b
|           ;-- str.__Y__X:
|           0000:44fb    .string "> Y_[X\xe8" ; len=7
|           0000:4502     86f9           xchg cl, bh
|           0000:4504     83c30e         add bx, 0xe                   ; 14
|           ; CODE XREF from fcn.000044ac @ 0x450c(x)
|           0000:4507     47             inc di
|           0000:4508     f645ffff       test byte [di - 1], 0xff
|           0000:450c     75f9           jne 0x4507
|           0000:450e     e2f1           loop 0x4501
|           0000:4510    .string "_ZY[X\xc3" ; len=6
            ; XREFS: CALL 0x00003eb9  CALL 0x00003efe  CALL 0x00004fd0  CALL 0x00004fd5  CALL 0x00005012  CALL 0x00005021  
/ 259: fcn.00004516 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(3:sp[0x2..0x8])
|           0000:4516    .string "PSQRVU\x89" ; len=7                  ; arg1
|           0000:451d     e5ba           in ax, 0xba
|           0000:451f     ce             into
|           0000:4520     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:4524     42             inc dx
|           0000:4525     b00f           mov al, 0xf                   ; 15
|           0000:4527     ee             out dx, al
|           0000:4528     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:452b     32c0           xor al, al
|           0000:452d     ee             out dx, al
|           0000:452e     42             inc dx
|           0000:452f     a0ccce         mov al, byte [0xcecc]         ; [0xcecc:1]=255
|           0000:4532     ee             out dx, al
|           0000:4533     d1e3           shl bx, 1
|           0000:4535     d1e3           shl bx, 1
|           0000:4537     035e08         add bx, word [var_8h]
|           0000:453a     d1e3           shl bx, 1
|           0000:453c     d1e3           shl bx, 1
|           0000:453e     d1e3           shl bx, 1
|           0000:4540     d1e3           shl bx, 1
|           0000:4542     035e0a         add bx, word [var_ah]
|           0000:4545     031e37d2       add bx, word [0xd237]
|           0000:4549     84c9           test cl, cl
|           0000:454b     7410           je 0x455d
|           0000:454d     2b1e37d2       sub bx, word [0xd237]
|           0000:4551     8b1637d2       mov dx, word [0xd237]
|           0000:4555     81ea006e       sub dx, 0x6e00
|           0000:4559     f7da           neg dx
|           0000:455b     03da           add bx, dx
|           ; CODE XREF from fcn.00004516 @ 0x454b(x)
|           0000:455d     8a5604         mov dl, byte [var_4h]
|           0000:4560     80fa20         cmp dl, 0x20                  ; 32
|           0000:4563     7238           jb 0x459d
|           0000:4565     80fa5f         cmp dl, 0x5f                  ; '_' ; 95
|           0000:4568     7733           ja 0x459d
|           0000:456a     80ea20         sub dl, 0x20                  ; 32
|           0000:456d     32f6           xor dh, dh
|           0000:456f     8bc2           mov ax, dx
|           0000:4571     d1e2           shl dx, 1
|           0000:4573     d1e2           shl dx, 1
|           0000:4575     d1e2           shl dx, 1
|           0000:4577     29c2           sub dx, ax
|           0000:4579     d1e2           shl dx, 1
|           0000:457b     89d6           mov si, dx
|           0000:457d     81c664c5       add si, 0xc564
|           0000:4581     b90e00         mov cx, 0xe                   ; 14
|           ; CODE XREF from fcn.00004516 @ 0x4599(x)
|           0000:4584     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4587     b008           mov al, 8
|           0000:4589     ee             out dx, al
|           0000:458a     42             inc dx
|           0000:458b     8a04           mov al, byte [si]
|           0000:458d     ee             out dx, al
|           0000:458e     268a07         mov al, byte es:[bx]
|           0000:4591     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:4595     83c350         add bx, 0x50                  ; 80
|           0000:4598     46             inc si
|           0000:4599     e2e9           loop 0x4584
|           0000:459b     eb61           jmp 0x45fe
|           ; CODE XREFS from fcn.00004516 @ 0x4563(x), 0x4568(x)
|           0000:459d     80fa61         cmp dl, 0x61                  ; 'a' ; 97
|           0000:45a0     7236           jb 0x45d8
|           0000:45a2     80fa7a         cmp dl, 0x7a                  ; 'z' ; 122
|           0000:45a5     7731           ja 0x45d8
|           0000:45a7     80ea40         sub dl, 0x40                  ; 64
|           0000:45aa     32f6           xor dh, dh
|           0000:45ac     89d6           mov si, dx
|           0000:45ae     d1e6           shl si, 1
|           0000:45b0     d1e6           shl si, 1
|           0000:45b2     d1e6           shl si, 1
|           0000:45b4     81c664c3       add si, 0xc364
|           0000:45b8     81c3e001       add bx, 0x1e0                 ; "l error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:45bc     b90800         mov cx, 8
|           ; CODE XREF from fcn.00004516 @ 0x45d4(x)
|           0000:45bf     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:45c2     b008           mov al, 8
|           0000:45c4     ee             out dx, al
|           0000:45c5     42             inc dx
|           0000:45c6     8a04           mov al, byte [si]
|           0000:45c8     ee             out dx, al
|           0000:45c9     268a07         mov al, byte es:[bx]
|           0000:45cc     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:45d0     83c350         add bx, 0x50                  ; 80
|           0000:45d3     46             inc si
|           0000:45d4     e2e9           loop 0x45bf
|           0000:45d6     eb26           jmp 0x45fe
|           ; CODE XREFS from fcn.00004516 @ 0x45a0(x), 0x45a5(x)
|           0000:45d8     80fa08         cmp dl, 8                     ; 8
|           0000:45db     7521           jne 0x45fe
|           0000:45dd     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:45e0     b001           mov al, 1
|           0000:45e2     ee             out dx, al
|           0000:45e3     42             inc dx
|           0000:45e4     b00f           mov al, 0xf                   ; 15
|           0000:45e6     ee             out dx, al
|           0000:45e7     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:45ea     32c0           xor al, al
|           0000:45ec     ee             out dx, al
|           0000:45ed     42             inc dx
|           0000:45ee     a0cdce         mov al, byte [0xcecd]         ; [0xcecd:1]=255
|           0000:45f1     ee             out dx, al
|           0000:45f2     b90e00         mov cx, 0xe                   ; 14
|           ; CODE XREF from fcn.00004516 @ 0x45fc(x)
|           0000:45f5     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:45f9     83c350         add bx, 0x50                  ; 80
|           0000:45fc     e2f7           loop 0x45f5
|           ; CODE XREFS from fcn.00004516 @ 0x459b(x), 0x45d6(x), 0x45db(x)
|           0000:45fe     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4601     b001           mov al, 1
|           0000:4603     ee             out dx, al
|           0000:4604     42             inc dx
|           0000:4605     b000           mov al, 0
|           0000:4607     ee             out dx, al
|           0000:4608     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:460b     b008           mov al, 8
|           0000:460d     ee             out dx, al
|           0000:460e     42             inc dx
|           0000:460f     b0ff           mov al, 0xff
|           0000:4611     ee             out dx, al
|           0000:4612    .string "]^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00004b7b @ 0x4b99(x)
/ 166: fcn.00004619 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0x2..0x8])
|           0000:4619    .string "PSQRVU\x89" ; len=7                  ; arg1
|           0000:4620     e5ba           in ax, 0xba
|           0000:4622     ce             into
|           0000:4623     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:4627     42             inc dx
|           0000:4628     b00f           mov al, 0xf                   ; 15
|           0000:462a     ee             out dx, al
|           0000:462b     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:462e     32c0           xor al, al
|           0000:4630     ee             out dx, al
|           0000:4631     42             inc dx
|           ; DATA XREFS from str.6222222222222222222222222222222222222222222222222222222222222D @ +0x8b(r), +0x11b(r), +0x1af(r), +0x247(r)
|           0000:4632     a0ccce         mov al, byte [0xcecc]         ; [0xcecc:1]=255
|           0000:4635     ee             out dx, al
|           0000:4636     8bc3           mov ax, bx
|           0000:4638     d1e3           shl bx, 1
|           0000:463a     d1e3           shl bx, 1
|           0000:463c     01c3           add bx, ax
|           0000:463e     d1e3           shl bx, 1
|           0000:4640     d1e3           shl bx, 1
|           0000:4642     d1e3           shl bx, 1
|           0000:4644     d1e3           shl bx, 1
|           0000:4646     8b460a         mov ax, word [var_ah]
|           0000:4649     01c3           add bx, ax
|           0000:464b     031e37d2       add bx, word [0xd237]
|           0000:464f     8a4604         mov al, byte [var_4h]
|           0000:4652     32e4           xor ah, ah
|           0000:4654     8bf0           mov si, ax
|           0000:4656     d1e0           shl ax, 1
|           0000:4658     01c6           add si, ax
|           0000:465a     d1e0           shl ax, 1
|           0000:465c     d1e0           shl ax, 1
|           0000:465e     01c6           add si, ax
|           0000:4660     d1e0           shl ax, 1
|           0000:4662     01c6           add si, ax
|           0000:4664     d1e6           shl si, 1
|           0000:4666     d1e6           shl si, 1
|           0000:4668     81c6e4c8       add si, 0xc8e4
|           0000:466c     b92400         mov cx, 0x24                  ; '$' ; 36
|           ; CODE XREF from fcn.00004619 @ 0x46ac(x)
|           0000:466f     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4672     b008           mov al, 8
|           0000:4674     ee             out dx, al
|           0000:4675     42             inc dx
|           0000:4676     8a04           mov al, byte [si]
|           0000:4678     ee             out dx, al
|           0000:4679     46             inc si
|           0000:467a     268a07         mov al, byte es:[bx]
|           0000:467d     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:4681     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4684     b008           mov al, 8
|           0000:4686     ee             out dx, al
|           0000:4687     42             inc dx
|           0000:4688     8a04           mov al, byte [si]
|           0000:468a     ee             out dx, al
|           0000:468b     46             inc si
|           0000:468c     268a4701       mov al, byte es:[bx + 1]
|           0000:4690     26c64701ff     mov byte es:[bx + 1], 0xff    ; [0xff:1]=255
|           0000:4695     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4698     b008           mov al, 8
|           0000:469a     ee             out dx, al
|           0000:469b     42             inc dx
|           0000:469c     8a04           mov al, byte [si]
|           0000:469e     ee             out dx, al
|           0000:469f     46             inc si
|           0000:46a0     268a4702       mov al, byte es:[bx + 2]
|           0000:46a4     26c64702ff     mov byte es:[bx + 2], 0xff    ; [0xff:1]=255
|           0000:46a9     83c350         add bx, 0x50                  ; 80
|           0000:46ac     e2c1           loop 0x466f
|           0000:46ae     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:46b1     b001           mov al, 1
|           0000:46b3     ee             out dx, al
|           0000:46b4     42             inc dx
|           0000:46b5     b000           mov al, 0
|           0000:46b7     ee             out dx, al
|           0000:46b8    .string "]^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00004f7f @ 0x4fa3(x)
/ 76: fcn.000046bf (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:46bf     50             push ax                       ; arg1
|           0000:46c0     53             push bx                       ; arg3
|           0000:46c1     52             push dx                       ; arg2
|           0000:46c2     89da           mov dx, bx                    ; arg3
|           0000:46c4     d1e3           shl bx, 1                     ; arg3
|           0000:46c6     d1e3           shl bx, 1
|           0000:46c8     03da           add bx, dx
|           0000:46ca     d1e3           shl bx, 1
|           0000:46cc     d1e3           shl bx, 1
|           0000:46ce     d1e3           shl bx, 1
|           0000:46d0     d1e3           shl bx, 1
|           0000:46d2     01c3           add bx, ax                    ; arg1
|           0000:46d4     81c36004       add bx, 0x460                 ; "of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:46d8     8b1637d2       mov dx, word [0xd237]
|           0000:46dc     81ea006e       sub dx, 0x6e00
|           0000:46e0     f7da           neg dx
|           0000:46e2     03da           add bx, dx
|           0000:46e4     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:46e7     b001           mov al, 1
|           0000:46e9     ee             out dx, al
|           0000:46ea     42             inc dx
|           0000:46eb     b00f           mov al, 0xf                   ; 15
|           0000:46ed     ee             out dx, al
|           0000:46ee     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:46f1     32c0           xor al, al
|           0000:46f3     ee             out dx, al
|           0000:46f4     42             inc dx
|           0000:46f5     a0ccce         mov al, byte [0xcecc]         ; [0xcecc:1]=255
|           0000:46f8     ee             out dx, al
|           0000:46f9     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:46fd     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4700     b001           mov al, 1
|           0000:4702     ee             out dx, al
|           0000:4703     42             inc dx
|           0000:4704     b000           mov al, 0
|           0000:4706     ee             out dx, al
|           0000:4707     5a             pop dx
|           0000:4708     5b             pop bx
|           0000:4709     58             pop ax
\           0000:470a     c3             ret
            ; CALL XREFS from fcn.00004f7f @ 0x4f9d(x), 0x502a(x)
/ 76: fcn.0000470b (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:470b     50             push ax                       ; arg1
|           0000:470c     53             push bx                       ; arg3
|           0000:470d     52             push dx                       ; arg2
|           0000:470e     89da           mov dx, bx                    ; arg3
|           0000:4710     d1e3           shl bx, 1                     ; arg3
|           0000:4712     d1e3           shl bx, 1
|           0000:4714     03da           add bx, dx
|           0000:4716     d1e3           shl bx, 1
|           0000:4718     d1e3           shl bx, 1
|           0000:471a     d1e3           shl bx, 1
|           0000:471c     d1e3           shl bx, 1
|           0000:471e     01c3           add bx, ax                    ; arg1
|           0000:4720     81c36004       add bx, 0x460                 ; "of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4724     8b1637d2       mov dx, word [0xd237]
|           0000:4728     81ea006e       sub dx, 0x6e00
|           0000:472c     f7da           neg dx
|           0000:472e     03da           add bx, dx
|           0000:4730     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4733     b001           mov al, 1
|           0000:4735     ee             out dx, al
|           0000:4736     42             inc dx
|           0000:4737     b00f           mov al, 0xf                   ; 15
|           0000:4739     ee             out dx, al
|           0000:473a     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:473d     32c0           xor al, al
|           0000:473f     ee             out dx, al
|           0000:4740     42             inc dx
|           0000:4741     a0cdce         mov al, byte [0xcecd]         ; [0xcecd:1]=255
|           0000:4744     ee             out dx, al
|           0000:4745     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:4749     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:474c     b001           mov al, 1
|           0000:474e     ee             out dx, al
|           0000:474f     42             inc dx
|           0000:4750     b000           mov al, 0
|           0000:4752     ee             out dx, al
|           0000:4753     5a             pop dx
|           0000:4754     5b             pop bx
|           0000:4755     58             pop ax
\           0000:4756     c3             ret
            ; CALL XREF from fcn.0000483c @ 0x4853(x)
            ; CALL XREF from fcn.00006299 @ 0x62cf(x)
/ 229: fcn.00004757 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(3:sp[0x2..0x8])
|           0000:4757    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:475f     e5ba           in ax, 0xba
|           0000:4761     ce             into
|           0000:4762     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:4766     42             inc dx
|           0000:4767     b00f           mov al, 0xf                   ; 15
|           0000:4769     ee             out dx, al
|           0000:476a     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:476d     32c0           xor al, al
|           0000:476f     ee             out dx, al
|           0000:4770     42             inc dx
|           0000:4771     8a4607         mov al, byte [var_7h]
|           0000:4774     ee             out dx, al
|           0000:4775     89df           mov di, bx
|           0000:4777     d1e7           shl di, 1
|           0000:4779     d1e7           shl di, 1
|           0000:477b     03fb           add di, bx
|           0000:477d     d1e7           shl di, 1
|           0000:477f     d1e7           shl di, 1
|           0000:4781     d1e7           shl di, 1
|           0000:4783     d1e7           shl di, 1
|           0000:4785     8b460c         mov ax, word [var_ch]
|           0000:4788     d1e8           shr ax, 1
|           0000:478a     d1e8           shr ax, 1
|           0000:478c     d1e8           shr ax, 1
|           0000:478e     01c7           add di, ax
|           0000:4790 ~   033e37d2       add di, word [0xd237]
|           ;-- str._7F:
|           0000:4791    .string ">7\xd2\x8aF\x06" ; len=6
|           0000:4797     32e4           xor ah, ah
|           0000:4799     8bf0           mov si, ax
|           0000:479b     d1e0           shl ax, 1
|           0000:479d     01c6           add si, ax
|           0000:479f     d1e0           shl ax, 1
|           0000:47a1     d1e0           shl ax, 1
|           0000:47a3     01c6           add si, ax
|           0000:47a5     d1e0           shl ax, 1
|           0000:47a7     01c6           add si, ax
|           0000:47a9     d1e6           shl si, 1
|           0000:47ab     d1e6           shl si, 1
|           0000:47ad     81c6e4c8       add si, 0xc8e4
|           0000:47b1     8a4e0c         mov cl, byte [var_ch]
|           0000:47b4     80e107         and cl, 7
|           0000:47b7     88cd           mov ch, cl
|           0000:47b9     80ed08         sub ch, 8
|           0000:47bc     f6dd           neg ch
|           0000:47be     b324           mov bl, 0x24                  ; '$' ; 36
|           ; CODE XREF from fcn.00004757 @ 0x481e(x)
|           0000:47c0     8a24           mov ah, byte [si]
|           0000:47c2     46             inc si
|           0000:47c3     d2ec           shr ah, cl
|           0000:47c5     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:47c8     b008           mov al, 8
|           0000:47ca     ee             out dx, al
|           0000:47cb     42             inc dx
|           0000:47cc     88e0           mov al, ah
|           0000:47ce     ee             out dx, al
|           0000:47cf     268a25         mov ah, byte es:[di]
|           0000:47d2     26c605ff       mov byte es:[di], 0xff        ; [0xff:1]=255
|           0000:47d6     47             inc di
|           0000:47d7     b702           mov bh, 2
|           ; CODE XREF from fcn.00004757 @ 0x47fd(x)
|           0000:47d9     8a24           mov ah, byte [si]
|           0000:47db     d2ec           shr ah, cl
|           0000:47dd     8a44ff         mov al, byte [si - 1]
|           0000:47e0     46             inc si
|           0000:47e1     86e9           xchg cl, ch
|           0000:47e3     d2e0           shl al, cl
|           0000:47e5     86e9           xchg cl, ch
|           0000:47e7     0ae0           or ah, al
|           0000:47e9     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:47ec     b008           mov al, 8
|           0000:47ee     ee             out dx, al
|           0000:47ef     42             inc dx
|           0000:47f0     88e0           mov al, ah
|           0000:47f2     ee             out dx, al
|           0000:47f3     268a25         mov ah, byte es:[di]
|           0000:47f6     26c605ff       mov byte es:[di], 0xff        ; [0xff:1]=255
|           0000:47fa     47             inc di
|           0000:47fb     fecf           dec bh
|           0000:47fd     75da           jne 0x47d9
|           0000:47ff     8a64ff         mov ah, byte [si - 1]
|           0000:4802     86e9           xchg cl, ch
|           0000:4804     d2e4           shl ah, cl
|           0000:4806     86e9           xchg cl, ch
|           0000:4808     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:480b     b008           mov al, 8
|           0000:480d     ee             out dx, al
|           0000:480e     42             inc dx
|           0000:480f     88e0           mov al, ah
|           0000:4811     ee             out dx, al
|           0000:4812     268a25         mov ah, byte es:[di]
|           0000:4815     26c605ff       mov byte es:[di], 0xff        ; [0xff:1]=255
|           0000:4819     83c74d         add di, 0x4d                  ; 77
|           0000:481c     fecb           dec bl
|           0000:481e     75a0           jne 0x47c0
|           0000:4820     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4823     b001           mov al, 1
|           0000:4825     ee             out dx, al
|           0000:4826     42             inc dx
|           0000:4827     b000           mov al, 0
|           0000:4829     ee             out dx, al
|           0000:482a     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:482d     b008           mov al, 8
|           0000:482f     ee             out dx, al
|           0000:4830     42             inc dx
|           0000:4831     b0ff           mov al, 0xff
|           0000:4833     ee             out dx, al
|           0000:4834    .string "]_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.00003f08 @ 0x3f3b(x)
            ; CALL XREF from fcn.00003fde @ 0x4020(x)
/ 36: fcn.0000483c (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:483c    .string "PSRW\xb8" ; len=5                    ; arg1
|           0000:4841     93             xchg bx, ax
|           0000:4842     00bbff00       add byte [bp + di + 0xff], bh
|           0000:4846     b608           mov dh, 8
|           0000:4848     bf5005         mov di, 0x550
|           ; CODE XREF from fcn.0000483c @ 0x4859(x)
|           0000:484b     8a15           mov dl, byte [di]
|           0000:484d     47             inc di
|           0000:484e     80faff         cmp dl, 0xff
|           0000:4851     7408           je str._Z_X
|           0000:4853     e801ff         call fcn.00004757
|           0000:4856     051800         add ax, 0x18                  ; 24
|           0000:4859     ebf0           jmp 0x484b
|           ;-- str._Z_X:
|           ; CODE XREF from fcn.0000483c @ 0x4851(x)
|           0000:485b    .string "_Z[X\xc3" ; len=5
            0000:4860     3100           xor word [bx + si], ax
            0000:4862 ~   e27e           loop 0x48e2                   ; fcn.000048c0+0x22
            ;-- str.__PQVW:
            0000:4863    .string "~;'PQVW\xb9" ; len=8
|           0000:486b     06             push es
|           0000:486c ~   008a053a       add byte [bp + si + 0x3a05], cl
|           ; CODE XREF from fcn.00004866 @ 0x4877(x)
|           0000:486d     8a05           mov al, byte [di]
|           0000:486f     3a04           cmp al, byte [si]
|           0000:4871     7706           ja 0x4879
|           ;-- str.r_aFG:
|           0000:4873    .string "r\aFG\xe2" ; len=5
|           0000:4878     f4             hlt
|           ; CODE XREF from fcn.00004866 @ 0x4871(x)
|           0000:4879     f9             stc
|           0000:487a     eb01           jmp 0x487d
|           ; CODE XREF from fcn.00004866 @ 0x4873(x)
|           0000:487c     f8             clc
|           ; CODE XREF from fcn.00004866 @ 0x487a(x)
|           0000:487d    .string "_^YX\xc3" ; len=5
            ; CALL XREFS from str.O_O @ +0x16(x), +0x1e(x)
/ 62: fcn.00004882 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:4882    .string "PQRW\xe8" ; len=5                    ; arg1
|           0000:4887     bc0080         mov sp, sp                    ; bp
|                                                                      ; 0x8000
|           0000:488a     fa             cli
|           0000:488b     0b7421         or si, word [si + 0x21]
|           0000:488e     8ac2           mov al, dl
|           0000:4890     b201           mov dl, 1
|           0000:4892     bf9705         mov di, 0x597
|           0000:4895     e814fc         call fcn.000044ac
|           0000:4898     b9c800         mov cx, 0xc8                  ; 200
|           0000:489b     e88bf2         call fcn.00003b29
|           0000:489e     e89901         call fcn.00004a3a
|           0000:48a1     e8971c         call fcn.0000653b
|           0000:48a4     e8be1d         call fcn.00006665
|           0000:48a7     e81600         call fcn.000048c0
|           0000:48aa     e88e1c         call fcn.0000653b
|           0000:48ad     eb06           jmp 0x48b5
|           ; CODE XREF from fcn.00004882 @ 0x488c(x)
|           0000:48af     e88801         call fcn.00004a3a
|           0000:48b2     e8861c         call fcn.0000653b
|           ; CODE XREF from fcn.00004882 @ 0x48ad(x)
|           0000:48b5     e8ad1d         call fcn.00006665
|           0000:48b8     e8801c         call fcn.0000653b
|           0000:48bb    .string "_ZYX\xc3" ; len=5
            ;-- str.PQVWU:
            ; CALL XREF from fcn.00004882 @ 0x48a7(x)
/ 133: fcn.000048c0 (int16_t arg1, int16_t arg2);
| `- args(ax, cx) vars(1:sp[0x2..0x2])
|           0000:48c0    .string "PQVWU\x89" ; len=6                   ; arg1
|           0000:48c6     e58a           in ax, 0x8a
|           0000:48c8     d8d0           fcom st(0)
|           0000:48ca     e3d0           jcxz 0x489c                   ; fcn.00004882+0x1a
|           0000:48cc     e3d0           jcxz 0x489e                   ; fcn.00004882+0x1c
|           0000:48ce     e328           jcxz 0x48f8
|           0000:48d0     c3             ret
|           0000:48d1     d0e3           shl bl, 1
|           0000:48d3     32ff           xor bh, bh
|           0000:48d5     81c38e00       add bx, 0x8e                  ; 142
|           0000:48d9     b81700         mov ax, 0x17                  ; 23
|           0000:48dc     50             push ax
|           0000:48dd     53             push bx
|           0000:48de     c606ccce0e     mov byte [0xcecc], 0xe        ; [0xe:1]=255 ; 14
|           0000:48e3     c606cdce07     mov byte [0xcecd], 7
|           0000:48e8     bf6cd3         mov di, 0xd36c
|           0000:48eb     b91000         mov cx, 0x10                  ; 16
|           ; CODE XREF from fcn.000048c0 @ 0x48f2(x)
|           0000:48ee     c60500         mov byte [di], 0
|           0000:48f1     47             inc di
|           0000:48f2     e2fa           loop 0x48ee
|           0000:48f4     bf6ad3         mov di, 0xd36a
|           0000:48f7     c6050f         mov byte [di], 0xf            ; [0xf:1]=255 ; 15
|           0000:48fa     e88206         call fcn.00004f7f
|           0000:48fd     8a4d01         mov cl, byte [di + 1]
|           0000:4900     32ed           xor ch, ch
|           0000:4902     85c9           test cx, cx
|           0000:4904     741f           je 0x4925
|           0000:4906     8a4608         mov al, byte [var_8h]
|           0000:4909     fec8           dec al
|           0000:490b     32e4           xor ah, ah
|           0000:490d     d1e0           shl ax, 1
|           0000:490f     d1e0           shl ax, 1
|           0000:4911     d1e0           shl ax, 1
|           0000:4913     d1e0           shl ax, 1
|           0000:4915     05acd2         add ax, 0xd2ac
|           0000:4918     8bf0           mov si, ax
|           0000:491a     83c702         add di, 2
|           ; CODE XREF from fcn.000048c0 @ 0x4923(x)
|           0000:491d     8a05           mov al, byte [di]
|           0000:491f     8804           mov byte [si], al
|           0000:4921     46             inc si
|           0000:4922     47             inc di
|           0000:4923     e2f8           loop 0x491d
|           ; CODE XREF from fcn.000048c0 @ 0x4904(x)
|           0000:4925     bf6cd3         mov di, 0xd36c
|           0000:4928     8a45ff         mov al, byte [di - 1]
|           0000:492b     32e4           xor ah, ah
|           0000:492d     01c7           add di, ax
|           0000:492f     c60500         mov byte [di], 0
|           0000:4932     5b             pop bx
|           0000:4933     58             pop ax
|           0000:4934     c606ccce00     mov byte [0xcecc], 0
|           0000:4939     bf6cd3         mov di, 0xd36c
|           0000:493c     e84bf5         call fcn.00003e8a
|           ;-- str.__YX:
|           0000:493f    .string "]_^YX\xc3" ; len=6
            ;-- str.PSQRU:
            ; CALL XREF from fcn.00004882 @ 0x4886(x)
/ 132: fcn.00004945 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(1:sp[0x8..0x8])
|           0000:4945    .string "PSQRU\x89" ; len=6                   ; arg1
|           0000:494b     e5e8           in ax, 0xe8
|           0000:494d     7a00           jp 0x494f
|           0000:494f     fec2           inc dl
|           0000:4951     885602         mov byte [var_2h], dl
|           0000:4954     80fa0b         cmp dl, 0xb                   ; 11
|           0000:4957     746a           je 0x49c3
|           0000:4959     8ac2           mov al, dl
|           0000:495b     e88e00         call fcn.000049ec
|           0000:495e     feca           dec dl
|           0000:4960     88d3           mov bl, dl
|           0000:4962     d0e3           shl bl, 1
|           0000:4964     d0e3           shl bl, 1
|           0000:4966     d0e3           shl bl, 1
|           0000:4968     2ada           sub bl, dl
|           0000:496a     32ff           xor bh, bh
|           0000:496c     81c366d2       add bx, 0xd266
|           0000:4970     a09bd3         mov al, byte [0xd39b]         ; [0xd39b:1]=255
|           0000:4973     8807           mov byte [bx], al
|           0000:4975     a09cd3         mov al, byte [0xd39c]         ; [0xd39c:1]=255
|           0000:4978     884701         mov byte [bx + 1], al
|           0000:497b     a09dd3         mov al, byte [0xd39d]         ; [0xd39d:1]=255
|           0000:497e     884702         mov byte [bx + 2], al
|           0000:4981     a09ed3         mov al, byte [0xd39e]         ; [0xd39e:1]=255
|           0000:4984     884703         mov byte [bx + 3], al
|           0000:4987     a09fd3         mov al, byte [0xd39f]         ; [0xd39f:1]=255
|           0000:498a     884704         mov byte [bx + 4], al
|           0000:498d     a0a0d3         mov al, byte [0xd3a0]         ; [0xd3a0:1]=255
|           0000:4990     884705         mov byte [bx + 5], al
|           0000:4993     88d3           mov bl, dl
|           0000:4995     d0e3           shl bl, 1
|           0000:4997     02da           add bl, dl
|           0000:4999     32ff           xor bh, bh
|           0000:499b     81c34cd3       add bx, 0xd34c
|           0000:499f     a0a8d3         mov al, byte [0xd3a8]         ; [0xd3a8:1]=255
|           0000:49a2     8807           mov byte [bx], al
|           0000:49a4     a0a9d3         mov al, byte [0xd3a9]         ; [0xd3a9:1]=255
|           0000:49a7     884701         mov byte [bx + 1], al
|           0000:49aa     88d3           mov bl, dl
|           0000:49ac     d0e3           shl bl, 1
|           0000:49ae     d0e3           shl bl, 1
|           0000:49b0     d0e3           shl bl, 1
|           0000:49b2     d0e3           shl bl, 1
|           0000:49b4     32ff           xor bh, bh
|           0000:49b6     81c3acd2       add bx, 0xd2ac
|           0000:49ba     b91000         mov cx, 0x10                  ; 16
|           ; CODE XREF from fcn.00004945 @ 0x49c1(x)
|           0000:49bd     c60700         mov byte [bx], 0
|           0000:49c0     43             inc bx
|           0000:49c1     e2fa           loop 0x49bd
|           ; CODE XREF from fcn.00004945 @ 0x4957(x)
|           0000:49c3    .string "]ZY[X\xc3" ; len=6
            ;-- str.QRVWU:
            ; CALL XREF from fcn.00004945 @ 0x494c(x)
/ 35: fcn.000049c9 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx) vars(1:sp[0x4..0x4])
|           0000:49c9    .string "QRVWU\x89" ; len=6                   ; arg3
|           0000:49cf     e5bf           in ax, 0xbf
|           0000:49d1     a5             movsw word es:[di], word [si]
|           0000:49d2     d2be9bd3       sar byte [bp - 0x2c65], cl
|           0000:49d6     b90a00         mov cx, 0xa
|           ; CODE XREF from fcn.000049c9 @ 0x49e1(x)
|           0000:49d9     e88afe         call fcn.00004866
|           0000:49dc     7205           jb 0x49e3
|           0000:49de     83ef07         sub di, 7
|           0000:49e1     e2f6           loop 0x49d9
|           ; CODE XREF from fcn.000049c9 @ 0x49dc(x)
|           0000:49e3     884e06         mov byte [var_6h], cl
|           ;-- str.__ZY:
|           0000:49e6    .string "]_^ZY\xc3" ; len=6
            ;-- str.PQV__ntC__n:
            ; CALL XREF from fcn.00004945 @ 0x495b(x)
/ 78: fcn.000049ec (uint16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:49ec    .string "PQV<\ntC,\n\xf6" ; len=10            ; arg1
|           0000:49f6     d888c488       fmul dword [bx + si - 0x773c]
|           0000:49fa     c1d0e1         rcl ax, 0xe1
|           0000:49fd     d0e1           shl cl, 1
|           0000:49ff     d0e1           shl cl, 1
|           0000:4a01     2ac8           sub cl, al
|           0000:4a03     32ed           xor ch, ch
|           0000:4a05     beabd2         mov si, 0xd2ab
|           ; CODE XREF from fcn.000049ec @ 0x4a0e(x)
|           0000:4a08     8a44f9         mov al, byte [si - 7]
|           0000:4a0b     8804           mov byte [si], al
|           0000:4a0d     4e             dec si
|           0000:4a0e     e2f8           loop 0x4a08
|           0000:4a10     88e1           mov cl, ah
|           0000:4a12     d0e1           shl cl, 1
|           0000:4a14     d0e1           shl cl, 1
|           0000:4a16     d0e1           shl cl, 1
|           0000:4a18     d0e1           shl cl, 1
|           0000:4a1a     be4bd3         mov si, 0xd34b
|           ; CODE XREF from fcn.000049ec @ 0x4a23(x)
|           0000:4a1d     8a44f0         mov al, byte [si - 0x10]
|           0000:4a20     8804           mov byte [si], al
|           0000:4a22     4e             dec si
|           0000:4a23     e2f8           loop 0x4a1d
|           0000:4a25     88e1           mov cl, ah
|           0000:4a27     d0e1           shl cl, 1
|           0000:4a29 ~   02cc           add cl, ah
|           ;-- str.iD:
|           0000:4a2a    .string "\xcc\xbei\xd3\x8aD\xfd" ; len=7
|           0000:4a31     8804           mov byte [si], al
|           0000:4a33     4e             dec si
|           0000:4a34     e2f8           loop 0x4a2e
|           ; CODE XREF from fcn.000049ec @ 0x49f1(x)
|           0000:4a36     5e             pop si
|           0000:4a37     59             pop cx
|           0000:4a38     58             pop ax
\           0000:4a39     c3             ret
            ; CALL XREFS from fcn.00004882 @ 0x489e(x), 0x48af(x)
            ; CALL XREF from fcn.00004ba7 @ 0x4ba7(x)
/ 25: fcn.00004a3a (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:4a3a     f60639d2ff     test byte [0xd239], 0xff
|           0000:4a3f     7405           je 0x4a46
|           0000:4a41     e8691c         call fcn.000066ad
|           0000:4a44     eb03           jmp 0x4a49
|           ; CODE XREF from fcn.00004a3a @ 0x4a3f(x)
|           0000:4a46     e8531c         call fcn.0000669c
|           ; CODE XREF from fcn.00004a3a @ 0x4a44(x)
|           0000:4a49     e8ea00         call fcn.00004b36
|           0000:4a4c     e82c01         call fcn.00004b7b
|           0000:4a4f     e80100         call fcn.00004a53
\           0000:4a52     c3             ret
            ; CALL XREF from fcn.00004a3a @ 0x4a4f(x)
/ 106: fcn.00004a53 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4a53    .string "PSQRW\xc6" ; len=6                   ; arg1
|           0000:4a59     06             push es
|           0000:4a5a     cc             int3
|           0000:4a5b     ce             into
|           0000:4a5c     01c6           add si, ax
|           0000:4a5e     06             push es
|           0000:4a5f     cdce           int 0xce
|           0000:4a61     07             pop es
|           0000:4a62     b81700         mov ax, 0x17                  ; 23
|           0000:4a65     bb8000         mov bx, 0x80                  ; 128
|           0000:4a68     bfd905         mov di, str.Name_______________Level_____Score ; 0x5d9 ; "Name               Level     Score"
|           0000:4a6b     e81cf4         call fcn.00003e8a
|           0000:4a6e     c606ccce00     mov byte [0xcecc], 0
|           0000:4a73     83c31c         add bx, 0x1c                  ; 28
|           0000:4a76     b90a00         mov cx, 0xa
|           0000:4a79     bfacd2         mov di, 0xd2ac
|           ; CODE XREF from fcn.00004a53 @ 0x4a85(x)
|           0000:4a7c     e80bf4         call fcn.00003e8a
|           0000:4a7f     83c30e         add bx, 0xe                   ; 14
|           0000:4a82     83c710         add di, 0x10                  ; 16
|           0000:4a85     e2f5           loop 0x4a7c
|           0000:4a87     81eb8c00       sub bx, 0x8c                  ; 140
|           0000:4a8b     b90a00         mov cx, 0xa
|           0000:4a8e     bf4cd3         mov di, 0xd34c
|           0000:4a91     b82c00         mov ax, 0x2c                  ; ',' ; 44
|           ; CODE XREF from fcn.00004a53 @ 0x4a9d(x)
|           0000:4a94     e830f4         call fcn.00003ec7
|           0000:4a97     83c30e         add bx, 0xe                   ; 14
|           0000:4a9a     83c703         add di, 3
|           0000:4a9d     e2f5           loop 0x4a94
|           0000:4a9f     81eb8c00       sub bx, 0x8c                  ; 140
|           0000:4aa3     b90a00         mov cx, 0xa
|           0000:4aa6     bf66d2         mov di, 0xd266
|           0000:4aa9     b83300         mov ax, 0x33                  ; '3' ; 51
|           ; CODE XREF from fcn.00004a53 @ 0x4ab5(x)
|           0000:4aac     e818f4         call fcn.00003ec7
|           0000:4aaf     83c30e         add bx, 0xe                   ; 14
|           0000:4ab2     83c707         add di, 7
|           0000:4ab5     e2f5           loop 0x4aac
|           0000:4ab7    .string "_ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00004ba7 @ 0x4bb0(x)
/ 45: fcn.00004abd (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx) vars(1:sp[0x2..0x2])
|           0000:4abd     50             push ax                       ; arg1
|           0000:4abe     51             push cx                       ; arg3
|           0000:4abf     55             push bp
|           0000:4ac0     89e5           mov bp, sp
|           0000:4ac2     e896ec         call fcn.0000375b
|           0000:4ac5     e82200         call fcn.00004aea
|           0000:4ac8     b90004         mov cx, 0x400                 ; "  ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           ; CODE XREF from fcn.00004abd @ 0x4ad5(x)
|           0000:4acb     e84b00         call fcn.00004b19
|           0000:4ace     e86a1a         call fcn.0000653b
|           0000:4ad1     b401           mov ah, 1
|           0000:4ad3     cd16           int 0x16
|           0000:4ad5     e1f4           loope 0x4acb
|           0000:4ad7     e309           jcxz 0x4ae2
|           0000:4ad9     b400           mov ah, 0
|           0000:4adb     cd16           int 0x16
|           0000:4add     886604         mov byte [var_4h], ah
|           0000:4ae0     eb04           jmp 0x4ae6
|           ; CODE XREF from fcn.00004abd @ 0x4ad7(x)
|           0000:4ae2     c6460400       mov byte [var_4h], 0
|           ; CODE XREF from fcn.00004abd @ 0x4ae0(x)
|           0000:4ae6     5d             pop bp
|           0000:4ae7     59             pop cx
|           0000:4ae8     58             pop ax
\           0000:4ae9     c3             ret
            ; CALL XREF from fcn.00004abd @ 0x4ac5(x)
/ 47: fcn.00004aea (int16_t arg1);
| `- args(ax)
|           0000:4aea     50             push ax                       ; arg1
|           0000:4aeb     56             push si
|           0000:4aec     be2307         mov si, 0x723
|           ; CODE XREF from fcn.00004aea @ 0x4b14(x)
|           0000:4aef     833cff         cmp word [si], 0xffff
|           0000:4af2     7422           je 0x4b16
|           0000:4af4     b80100         mov ax, 1
|           0000:4af7     50             push ax
|           0000:4af8     ff34           push word [si]
|           0000:4afa     83c602         add si, 2
|           0000:4afd     ff34           push word [si]
|           0000:4aff     83c602         add si, 2
|           0000:4b02     ff34           push word [si]
|           0000:4b04     83c602         add si, 2
|           0000:4b07     ff34           push word [si]
|           0000:4b09     83c602         add si, 2
|           0000:4b0c     ff34           push word [si]
|           0000:4b0e     83c602         add si, 2
|           0000:4b11     e81fee         call fcn.00003933
|           0000:4b14     ebd9           jmp 0x4aef
|           ; CODE XREF from fcn.00004aea @ 0x4af2(x)
|           0000:4b16     5e             pop si
|           0000:4b17     58             pop ax
\           0000:4b18     c3             ret
            ; CALL XREF from fcn.00004abd @ 0x4acb(x)
/ 29: fcn.00004b19 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4b19     fe063cd2       inc byte [0xd23c]
|           0000:4b1d    .string "<\xd2\x80><\xd2" ; len=6
|           0000:4b21     037505         add si, word [di + 5]
|           0000:4b24     c6063cd200     mov byte [0xd23c], 0
|           ; CODE XREF from fcn.00004b19 @ 0x4b22(x)
|           0000:4b29     e88d0a         call fcn.000055b9
|           0000:4b2c     e806e7         call fcn.00003235
|           0000:4b2f     e8c70a         call fcn.000055f9
|           0000:4b32     e8150b         call fcn.0000564a
\           0000:4b35     c3             ret
            ; CALL XREF from fcn.00004a3a @ 0x4a49(x)
/ 69: fcn.00004b36 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4b36    .string "PSQR\xb8" ; len=5                    ; arg1
|           0000:4b3b     0000           add byte [bx + si], al
|           0000:4b3d     bb0000         mov bx, 0
|           0000:4b40     b97f02         mov cx, 0x27f                 ; "s 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b43     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b46     e8a9f7         call fcn.000042f2
|           0000:4b49     b81000         mov ax, 0x10                  ; 16
|           0000:4b4c     bb0c00         mov bx, 0xc                   ; 12
|           0000:4b4f     b96f02         mov cx, 0x26f                 ; "Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b52     ba5101         mov dx, 0x151                 ; "\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b55     e81af8         call fcn.00004372
|           0000:4b58     b83000         mov ax, 0x30                  ; '0' ; 48
|           0000:4b5b     bb2600         mov bx, 0x26                  ; '&' ; 38
|           0000:4b5e     b94f02         mov cx, 0x24f                 ; "enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b61     ba5500         mov dx, 0x55                  ; 'U' ; 85
|           0000:4b64     e88bf7         call fcn.000042f2
|           0000:4b67     b89800         mov ax, 0x98                  ; 152
|           0000:4b6a     bb7000         mov bx, 0x70                  ; 'p' ; 112
|           0000:4b6d     b9e701         mov cx, 0x1e7                 ; " writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b70     ba3701         mov dx, 0x137                 ; "issing file :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4b73     e87cf7         call fcn.000042f2
|           0000:4b76    .string "ZY[X\xc3" ; len=5
            ;-- str.PSRV:
            ; CALL XREF from fcn.00004a3a @ 0x4a4c(x)
/ 44: fcn.00004b7b (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:4b7b    .string "PSRV\xc6" ; len=5                    ; arg1
|           0000:4b80     06             push es
|           0000:4b81     cc             int3
|           0000:4b82     ce             into
|           0000:4b83     04b8           add al, 0xb8                  ; 184
|           0000:4b85     0d00bb         or ax, 0xbb00
|           0000:4b88     2c00           sub al, 0
|           0000:4b8a     be0007         mov si, 0x700
|           ; CODE XREF from fcn.00004b7b @ 0x4ba0(x)
|           0000:4b8d     8a14           mov dl, byte [si]
|           0000:4b8f     80faff         cmp dl, 0xff
|           0000:4b92     740e           je str.Z_X
|           0000:4b94     80fa0b         cmp dl, 0xb                   ; 11
|           0000:4b97     7403           je 0x4b9c
|           0000:4b99     e87dfa         call fcn.00004619
|           ; CODE XREF from fcn.00004b7b @ 0x4b97(x)
|           0000:4b9c     050300         add ax, 3
|           0000:4b9f     46             inc si
|           0000:4ba0     ebeb           jmp 0x4b8d
|           ;-- str.Z_X:
|           ; CODE XREF from fcn.00004b7b @ 0x4b92(x)
|           0000:4ba2    .string "^Z[X\xc3" ; len=5
            ; CALL XREF from fcn.00003c38 @ 0x3c4a(x)
/ 13: fcn.00004ba7 ();
|           0000:4ba7     e890fe         call fcn.00004a3a
|           0000:4baa     e88e19         call fcn.0000653b
|           0000:4bad     e8b51a         call fcn.00006665
|           0000:4bb0     e80aff         call fcn.00004abd
\           0000:4bb3     c3             ret
            0000:4bb4     e83400         call fcn.00004beb
            0000:4bb7     e8b803         call fcn.00004f72
            0000:4bba     e8ca00         call fcn.00004c87
            0000:4bbd     e8b203         call fcn.00004f72
            0000:4bc0     e82f01         call fcn.00004cf2
            0000:4bc3     c3             ret
            ; CALL XREFS from fcn.00004beb @ 0x4bf0(x), 0x4c3a(x)
            ; CALL XREF from fcn.00004c87 @ 0x4c8c(x)
            ; CALL XREFS from fcn.00004cf2 @ 0x4cf7(x), 0x4d5a(x)
/ 39: fcn.00004bc4 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4bc4    .string "PSQR\xb8" ; len=5                    ; arg1
|           0000:4bc9     0000           add byte [bx + si], al
|           0000:4bcb     bb0000         mov bx, 0
|           0000:4bce     b97f02         mov cx, 0x27f                 ; "s 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4bd1     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4bd4     e81bf7         call fcn.000042f2
|           0000:4bd7     b81c00         mov ax, 0x1c                  ; 28
|           0000:4bda     bb1500         mov bx, 0x15                  ; 21
|           0000:4bdd     b96302         mov cx, 0x263                 ; "installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4be0     ba4801         mov dx, 0x148                 ; "     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4be3     e88cf7         call fcn.00004372
|           0000:4be6    .string "ZY[X\xc3" ; len=5
            ; CALL XREF from str.Z_X @ +0x12(x)
/ 156: fcn.00004beb (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4beb    .string "PSQRW\xe8" ; len=6                   ; arg1
|           0000:4bf1     d1ff           sar di, 1
|           0000:4bf3     c606ccce0a     mov byte [0xcecc], 0xa
|           0000:4bf8     b80a00         mov ax, 0xa
|           0000:4bfb     bb2100         mov bx, 0x21                  ; '!' ; 33
|           0000:4bfe     bf840d         mov di, str.__The_object_of_the_game_Paranoid_is_to_remove_all_of_the ; 0xd84 ; "  The object of the game Paranoid is to remove all of the"
|           ; XREFS: DATA 0x0000326e  DATA 0x0000327d  DATA 0x0000328c  DATA 0x0000342d  CODE 0x00004c15  DATA 0x00006091  
|           ; XREFS: DATA 0x000060f2  DATA 0x0000614b  DATA 0x00006190  
|           0000:4c01     8a0d           mov cl, byte [di]
|           0000:4c03     80f9ff         cmp cl, 0xff
|           0000:4c06     740f           je 0x4c17
|           0000:4c08     e87ff2         call fcn.00003e8a
|           0000:4c0b     83c30e         add bx, 0xe                   ; 14
|           ; CODE XREF from fcn.00004beb @ 0x4c13(x)
|           0000:4c0e     47             inc di
|           0000:4c0f     f645ffff       test byte [di - 1], 0xff
|           0000:4c13     75f9           jne 0x4c0e
|           0000:4c15     ebea           jmp 0x4c01
|           ; CODE XREF from fcn.00004beb @ 0x4c06(x)
|           0000:4c17     c606ccce00     mov byte [0xcecc], 0
|           0000:4c1c     bf8313         mov di, str.Paranoid___information ; 0x1383 ; "Paranoid - information"
|           0000:4c1f     b81d00         mov ax, 0x1d                  ; 29
|           0000:4c22     bb0300         mov bx, 3
|           0000:4c25     e862f2         call fcn.00003e8a
|           0000:4c28     bfdf13         mov di, str.Press_a_key_for_the_next_page ; 0x13df ; "Press a key for the next page"
|           0000:4c2b     b81900         mov ax, 0x19                  ; 25
|           0000:4c2e     bb4c01         mov bx, 0x14c                 ; " $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4c31     e856f2         call fcn.00003e8a
|           0000:4c34     e80419         call fcn.0000653b
|           0000:4c37     e83803         call fcn.00004f72
|           0000:4c3a     e887ff         call fcn.00004bc4
|           0000:4c3d     c606ccce0a     mov byte [0xcecc], 0xa
|           0000:4c42     b80a00         mov ax, 0xa
|           0000:4c45     bb2100         mov bx, 0x21                  ; '!' ; 33
|           0000:4c48     bf0d11         mov di, str.__Some_of_the_bricks_have_letters_written_on_them__and_when ; 0x110d ; "  Some of the bricks have letters written on them, and when"
|           ; CODE XREF from fcn.00004beb @ 0x4c5f(x)
|           0000:4c4b     8a0d           mov cl, byte [di]
|           0000:4c4d     80f9ff         cmp cl, 0xff
|           0000:4c50     740f           je 0x4c61
|           0000:4c52     e835f2         call fcn.00003e8a
|           0000:4c55     83c30e         add bx, 0xe                   ; 14
|           ; CODE XREF from fcn.00004beb @ 0x4c5d(x)
|           0000:4c58     47             inc di
|           0000:4c59     f645ffff       test byte [di - 1], 0xff
|           0000:4c5d     75f9           jne 0x4c58
|           0000:4c5f     ebea           jmp 0x4c4b
|           ; CODE XREF from fcn.00004beb @ 0x4c50(x)
|           0000:4c61     c606ccce00     mov byte [0xcecc], 0
|           0000:4c66     bf8313         mov di, str.Paranoid___information ; 0x1383 ; "Paranoid - information"
|           0000:4c69     b81d00         mov ax, 0x1d                  ; 29
|           0000:4c6c     bb0300         mov bx, 3
|           0000:4c6f     e818f2         call fcn.00003e8a
|           0000:4c72     bf9a13         mov di, str.Press_a_key_for_brick_descriptions ; 0x139a ; "Press a key for brick descriptions"
|           0000:4c75     b81700         mov ax, 0x17                  ; 23
|           0000:4c78     bb4c01         mov bx, 0x14c                 ; " $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4c7b     e80cf2         call fcn.00003e8a
|           0000:4c7e     e8ba18         call fcn.0000653b
|           0000:4c81    .string "_ZY[X\xc3" ; len=6
            ; CALL XREF from str.Z_X @ +0x18(x)
/ 107: fcn.00004c87 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4c87    .string "PSQRV\xe8" ; len=6                   ; arg1
|           0000:4c8d     35ffbe         xor ax, 0xbeff
|           0000:4c90     1f             pop ds
|           0000:4c91     14b1           adc al, 0xb1                  ; 177
|           0000:4c93 ~   018b048b       add word [bp + di - 0x74fc], cx
|           ; CODE XREF from fcn.00004c87 @ 0x4ca9(x)
|           0000:4c94     8b04           mov ax, word [si]
|           0000:4c96     8b5c02         mov bx, word [si + 2]
|           0000:4c99     83c604         add si, 4
|           0000:4c9c     3dffff         cmp ax, 0xffff
|           0000:4c9f     7403           je 0x4ca4
|           0000:4ca1     e80c0e         call fcn.00005ab0
|           ; CODE XREF from fcn.00004c87 @ 0x4c9f(x)
|           0000:4ca4     fec1           inc cl
|           0000:4ca6     80f920         cmp cl, 0x20                  ; 32
|           0000:4ca9     75e9           jne 0x4c94
|           0000:4cab     c606ccce00     mov byte [0xcecc], 0
|           0000:4cb0     bf8313         mov di, str.Paranoid___information ; 0x1383 ; "Paranoid - information"
|           0000:4cb3     b81d00         mov ax, 0x1d                  ; 29
|           0000:4cb6     bb0300         mov bx, 3
|           0000:4cb9     e8cef1         call fcn.00003e8a
|           0000:4cbc     bfbd13         mov di, str.Press_a_key_for_icon_descriptions ; 0x13bd ; "Press a key for icon descriptions"
|           0000:4cbf     b81700         mov ax, 0x17                  ; 23
|           0000:4cc2     bb4c01         mov bx, 0x14c                 ; " $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4cc5     e8c2f1         call fcn.00003e8a
|           0000:4cc8     c606ccce0a     mov byte [0xcecc], 0xa
|           0000:4ccd     bf9b14         mov di, 0x149b
|           ; CODE XREF from fcn.00004c87 @ 0x4ce7(x)
|           0000:4cd0     8b05           mov ax, word [di]
|           0000:4cd2     3dffff         cmp ax, 0xffff
|           0000:4cd5     7412           je 0x4ce9
|           0000:4cd7     8b5d02         mov bx, word [di + 2]
|           0000:4cda     83c704         add di, 4
|           0000:4cdd     e8aaf1         call fcn.00003e8a
|           ; CODE XREF from fcn.00004c87 @ 0x4ce5(x)
|           0000:4ce0     47             inc di
|           0000:4ce1     f645ffff       test byte [di - 1], 0xff
|           0000:4ce5     75f9           jne 0x4ce0
|           0000:4ce7     ebe7           jmp 0x4cd0
|           ; CODE XREF from fcn.00004c87 @ 0x4cd5(x)
|           0000:4ce9     e84f18         call fcn.0000653b
|           0000:4cec    .string "^ZY[X\xc3" ; len=6
            ; CALL XREF from str.Z_X @ +0x1e(x)
/ 217: fcn.00004cf2 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4cf2    .string "PSQRV\xe8" ; len=6                   ; arg1
|           0000:4cf8     cafec6         retf 0xc6fe
|           0000:4cfb     06             push es
|           0000:4cfc     cc             int3
|           0000:4cfd     ce             into
|           0000:4cfe     00bf8313       add byte [bx + str.Paranoid___information], bh
|           0000:4d02     b81d00         mov ax, 0x1d                  ; 29
|           0000:4d05     bb0300         mov bx, 3
|           0000:4d08     e87ff1         call fcn.00003e8a
|           0000:4d0b     bfdf13         mov di, str.Press_a_key_for_the_next_page ; 0x13df ; "Press a key for the next page"
|           0000:4d0e     b81900         mov ax, 0x19                  ; 25
|           0000:4d11     bb4c01         mov bx, 0x14c                 ; " $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4d14     e873f1         call fcn.00003e8a
|           0000:4d17     c606ccce0a     mov byte [0xcecc], 0xa
|           0000:4d1c     b80e00         mov ax, 0xe                   ; 14
|           0000:4d1f     bb2100         mov bx, 0x21                  ; '!' ; 33
|           0000:4d22     bfb116         mov di, str.This_handy_icon_increases_the_size_of_your_bat_by_a ; 0x16b1 ; "This handy icon increases the size of your bat by a"
|           ; CODE XREF from fcn.00004cf2 @ 0x4d39(x)
|           0000:4d25     8a0d           mov cl, byte [di]
|           0000:4d27     80f9ff         cmp cl, 0xff
|           0000:4d2a     740f           je 0x4d3b
|           0000:4d2c     e85bf1         call fcn.00003e8a
|           0000:4d2f     83c30e         add bx, 0xe                   ; 14
|           ; CODE XREF from fcn.00004cf2 @ 0x4d37(x)
|           0000:4d32     47             inc di
|           0000:4d33     f645ffff       test byte [di - 1], 0xff
|           0000:4d37     75f9           jne 0x4d32
|           0000:4d39     ebea           jmp 0x4d25
|           ; CODE XREF from fcn.00004cf2 @ 0x4d2a(x)
|           0000:4d3b     e88d00         call fcn.00004dcb
|           0000:4d3e     e81a01         call fcn.00004e5b
|           0000:4d41     e8f717         call fcn.0000653b
|           0000:4d44     e81e19         call fcn.00006665
|           ; CODE XREF from fcn.00004cf2 @ 0x4d54(x)
|           0000:4d47     e85101         call fcn.00004e9b
|           0000:4d4a     e80e01         call fcn.00004e5b
|           0000:4d4d     e8eb17         call fcn.0000653b
|           0000:4d50     b401           mov ah, 1
|           0000:4d52     cd16           int 0x16
|           0000:4d54     74f1           je 0x4d47
|           0000:4d56     b400           mov ah, 0
|           0000:4d58     cd16           int 0x16
|           0000:4d5a     e867fe         call fcn.00004bc4
|           0000:4d5d     c606ccce00     mov byte [0xcecc], 0
|           0000:4d62     bf8313         mov di, str.Paranoid___information ; 0x1383 ; "Paranoid - information"
|           0000:4d65     b81d00         mov ax, 0x1d                  ; 29
|           0000:4d68     bb0300         mov bx, 3
|           0000:4d6b     e81cf1         call fcn.00003e8a
|           0000:4d6e     bffd13         mov di, str.Press_a_key_to_return_to_the_demo ; 0x13fd ; "Press a key to return to the demo"
|           0000:4d71     b81700         mov ax, 0x17                  ; 23
|           0000:4d74     bb4c01         mov bx, 0x14c                 ; " $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4d77     e810f1         call fcn.00003e8a
|           0000:4d7a     c606ccce0a     mov byte [0xcecc], 0xa
|           0000:4d7f     b80e00         mov ax, 0xe                   ; 14
|           0000:4d82     bb2300         mov bx, 0x23                  ; '#' ; 35
|           0000:4d85     bf3a19         mov di, str.To_increase_your_stock_of_balls__catch_this_icon_and_you ; 0x193a ; "To increase your stock of balls, catch this icon and you"
|           ; CODE XREF from fcn.00004cf2 @ 0x4da4(x)
|           0000:4d88     8a0d           mov cl, byte [di]
|           0000:4d8a     80f9ff         cmp cl, 0xff
|           0000:4d8d     7417           je 0x4da6
|           0000:4d8f     80f900         cmp cl, 0
|           0000:4d92     7503           jne 0x4d97
|           0000:4d94     83c305         add bx, 5
|           ; CODE XREF from fcn.00004cf2 @ 0x4d92(x)
|           0000:4d97     e8f0f0         call fcn.00003e8a
|           0000:4d9a     83c30e         add bx, 0xe                   ; 14
|           ; CODE XREF from fcn.00004cf2 @ 0x4da2(x)
|           0000:4d9d     47             inc di
|           0000:4d9e     f645ffff       test byte [di - 1], 0xff
|           0000:4da2     75f9           jne 0x4d9d
|           0000:4da4     ebe2           jmp 0x4d88
|           ; CODE XREF from fcn.00004cf2 @ 0x4d8d(x)
|           0000:4da6     e86a00         call fcn.00004e13
|           0000:4da9     e8af00         call fcn.00004e5b
|           0000:4dac     e88c17         call fcn.0000653b
|           0000:4daf     e8b318         call fcn.00006665
|           ; CODE XREF from fcn.00004cf2 @ 0x4dbf(x)
|           0000:4db2     e8e600         call fcn.00004e9b
|           0000:4db5     e8a300         call fcn.00004e5b
|           0000:4db8     e88017         call fcn.0000653b
|           0000:4dbb     b401           mov ah, 1
|           0000:4dbd     cd16           int 0x16
|           0000:4dbf     74f1           je 0x4db2
|           0000:4dc1     b400           mov ah, 0
|           0000:4dc3     cd16           int 0x16
|           0000:4dc5    .string "^ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00004cf2 @ 0x4d3b(x)
/ 72: fcn.00004dcb (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:4dcb    .string "PQVW\xbe" ; len=5                    ; arg1
|           0000:4dd0     310c           xor word [si], cx
|           0000:4dd2     bfd3ce         mov di, 0xced3
|           0000:4dd5     b90600         mov cx, 6
|           ; CODE XREF from fcn.00004dcb @ 0x4dec(x)
|           0000:4dd8     8a04           mov al, byte [si]
|           0000:4dda     884504         mov byte [di + 4], al
|           0000:4ddd     884505         mov byte [di + 5], al
|           0000:4de0     8a4401         mov al, byte [si + 1]
|           0000:4de3     884506         mov byte [di + 6], al
|           0000:4de6     83c602         add si, 2
|           0000:4de9     83c707         add di, 7
|           0000:4dec     e2ea           loop 0x4dd8
|           0000:4dee     8006ecce02     add byte [0xceec], 2
|           0000:4df3     be2219         mov si, str._n__nY_n          ; 0x1922 ; " |           ; "
|           0000:4df6     bfd3ce         mov di, 0xced3
|           0000:4df9     b90600         mov cx, 6
|           ; CODE XREF from fcn.00004dcb @ 0x4e0c(x)
|           0000:4dfc     8b04           mov ax, word [si]
|           0000:4dfe     8905           mov word [di], ax
|           0000:4e00     8b4402         mov ax, word [si + 2]
|           0000:4e03     894502         mov word [di + 2], ax
|           0000:4e06     83c604         add si, 4
|           0000:4e09     83c707         add di, 7
|           0000:4e0c     e2ee           loop 0x4dfc
|           0000:4e0e    .string "_^YX\xc3" ; len=5
            ; CALL XREF from fcn.00004cf2 @ 0x4da6(x)
/ 72: fcn.00004e13 (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:4e13    .string "PQVW\xbe" ; len=5                    ; arg1
|           0000:4e18     3d0cbf         cmp ax, 0xbf0c
|           0000:4e1b     d3ce           ror si, cl
|           0000:4e1d     b90600         mov cx, 6
|           ; CODE XREF from fcn.00004e13 @ 0x4e34(x)
|           0000:4e20     8a04           mov al, byte [si]
|           0000:4e22     884504         mov byte [di + 4], al
|           0000:4e25     884505         mov byte [di + 5], al
|           0000:4e28     8a4401         mov al, byte [si + 1]
|           0000:4e2b     884506         mov byte [di + 6], al
|           0000:4e2e     83c602         add si, 2
|           0000:4e31     83c707         add di, 7
|           0000:4e34     e2ea           loop 0x4e20
|           0000:4e36     8006ecce02     add byte [0xceec], 2
|           0000:4e3b     be871b         mov si, str._n_nR_n           ; 0x1b87 ; " |           ; "
|           0000:4e3e     bfd3ce         mov di, 0xced3
|           0000:4e41     b90600         mov cx, 6
|           ; CODE XREF from fcn.00004e13 @ 0x4e54(x)
|           0000:4e44     8b04           mov ax, word [si]
|           0000:4e46     8905           mov word [di], ax
|           0000:4e48     8b4402         mov ax, word [si + 2]
|           0000:4e4b     894502         mov word [di + 2], ax
|           0000:4e4e     83c604         add si, 4
|           0000:4e51     83c707         add di, 7
|           0000:4e54     e2ee           loop 0x4e44
|           0000:4e56    .string "_^YX\xc3" ; len=5
            ; CALL XREFS from fcn.00004cf2 @ 0x4d3e(x), 0x4d4a(x), 0x4da9(x), 0x4db5(x)
/ 64: fcn.00004e5b (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:4e5b    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:4e62     ce             into
|           0000:4e63     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:4e67     42             inc dx
|           0000:4e68     b011           mov al, 0x11                  ; 17
|           0000:4e6a     ee             out dx, al
|           0000:4e6b     bfd3ce         mov di, 0xced3
|           0000:4e6e     b90600         mov cx, 6
|           ; CODE XREF from fcn.00004e5b @ 0x4e88(x)
|           0000:4e71     8b05           mov ax, word [di]
|           0000:4e73     8b5d02         mov bx, word [di + 2]
|           0000:4e76     bea90b         mov si, 0xba9
|           0000:4e79     8a5504         mov dl, byte [di + 4]
|           0000:4e7c     32f6           xor dh, dh
|           0000:4e7e     03f2           add si, dx
|           0000:4e80     8b34           mov si, word [si]
|           0000:4e82     e8940a         call fcn.00005919
|           0000:4e85     83c707         add di, 7
|           0000:4e88     e2e7           loop 0x4e71
|           0000:4e8a     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4e8d     b005           mov al, 5
|           0000:4e8f     ee             out dx, al
|           0000:4e90     42             inc dx
|           0000:4e91     b010           mov al, 0x10                  ; 16
|           0000:4e93     ee             out dx, al
|           0000:4e94    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREFS from fcn.00004cf2 @ 0x4d47(x), 0x4db2(x)
/ 53: fcn.00004e9b (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:4e9b     50             push ax                       ; arg1
|           0000:4e9c     51             push cx                       ; arg2
|           0000:4e9d     56             push si
|           0000:4e9e     8a0e3ad2       mov cl, byte [0xd23a]
|           0000:4ea2     84c9           test cl, cl
|           0000:4ea4     7406           je 0x4eac
|           0000:4ea6     fe0e3ad2       dec byte [0xd23a]
|           0000:4eaa     eb20           jmp 0x4ecc
|           ; CODE XREF from fcn.00004e9b @ 0x4ea4(x)
|           0000:4eac     c6063ad204     mov byte [0xd23a], 4
|           0000:4eb1     bed3ce         mov si, 0xced3
|           0000:4eb4     b90600         mov cx, 6
|           ; CODE XREF from fcn.00004e9b @ 0x4eca(x)
|           0000:4eb7     8a4404         mov al, byte [si + 4]
|           0000:4eba     0402           add al, 2
|           0000:4ebc     3a4406         cmp al, byte [si + 6]
|           0000:4ebf     7603           jbe 0x4ec4
|           0000:4ec1     8a4405         mov al, byte [si + 5]
|           ; CODE XREF from fcn.00004e9b @ 0x4ebf(x)
|           0000:4ec4     884404         mov byte [si + 4], al
|           0000:4ec7     83c607         add si, 7
|           0000:4eca     e2eb           loop 0x4eb7
|           ; CODE XREF from fcn.00004e9b @ 0x4eaa(x)
|           0000:4ecc     5e             pop si
|           0000:4ecd     59             pop cx
|           0000:4ece     58             pop ax
\           0000:4ecf     c3             ret
            ; CALL XREF from fcn.00004f26 @ 0x4f2e(x)
/ 62: fcn.00004ed0 (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:4ed0    .string "PQVW\xbe" ; len=5                    ; arg1
|           0000:4ed5     9f             lahf
|           0000:4ed6     1bbfa200       sbb di, word [bx + 0xa2]
|           0000:4eda     b40f           mov ah, 0xf                   ; 15
|           ; CODE XREF from fcn.00004ed0 @ 0x4eef(x)
|           0000:4edc     803cff         cmp byte [si], 0xff
|           0000:4edf     7410           je 0x4ef1
|           0000:4ee1     e82a00         call fcn.00004f0e
|           ; CODE XREF from fcn.00004ed0 @ 0x4ee9(x)
|           0000:4ee4     46             inc si
|           0000:4ee5     f644ffff       test byte [si - 1], 0xff
|           0000:4ee9     75f9           jne 0x4ee4
|           0000:4eeb     81c7a000       add di, 0xa0                  ; 160
|           0000:4eef     ebeb           jmp 0x4edc
|           ; CODE XREF from fcn.00004ed0 @ 0x4edf(x)
|           0000:4ef1     bf5701         mov di, 0x157                 ; "ning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:4ef4     b013           mov al, 0x13                  ; 19
|           ; CODE XREF from fcn.00004ed0 @ 0x4f07(x)
|           0000:4ef6     b93a00         mov cx, 0x3a                  ; ':' ; 58
|           ; CODE XREF from fcn.00004ed0 @ 0x4f00(x)
|           0000:4ef9     26c6051e       mov byte es:[di], 0x1e        ; [0x1e:1]=255 ; 30
|           0000:4efd     83c702         add di, 2
|           0000:4f00     e2f7           loop 0x4ef9
|           0000:4f02     83c72c         add di, 0x2c                  ; 44
|           0000:4f05     fec8           dec al
|           0000:4f07     75ed           jne 0x4ef6
|           0000:4f09    .string "_^YX\xc3" ; len=5
            ; CALL XREF from fcn.00004ed0 @ 0x4ee1(x)
/ 24: fcn.00004f0e (int16_t arg1);
| `- args(ax)
|           0000:4f0e     50             push ax                       ; arg1
|           0000:4f0f     56             push si
|           0000:4f10     57             push di
|           ; CODE XREF from fcn.00004f0e @ 0x4f20(x)
|           0000:4f11     8a04           mov al, byte [si]
|           0000:4f13     84c0           test al, al
|           0000:4f15     740b           je 0x4f22
|           0000:4f17     f6d0           not al
|           0000:4f19     268905         mov word es:[di], ax          ; arg1
|           0000:4f1c     46             inc si
|           0000:4f1d     83c702         add di, 2
|           0000:4f20     ebef           jmp 0x4f11
|           ; CODE XREF from fcn.00004f0e @ 0x4f15(x)
|           0000:4f22     5f             pop di
|           0000:4f23     5e             pop si
|           0000:4f24     58             pop ax
\           0000:4f25     c3             ret
            ; CALL XREF from fcn.00003cdc @ 0x3ca7(x)
/ 39: fcn.00004f26 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:4f26     50             push ax                       ; arg1
|           0000:4f27     53             push bx                       ; arg3
|           0000:4f28     52             push dx                       ; arg2
|           0000:4f29     b800b8         mov ax, 0xb800                ; int16_t arg1
|           0000:4f2c     8ec0           mov es, ax
|           0000:4f2e     e89fff         call fcn.00004ed0
|           0000:4f31     b402           mov ah, 2
|           0000:4f33     b700           mov bh, 0
|           0000:4f35     baffff         mov dx, 0xffff
|           0000:4f38     cd10           int 0x10
|           0000:4f3a     e8f900         call fcn.00005036
|           0000:4f3d     e83200         call fcn.00004f72
|           0000:4f40     b402           mov ah, 2
|           0000:4f42     b700           mov bh, 0
|           ; DATA XREF from str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE @ +0xc5(r)
|           ; DATA XREF from str.___Paranoid.DOC_for_more_details. @ +0x9(r)
|           0000:4f44     ba0018         mov dx, 0x1800                ; "t, press the spacebar to release it."
|           0000:4f47     cd10           int 0x10
|           0000:4f49     5a             pop dx
|           0000:4f4a     5b             pop bx
|           0000:4f4b     58             pop ax
\           0000:4f4c     c3             ret
            0000:4f4d     3100           xor word [bx + si], ax
            0000:4f4f ~   e27e           loop 0x4fcf                   ; fcn.00004f7f+0x50
            ;-- str.__SQV:
            0000:4f50    .string "~;'SQV\xbb" ; len=7
|           0000:4f57     2cd4           sub al, 0xd4                  ; 212
|           0000:4f59     be1301         mov si, 0x113
|           0000:4f5c     b90400         mov cx, 4
|           ; CODE XREF from fcn.00004f53 @ 0x4f68(x)
|           0000:4f5f     803f01         cmp byte [bx], 1
|           0000:4f62     7408           je 0x4f6c
|           0000:4f64     43             inc bx
|           0000:4f65     83c602         add si, 2
|           0000:4f68     e2f5           loop 0x4f5f
|           0000:4f6a     eb02           jmp 0x4f6e
|           ; CODE XREF from fcn.00004f53 @ 0x4f62(x)
|           0000:4f6c     ff14           call word [si]
|           ; CODE XREF from fcn.00004f53 @ 0x4f6a(x)
|           0000:4f6e     5e             pop si
|           0000:4f6f     59             pop cx
|           0000:4f70     5b             pop bx
\           0000:4f71     c3             ret
            ; CALL XREF from fcn.00003caf @ 0x3cbc(x)
            ; CALL XREFS from fcn.00004beb @ 0x15(x), 0x1b(x), 0x4c37(x)
            ; CALL XREF from fcn.00004f26 @ 0x4f3d(x)
/ 13: fcn.00004f72 (int16_t arg1);
| `- args(ax)
|           0000:4f72     50             push ax                       ; arg1
|           ; CODE XREF from fcn.00004f72 @ 0x4f77(x)
|           0000:4f73     b401           mov ah, 1
|           0000:4f75     cd16           int 0x16
|           0000:4f77     74fa           je 0x4f73
|           0000:4f79     b400           mov ah, 0
|           0000:4f7b     cd16           int 0x16
|           0000:4f7d     58             pop ax
\           0000:4f7e     c3             ret
            ; CALL XREF from fcn.000048c0 @ 0x48fa(x)
/ 183: fcn.00004f7f (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0xe..0x10])
|           0000:4f7f    .string "PSQRVU\x89" ; len=7                  ; arg1
|           0000:4f86     e5f6           in ax, 0xf6
|           0000:4f88     05ff75         add ax, 0x75ff
|           0000:4f8b ~   03e9           add bp, cx
|           0000:4f8c     e99e00         jmp str.XX_ZY_X
|           ; CODE XREF from fcn.00004f7f @ 0x4f8a(x)
|           0000:4f8f     50             push ax
|           0000:4f90     50             push ax
|           0000:4f91     c6450100       mov byte [di + 1], 0
|           0000:4f95     89fe           mov si, di
|           0000:4f97     83c602         add si, 2
|           ; XREFS: CODE 0x00004fc1  CODE 0x00004fc5  CODE 0x00004fe5  CODE 0x00004fee  CODE 0x00004ff3  CODE 0x00004ffb  
|           ; XREFS: CODE 0x00005015  CODE 0x00005024  
|           0000:4f9a     8b46fc         mov ax, word [var_4h]
|           0000:4f9d     e86bf7         call fcn.0000470b
|           0000:4fa0     8b46fe         mov ax, word [var_2h]
|           0000:4fa3     e819f7         call fcn.000046bf
|           0000:4fa6     8946fc         mov word [var_4h], ax
|           0000:4fa9     32e4           xor ah, ah
|           0000:4fab     cd16           int 0x16
|           ;-- str.__btD__rtr__r:
|           0000:4fad    .string "<\btD<\rtr< r\x06" ; len=12
|           0000:4fb9     3c5f           cmp al, 0x5f                  ; '_' ; 95
|           0000:4fbb     7702           ja 0x4fbf
|           0000:4fbd ~   eb08           jmp 0x4fc7
|           ;-- str._b_ar:
|           0000:4fbe    .string "\b<ar\xd7" ; len=5
|           ; CODE XREFS from fcn.00004f7f @ 0x4fb7(x), 0x4fbb(x)
|           0000:4fbf    .string "\b<ar\xd7" ; len=5
|           ;-- str._zw:
|           0000:4fc3    .string "<zw\xd3\x88\x04" ; len=6
|           0000:4fc9     8b46fe         mov ax, word [var_2h]
|           0000:4fcc     b101           mov cl, 1
|           0000:4fce     b208           mov dl, 8
|           0000:4fd0     e843f5         call fcn.00004516
|           0000:4fd3     8a14           mov dl, byte [si]
|           0000:4fd5     e83ef5         call fcn.00004516
|           0000:4fd8     8a4501         mov al, byte [di + 1]
|           0000:4fdb     fec0           inc al
|           0000:4fdd     3a05           cmp al, byte [di]
|           0000:4fdf     740f           je 0x4ff0
|           0000:4fe1     fec8           dec al
|           0000:4fe3     3a05           cmp al, byte [di]
|           0000:4fe5     74b3           je 0x4f9a
|           0000:4fe7     46             inc si
|           0000:4fe8     fe4501         inc byte [di + 1]
|           0000:4feb     ff46fe         inc word [var_2h]
|           0000:4fee     ebaa           jmp 0x4f9a
|           ; CODE XREF from fcn.00004f7f @ 0x4fdf(x)
|           0000:4ff0     fe4501         inc byte [di + 1]
|           0000:4ff3     eba5           jmp 0x4f9a
|           ; CODE XREF from fcn.00004f7f @ 0x4faf(x)
|           0000:4ff5     f64501ff       test byte [di + 1], 0xff
|           0000:4ff9     7502           jne 0x4ffd
|           0000:4ffb     eb9d           jmp 0x4f9a
|           ; CODE XREF from fcn.00004f7f @ 0x4ff9(x)
|           0000:4ffd     8a4501         mov al, byte [di + 1]
|           ; DATA XREF from str.oAb @ +0x13(r)
|           0000:5000     3a05           cmp al, byte [di]
|           0000:5002     7413           je 0x5017
|           0000:5004     ff4efe         dec word [var_2h]
|           0000:5007     fe4d01         dec byte [di + 1]
|           0000:500a     4e             dec si
|           0000:500b     8b46fe         mov ax, word [var_2h]
|           0000:500e     b208           mov dl, 8
|           0000:5010     b101           mov cl, 1
|           0000:5012     e801f5         call fcn.00004516
|           0000:5015     eb83           jmp 0x4f9a
|           ; CODE XREF from fcn.00004f7f @ 0x5002(x)
|           0000:5017     fe4d01         dec byte [di + 1]
|           0000:501a     8b46fe         mov ax, word [var_2h]
|           0000:501d     b208           mov dl, 8
|           0000:501f     b101           mov cl, 1
|           0000:5021     e8f2f4         call fcn.00004516
|           0000:5024     e973ff         jmp 0x4f9a
|           ; CODE XREF from fcn.00004f7f @ 0x4fb3(x)
|           0000:5027     8b46fc         mov ax, word [var_4h]
|           0000:502a     e8def6         call fcn.0000470b
|           ;-- str.XX_ZY_X:
|           ; CODE XREF from fcn.00004f7f @ 0x4f8c(x)
|           0000:502d    .string "XX]^ZY[X\xc3" ; len=9
            ; XREFS: CALL 0x00003810  CALL 0x00003b2c  CALL 0x00003b4f  CALL 0x00003c3c  CALL 0x00003c47  CALL 0x00003c9e  
            ; XREFS: CALL 0x00003cb9  CALL 0x00004f3a  CALL 0x00006373  
/ 15: fcn.00005036 (int16_t arg1);
| `- args(ax)
|           0000:5036     50             push ax                       ; arg1
|           ; CODE XREF from fcn.00005036 @ 0x5041(x)
|           0000:5037     b401           mov ah, 1
|           0000:5039     cd16           int 0x16
|           0000:503b     7406           je 0x5043
|           0000:503d     b400           mov ah, 0
|           0000:503f     cd16           int 0x16
|           0000:5041     ebf4           jmp 0x5037
|           ; CODE XREF from fcn.00005036 @ 0x503b(x)
|           0000:5043     58             pop ax
\           0000:5044     c3             ret
            ; DATA XREF from fcn.000050cb @ 0x50d2(r)
            0000:5045     50             push ax
            0000:5046     53             push bx
            0000:5047     57             push di
            0000:5048     e460           in al, 0x60
            0000:504a     50             push ax
            0000:504b     e461           in al, 0x61
            0000:504d     88c4           mov ah, al
            0000:504f     0c80           or al, 0x80                   ; 128
            0000:5051     e661           out 0x61, al
            0000:5053     86c4           xchg ah, al
            0000:5055     e661           out 0x61, al
            0000:5057     58             pop ax
            0000:5058     3ce0           cmp al, 0xe0                  ; 224
            0000:505a     7508           jne 0x5064
            0000:505c     2ec6061cd401   mov byte cs:[0xd41c], 1
            0000:5062     eb49           jmp 0x50ad
            ; CODE XREF from str.XX_ZY_X @ +0x2d(x)
            0000:5064     88c4           mov ah, al
            0000:5066     80e480         and ah, 0x80                  ; 128
            0000:5069     247f           and al, 0x7f                  ; 127
            0000:506b     bb1dd4         mov bx, 0xd41d
            0000:506e     bf2ad4         mov di, 0xd42a
            ; CODE XREF from str.t0.:_at @ +0x30(x)
            0000:5071     2e803fff       cmp byte cs:[bx], 0xff
            ;-- str.t0.:_at:
            0000:5075    .string "t0.:\at\x10" ; len=7
            0000:507c     2ef6061cd4ff   test byte cs:[0xd41c], 0xff
            0000:5082     741d           je 0x50a1
            0000:5084     2e3a4701       cmp al, byte cs:[bx + 1]
            0000:5088     7517           jne 0x50a1
            0000:508a     eb08           jmp 0x5094
            ; CODE XREF from str.t0.:_at @ +0x5(x)
            0000:508c     2ef6061cd4ff   test byte cs:[0xd41c], 0xff
            0000:5092     750d           jne 0x50a1
            ; CODE XREF from str.t0.:_at @ +0x15(x)
            0000:5094     2ec60500       mov byte cs:[di], 0
            0000:5098     84e4           test ah, ah
            0000:509a     7803           js 0x509f
            0000:509c     2efe05         inc byte cs:[di]
            ; CODE XREF from str.t0.:_at @ +0x25(x)
            0000:509f     eb06           jmp 0x50a7
            ; CODE XREFS from str.t0.:_at @ +0xd(x), +0x13(x), +0x1d(x)
            0000:50a1     83c302         add bx, 2
            0000:50a4     47             inc di
            0000:50a5     ebca           jmp 0x5071
            ; CODE XREFS from str.t0.:_at @ +0x0(x), +0x2a(x)
            0000:50a7     2ec6061cd400   mov byte cs:[0xd41c], 0
            ; CODE XREF from str.XX_ZY_X @ +0x35(x)
            0000:50ad     b020           mov al, 0x20                  ; 32
            0000:50af     e620           out 0x20, al
            0000:50b1     fb             sti
            0000:50b2     5f             pop di
            0000:50b3     5b             pop bx
            0000:50b4     58             pop ax
            0000:50b5     cf             iret
            ; CALL XREF from fcn.00005134 @ 0x5138(x)
/ 21: fcn.000050b6 (int16_t arg1, int16_t arg2);
| `- args(ax, bx)
|           0000:50b6     50             push ax                       ; arg1
|           0000:50b7     53             push bx                       ; arg2
|           0000:50b8     06             push es
|           0000:50b9     b80935         mov ax, 0x3509
|           0000:50bc     cd21           int 0x21
|           0000:50be     8cc0           mov ax, es
|           0000:50c0     a318d4         mov word [0xd418], ax         ; [0xd418:2]=0xffff
|           0000:50c3     891e1ad4       mov word [0xd41a], bx         ; arg2
|           0000:50c7     07             pop es
|           0000:50c8     5b             pop bx
|           0000:50c9     58             pop ax
\           0000:50ca     c3             ret
            ;-- str.PQRW:
            ; CALL XREF from fcn.00003658 @ 0x365d(x)
/ 29: fcn.000050cb (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:50cb    .string "PQRW\xb8" ; len=5                    ; arg1
|           0000:50d0     0925           or word [di], sp
|           0000:50d2     ba4550         mov dx, 0x5045                ; 'EP' ; "PSW\xe4`P\xe4a\x88\xc4\f\x80\xe6a\x86\xc4\xe6aX<\xe0u\b.\xc6\x06\x1c\xd4\x01\xebI\x88\u0100\xe4\x80$\x7f\xbb\x1d\u053f*\xd4.\x80?\xfft0.:\at\x10.\xf6\x06\x1c\xd4\xfft\x1d.:G\x01u\x17\xeb\b.\xf6\x06\x1c\xd4\xffu\r.\xc6\x05"
|           0000:50d5     cd21           int 0x21
|           0000:50d7     bf2ad4         mov di, 0xd42a
|           0000:50da     b90600         mov cx, 6
|           ; CODE XREF from fcn.000050cb @ 0x50e1(x)
|           0000:50dd     c60500         mov byte [di], 0
|           0000:50e0     47             inc di
|           0000:50e1     e2fa           loop 0x50dd
|           0000:50e3    .string "_ZYX\xc3" ; len=5
            ; CALL XREF from fcn.00003658 @ 0x36f6(x)
            ; CALL XREF from fcn.00003cdc @ 0x3c9b(x)
/ 41: fcn.000050e8 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:50e8     50             push ax                       ; arg1
|           0000:50e9     52             push dx                       ; arg2
|           0000:50ea     1e             push ds
|           0000:50eb     8b161ad4       mov dx, word [0xd41a]
|           0000:50ef ~   a118d4         mov ax, word [0xd418]         ; [0xd418:2]=0xffff
|           ;-- str._t_:
|           0000:50f1    .string "\xd4\x8e\xd8\xb8\t%\xcd" ; len=7
|           0000:50f8     21b84000       and word [bx + si + 0x40], di
|           0000:50fc     8ed8           mov ds, ax
|           0000:50fe     80261700f0     and byte [0x17], 0xf0         ; [0xf0:1]=255
|           0000:5103     80261800fc     and byte [0x18], 0xfc         ; [0xfc:1]=255
|           0000:5108     80269600f3     and byte [0x96], 0xf3         ; [0xf3:1]=255
|           0000:510d     1f             pop ds
|           0000:510e     5a             pop dx
|           0000:510f     58             pop ax
\           0000:5110     c3             ret
|           ; CODE XREF from fcn.00000100 @ 0x100(x)
|           0000:5111     e82000         call fcn.00005134
|           0000:5114     e8ee0f         call fcn.00006105
|           0000:5117     e8dd0f         call fcn.000060f7
|           0000:511a     e878e1         call fcn.00003295
|           0000:511d     e855e3         call fcn.00003475
|           0000:5120     e8c7e2         call fcn.000033ea
|           0000:5123     e8e613         call fcn.0000650c
|           0000:5126     e879e1         call fcn.000032a2
|           0000:5129     e83ce2         call fcn.00003368
|           0000:512c     e83812         call fcn.00006367
|           0000:512f     b000           mov al, 0
|           0000:5131     e9a200         jmp 0x51d6
            ;-- str.PQVW:
            ; CALL XREF from fcn.00000100 @ 0x5111(x)
/ 162: fcn.00005134 (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:5134    .string "PQVW\xe8" ; len=5                    ; arg1
|           0000:5139     7bff           jnp 0x513a
|           0000:513b     c606d1ce00     mov byte [0xced1], 0
|           0000:5140     c606d2ce00     mov byte [0xced2], 0
|           0000:5145     be8c07         mov si, 0x78c                 ; "Levels.PAR"
|           0000:5148     bf4e80         mov di, 0x804e
|           ; CODE XREF from fcn.00005134 @ 0x5155(x)
|           0000:514b     8a04           mov al, byte [si]
|           0000:514d     8805           mov byte [di], al
|           0000:514f     3c24           cmp al, 0x24                  ; '$' ; 36
|           0000:5151     7404           je 0x5157
|           0000:5153     46             inc si
|           0000:5154     47             inc di
|           0000:5155     ebf4           jmp 0x514b
|           ; CODE XREF from fcn.00005134 @ 0x5151(x)
|           0000:5157     c6063cd200     mov byte [0xd23c], 0
|           0000:515c     c606a1d3ff     mov byte [0xd3a1], 0xff       ; [0xff:1]=255
|           0000:5161     c606aad3ff     mov byte [0xd3aa], 0xff       ; [0xff:1]=255
|           0000:5166     c606add3ff     mov byte [0xd3ad], 0xff       ; [0xff:1]=255
|           0000:516b     c70699d30000   mov word [0xd399], 0
|           0000:5171     c6060ecf00     mov byte [0xcf0e], 0
|           0000:5176     c60698d301     mov byte [0xd398], 1
|           0000:517b     c6063ad204     mov byte [0xd23a], 4
|           0000:5180     c6063bd201     mov byte [0xd23b], 1
|           0000:5185     c7063dd20006   mov word [0xd23d], 0x600      ; [0x600:2]=0
|           0000:518b     c60639d201     mov byte [0xd239], 1
|           0000:5190     c70637d2006e   mov word [0xd237], 0x6e00     ; [0x6e00:2]=0xffff
|           0000:5196     e82ce6         call fcn.000037c5
|           0000:5199     c706cece7507   mov word [0xcece], 0x775      ; [0x775:2]=0x502 "nal graphics - Tom North         PRESS SPACE"
|           0000:519f     c6066cc1ff     mov byte [0xc16c], 0xff       ; [0xff:1]=255
|           0000:51a4     be0501         mov si, 0x105
|           0000:51a7     bf1dd4         mov di, 0xd41d
|           ; CODE XREF from fcn.00005134 @ 0x51b9(x)
|           0000:51aa     8b04           mov ax, word [si]
|           0000:51ac     3dffff         cmp ax, 0xffff
|           0000:51af     740a           je 0x51bb
|           0000:51b1     8905           mov word [di], ax
|           0000:51b3     83c602         add si, 2
|           0000:51b6     83c702         add di, 2
|           0000:51b9     ebef           jmp 0x51aa
|           ; CODE XREF from fcn.00005134 @ 0x51af(x)
|           0000:51bb     c60629d4ff     mov byte [0xd429], 0xff       ; [0xff:1]=255
|           0000:51c0     bf2ad4         mov di, 0xd42a
|           0000:51c3     b90600         mov cx, 6
|           ; CODE XREF from fcn.00005134 @ 0x51ca(x)
|           0000:51c6     c60500         mov byte [di], 0
|           0000:51c9     47             inc di
|           0000:51ca     e2fa           loop 0x51c6
|           0000:51cc     c6061cd400     mov byte [0xd41c], 0
|           ;-- str._YX:
|           0000:51d1    .string "_^YX\xc3" ; len=5
|           ; CODE XREFS from fcn.00000100 @ 0x5131(x), 0x51dc(x)
|           0000:51d6     e85fea         call fcn.00003c38
|           0000:51d9     e899ea         call fcn.00003c75
\           0000:51dc     ebf8           jmp 0x51d6
            ; DATA XREF from fcn.00006300 @ 0x630b(r)
            0000:51de     df             invalid
            0000:51df     df             invalid
            0000:51e0     df             invalid
            0000:51e1     df             invalid
            0000:51e2     df             invalid
            0000:51e3     df             invalid
            0000:51e4     df             invalid
            0000:51e5     df             invalid
            0000:51e6     df             invalid
            0000:51e7     df             invalid
            0000:51e8     df             invalid
            0000:51e9     df             invalid
            0000:51ea     df             invalid
            0000:51eb     df             invalid
            0000:51ec     df             invalid
            0000:51ed     df             invalid
            0000:51ee     df             invalid
            0000:51ef     df             invalid
            0000:51f0     df00           fild word [bx + si]
            0000:51f2     df             invalid
            0000:51f3     df             invalid
            0000:51f4     df             invalid
            0000:51f5     df             invalid
            0000:51f6     df             invalid
            0000:51f7     df             invalid
            0000:51f8     df             invalid
            0000:51f9     df             invalid
            0000:51fa     df             invalid
            0000:51fb     df             invalid
            0000:51fc     df             invalid
            0000:51fd     df             invalid
            0000:51fe     df             invalid
            0000:51ff     df             invalid
            0000:5200     df             invalid
            0000:5201     df             invalid
            0000:5202     df             invalid
            0000:5203     df             invalid
            0000:5204     df00           fild word [bx + si]
            0000:5206     baa9be         mov dx, 0xbea9
            0000:5209     b3aa           mov bl, 0xaa                  ; 170
            0000:520b     beabb6         mov si, 0xb6ab
            0000:520e     b0b1           mov al, 0xb1                  ; 177
            0000:5210     dfbcb0af       fistp qword [si - 0x5050]
            0000:5214     a6             cmpsb byte [si], byte es:[di]
            0000:5215     df             invalid
            0000:5216     df             invalid
            0000:5217     df             invalid
            0000:5218     df00           fild word [bx + si]
            ; CALL XREF from fcn.00003658 @ 0x36b2(x)
            ; CALL XREF from fcn.000036fd @ 0x372a(x)
/ 197: fcn.0000521a (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:521a     50             push ax                       ; arg1
|           0000:521b     53             push bx                       ; arg3
|           0000:521c     52             push dx                       ; arg2
|           0000:521d     f6060ecfff     test byte [0xcf0e], 0xff
|           0000:5222     7503           jne 0x5227
|           0000:5224     e9b400         jmp 0x52db
|           ; CODE XREF from fcn.0000521a @ 0x5222(x)
|           0000:5227     f606d1ceff     test byte [0xced1], 0xff
|           0000:522c     7403           je 0x5231
|           0000:522e     e9aa00         jmp 0x52db
|           ; CODE XREF from fcn.0000521a @ 0x522c(x)
|           0000:5231     c60654d200     mov byte [0xd254], 0
|           0000:5236     f6060fcfff     test byte [0xcf0f], 0xff
|           0000:523b     7428           je 0x5265
|           0000:523d     8b1e10cf       mov bx, word [0xcf10]
|           0000:5241     8b17           mov dx, word [bx]
|           0000:5243     891613cf       mov word [0xcf13], dx
|           0000:5247     b0b6           mov al, 0xb6                  ; 182
|           0000:5249     e643           out 0x43, al
|           0000:524b     8ac2           mov al, dl
|           0000:524d     e642           out 0x42, al
|           0000:524f     8ac6           mov al, dh
|           0000:5251     e642           out 0x42, al
|           0000:5253     830610cf02     add word [0xcf10], 2
|           0000:5258     c6060fcf00     mov byte [0xcf0f], 0
|           0000:525d     e461           in al, 0x61
|           0000:525f     0c03           or al, 3
|           0000:5261     e661           out 0x61, al
|           0000:5263     eb07           jmp 0x526c
|           ; CODE XREF from fcn.0000521a @ 0x523b(x)
|           0000:5265     f60612cfff     test byte [0xcf12], 0xff
|           0000:526a     754f           jne 0x52bb
|           ; CODE XREF from fcn.0000521a @ 0x5263(x)
|           0000:526c     8b1e10cf       mov bx, word [0xcf10]
|           0000:5270     ff0610cf       inc word [0xcf10]
|           0000:5274     8a07           mov al, byte [bx]
|           0000:5276     a212cf         mov byte [0xcf12], al         ; [0xcf12:1]=255
|           0000:5279     803e12cfff     cmp byte [0xcf12], 0xff
|           0000:527e     750d           jne 0x528d
|           0000:5280     e461           in al, 0x61
|           0000:5282     24fc           and al, 0xfc
|           0000:5284     e661           out 0x61, al
|           0000:5286     c6060ecf00     mov byte [0xcf0e], 0
|           0000:528b     eb4e           jmp 0x52db
|           ; CODE XREF from fcn.0000521a @ 0x527e(x)
|           0000:528d     43             inc bx
|           0000:528e     ff37           push word [bx]
|           0000:5290     8f0615cf       pop word [0xcf15]
|           0000:5294     830610cf02     add word [0xcf10], 2
|           0000:5299     fe0e12cf       dec byte [0xcf12]
|           0000:529d     a115cf         mov ax, word [0xcf15]         ; [0xcf15:2]=0xffff
|           0000:52a0     85c0           test ax, ax
|           0000:52a2     7437           je 0x52db
|           0000:52a4     030613cf       add ax, word [0xcf13]
|           0000:52a8     a313cf         mov word [0xcf13], ax         ; [0xcf13:2]=0xffff
|           0000:52ab     8bd0           mov dx, ax
|           0000:52ad     b0b6           mov al, 0xb6                  ; 182
|           0000:52af     e643           out 0x43, al
|           0000:52b1     8ac2           mov al, dl
|           0000:52b3     e642           out 0x42, al
|           0000:52b5     8ac6           mov al, dh
|           0000:52b7     e642           out 0x42, al
|           0000:52b9     eb20           jmp 0x52db
|           ; CODE XREF from fcn.0000521a @ 0x526a(x)
|           0000:52bb     fe0e12cf       dec byte [0xcf12]
|           0000:52bf     a115cf         mov ax, word [0xcf15]         ; [0xcf15:2]=0xffff
|           0000:52c2     85c0           test ax, ax
|           0000:52c4     7415           je 0x52db
|           0000:52c6     030613cf       add ax, word [0xcf13]
|           0000:52ca     a313cf         mov word [0xcf13], ax         ; [0xcf13:2]=0xffff
|           0000:52cd     8bd0           mov dx, ax
|           0000:52cf     b0b6           mov al, 0xb6                  ; 182
|           0000:52d1     e643           out 0x43, al
|           0000:52d3     8ac2           mov al, dl
|           0000:52d5     e642           out 0x42, al
|           0000:52d7     8ac6           mov al, dh
|           0000:52d9 ~   e642           out 0x42, al
|           ;-- str.BZ_X:
|           0000:52da    .string "BZ[X\xc3" ; len=5
            ; XREFS: CALL 0x00002205  CALL 0x0000228c  CALL 0x000024ed  CALL 0x00002b13  CALL 0x00002b51  CALL 0x00002ba7  
            ; XREFS: CALL 0x00002bbe  CALL 0x00002bda  CALL 0x00002c4c  CALL 0x00002d02  CALL 0x000036da  CALL 0x000036e6  
            ; XREFS: CALL 0x00005f8c  
/ 26: fcn.000052df (int16_t arg1);
| `- args(ax)
|           0000:52df     50             push ax                       ; arg1
|           0000:52e0     57             push di
|           0000:52e1     8a05           mov al, byte [di]
|           0000:52e3     3a060ecf       cmp al, byte [0xcf0e]
|           0000:52e7     720d           jb 0x52f6
|           0000:52e9     a20ecf         mov byte [0xcf0e], al         ; [0xcf0e:1]=255
|           0000:52ec     c6060fcf01     mov byte [0xcf0f], 1
|           0000:52f1     47             inc di
|           0000:52f2     893e10cf       mov word [0xcf10], di
|           ; CODE XREF from fcn.000052df @ 0x52e7(x)
|           0000:52f6     5f             pop di
|           0000:52f7     58             pop ax
\           0000:52f8     c3             ret
            0000:52f9     3100           xor word [bx + si], ax
            0000:52fb ~   e27e           loop 0x537b                   ; fcn.000052ff+0x7c
            ;-- str.__PSQRVU:
            0000:52fc    .string "~;'PSQRVU\x89" ; len=10
|           0000:5306     e5c6           in ax, 0xc6
|           0000:5308     06             push es
|           0000:5309     40             inc ax
|           0000:530a     d200           rol byte [bx + si], cl
|           0000:530c     c60641d200     mov byte [0xd241], 0
|           0000:5311     c60642d200     mov byte [0xd242], 0
|           0000:5316     c60643d200     mov byte [0xd243], 0
|           0000:531b     c60644d200     mov byte [0xd244], 0
|           ; DATA XREF from str.___New_High_Score @ +0x8(r)
|           0000:5320     c60645d200     mov byte [0xd245], 0
|           0000:5325     b95201         mov cx, 0x152                 ; "Returning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5328     29d9           sub cx, bx
|           0000:532a     83f906         cmp cx, 6                     ; 6
|           0000:532d     7603           jbe 0x5332
|           0000:532f     b90600         mov cx, 6
|           ; CODE XREF from fcn.000052ff @ 0x532d(x)
|           0000:5332     be40d2         mov si, 0xd240
|           ; CODE XREF from fcn.000052ff @ 0x5339(x)
|           0000:5335     c60401         mov byte [si], 1
|           0000:5338     46             inc si
|           0000:5339     e2fa           loop 0x5335
|           0000:533b     8bc3           mov ax, bx
|           0000:533d     d1e3           shl bx, 1
|           0000:533f     d1e3           shl bx, 1
|           0000:5341     01c3           add bx, ax
|           0000:5343     d1e3           shl bx, 1
|           0000:5345     d1e3           shl bx, 1
|           0000:5347     d1e3           shl bx, 1
|           0000:5349     d1e3           shl bx, 1
|           0000:534b     8b460a         mov ax, word [var_ah]
|           0000:534e     8bf0           mov si, ax
|           0000:5350     d1e8           shr ax, 1
|           0000:5352     d1e8           shr ax, 1
|           0000:5354     d1e8           shr ax, 1
|           0000:5356     01c3           add bx, ax
|           0000:5358     031e37d2       add bx, word [0xd237]
|           0000:535c     83e607         and si, 7
|           0000:535f     d1e6           shl si, 1
|           0000:5361     8bc6           mov ax, si
|           0000:5363     d1e6           shl si, 1
|           0000:5365     01c6           add si, ax
|           0000:5367     81c6530a       add si, 0xa53
|           0000:536b     8a0c           mov cl, byte [si]
|           0000:536d     80f900         cmp cl, 0
|           0000:5370     742a           je 0x539c
|           0000:5372     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5375     b008           mov al, 8
|           0000:5377     ee             out dx, al
|           0000:5378     42             inc dx
|           0000:5379     88c8           mov al, cl
|           ; CODE XREF from str.BZ_X @ +0x21(x)
|           0000:537b     ee             out dx, al
|           0000:537c     f60640d2ff     test byte [0xd240], 0xff
|           0000:5381     7407           je 0x538a
|           0000:5383     268a07         mov al, byte es:[bx]
|           0000:5386     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           ; CODE XREF from fcn.000052ff @ 0x5381(x)
|           0000:538a     f60645d2ff     test byte [0xd245], 0xff
|           0000:538f     740b           je 0x539c
|           0000:5391     268a879001     mov al, byte es:[bx + 0x190]
|           0000:5396     26c6879001ff   mov byte es:[bx + 0x190], 0xff ; [0xff:1]=255
|           ; CODE XREFS from fcn.000052ff @ 0x5370(x), 0x538f(x)
|           0000:539c     8a4c01         mov cl, byte [si + 1]
|           0000:539f     80f900         cmp cl, 0
|           0000:53a2     742c           je 0x53d0
|           0000:53a4     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:53a7     b008           mov al, 8
|           0000:53a9     ee             out dx, al
|           0000:53aa     42             inc dx
|           0000:53ab     88c8           mov al, cl
|           0000:53ad     ee             out dx, al
|           0000:53ae     f60640d2ff     test byte [0xd240], 0xff
|           0000:53b3     7409           je 0x53be
|           0000:53b5     268a4701       mov al, byte es:[bx + 1]
|           0000:53b9     26c64701ff     mov byte es:[bx + 1], 0xff    ; [0xff:1]=255
|           ; CODE XREF from fcn.000052ff @ 0x53b3(x)
|           0000:53be     f60645d2ff     test byte [0xd245], 0xff
|           0000:53c3     740b           je 0x53d0
|           0000:53c5     268a879101     mov al, byte es:[bx + 0x191]
|           0000:53ca     26c6879101ff   mov byte es:[bx + 0x191], 0xff ; [0xff:1]=255
|           ; CODE XREFS from fcn.000052ff @ 0x53a2(x), 0x53c3(x)
|           0000:53d0     8a4c02         mov cl, byte [si + 2]
|           0000:53d3     80f900         cmp cl, 0
|           0000:53d6     742c           je 0x5404
|           0000:53d8     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:53db     b008           mov al, 8
|           0000:53dd     ee             out dx, al
|           0000:53de     42             inc dx
|           0000:53df     88c8           mov al, cl
|           0000:53e1     ee             out dx, al
|           0000:53e2     f60641d2ff     test byte [0xd241], 0xff
|           0000:53e7     7409           je 0x53f2
|           0000:53e9     268a4750       mov al, byte es:[bx + 0x50]
|           0000:53ed     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           ; CODE XREF from fcn.000052ff @ 0x53e7(x)
|           0000:53f2     f60644d2ff     test byte [0xd244], 0xff
|           0000:53f7     740b           je 0x5404
|           0000:53f9     268a874001     mov al, byte es:[bx + 0x140]
|           0000:53fe     26c6874001ff   mov byte es:[bx + 0x140], 0xff ; [0xff:1]=255
|           ; CODE XREFS from fcn.000052ff @ 0x53d6(x), 0x53f7(x)
|           0000:5404     8a4c03         mov cl, byte [si + 3]
|           0000:5407     80f900         cmp cl, 0
|           0000:540a     742c           je 0x5438
|           0000:540c     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:540f     b008           mov al, 8
|           0000:5411     ee             out dx, al
|           0000:5412     42             inc dx
|           0000:5413     88c8           mov al, cl
|           0000:5415     ee             out dx, al
|           0000:5416     f60641d2ff     test byte [0xd241], 0xff
|           0000:541b     7409           je 0x5426
|           0000:541d     268a4751       mov al, byte es:[bx + 0x51]
|           0000:5421     26c64751ff     mov byte es:[bx + 0x51], 0xff ; [0xff:1]=255
|           ; CODE XREF from fcn.000052ff @ 0x541b(x)
|           0000:5426     f60644d2ff     test byte [0xd244], 0xff
|           0000:542b     740b           je 0x5438
|           0000:542d     268a874101     mov al, byte es:[bx + 0x141]
|           0000:5432     26c6874101ff   mov byte es:[bx + 0x141], 0xff ; [0xff:1]=255
|           ; CODE XREFS from fcn.000052ff @ 0x540a(x), 0x542b(x)
|           0000:5438     8a4c04         mov cl, byte [si + 4]
|           0000:543b     80f900         cmp cl, 0
|           0000:543e     742e           je 0x546e
|           0000:5440     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5443     b008           mov al, 8
|           0000:5445     ee             out dx, al
|           0000:5446     42             inc dx
|           0000:5447     88c8           mov al, cl
|           0000:5449     ee             out dx, al
|           0000:544a     f60642d2ff     test byte [0xd242], 0xff
|           0000:544f     740b           je 0x545c
|           0000:5451     268a87a000     mov al, byte es:[bx + 0xa0]
|           0000:5456     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           ; CODE XREF from fcn.000052ff @ 0x544f(x)
|           0000:545c     f60643d2ff     test byte [0xd243], 0xff
|           0000:5461     740b           je 0x546e
|           0000:5463     268a87f000     mov al, byte es:[bx + 0xf0]
|           0000:5468     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           ; CODE XREFS from fcn.000052ff @ 0x543e(x), 0x5461(x)
|           0000:546e     8a4c05         mov cl, byte [si + 5]
|           0000:5471     80f900         cmp cl, 0
|           0000:5474     742e           je 0x54a4
|           0000:5476     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5479     b008           mov al, 8
|           0000:547b     ee             out dx, al
|           0000:547c     42             inc dx
|           0000:547d     88c8           mov al, cl
|           0000:547f     ee             out dx, al
|           0000:5480     f60642d2ff     test byte [0xd242], 0xff
|           0000:5485     740b           je 0x5492
|           0000:5487     268a87a100     mov al, byte es:[bx + 0xa1]
|           0000:548c     26c687a100ff   mov byte es:[bx + 0xa1], 0xff ; [0xff:1]=255
|           ; CODE XREF from fcn.000052ff @ 0x5485(x)
|           0000:5492     f60643d2ff     test byte [0xd243], 0xff
|           0000:5497     740b           je 0x54a4
|           0000:5499     268a87f100     mov al, byte es:[bx + 0xf1]
|           0000:549e     26c687f100ff   mov byte es:[bx + 0xf1], 0xff ; [0xff:1]=255
|           ; CODE XREFS from fcn.000052ff @ 0x5474(x), 0x5497(x)
|           0000:54a4     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:54a7     b008           mov al, 8
|           0000:54a9     ee             out dx, al
|           0000:54aa     42             inc dx
|           0000:54ab     b0ff           mov al, 0xff
|           0000:54ad     ee             out dx, al
|           0000:54ae    .string "]^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00002e77 @ 0x2ec2(x)
            ; CALL XREF from fcn.000055f9 @ 0x5629(x)
/ 147: fcn.000054b5 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0x2..0x8])
|           0000:54b5    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:54bd     e589           in ax, 0x89
|           0000:54bf     de             invalid
|           0000:54c0     d1e3           shl bx, 1
|           0000:54c2     d1e3           shl bx, 1
|           0000:54c4     03f3           add si, bx
|           0000:54c6     d1e6           shl si, 1
|           0000:54c8     d1e6           shl si, 1
|           0000:54ca     d1e6           shl si, 1
|           0000:54cc     d1e6           shl si, 1
|           0000:54ce     d1e8           shr ax, 1
|           0000:54d0     d1e8           shr ax, 1
|           0000:54d2     d1e8           shr ax, 1
|           0000:54d4     01c6           add si, ax
|           0000:54d6     033637d2       add si, word [0xd237]
|           0000:54da     32f6           xor dh, dh
|           0000:54dc     8aca           mov cl, dl
|           0000:54de     d0e2           shl dl, 1
|           0000:54e0     89d7           mov di, dx
|           0000:54e2     00ca           add dl, cl
|           0000:54e4     d0e2           shl dl, 1
|           0000:54e6     d0e2           shl dl, 1
|           0000:54e8     89d3           mov bx, dx
|           0000:54ea     81c3b4e2       add bx, 0xe2b4
|           0000:54ee     f60639d2ff     test byte [0xd239], 0xff
|           0000:54f3     7404           je 0x54f9
|           0000:54f5     81c3c000       add bx, 0xc0                  ; 192
|           ; CODE XREF from fcn.000054b5 @ 0x54f3(x)
|           0000:54f9     81c76dc2       add di, 0xc26d
|           0000:54fd     f60639d2ff     test byte [0xd239], 0xff
|           0000:5502     7403           je 0x5507
|           0000:5504     83c720         add di, 0x20                  ; 32
|           ; CODE XREF from fcn.000054b5 @ 0x5502(x)
|           0000:5507     8935           mov word [di], si
|           0000:5509     8a560c         mov dl, byte [var_ch]
|           0000:550c     80e207         and dl, 7
|           0000:550f     8a4606         mov al, byte [var_6h]
|           0000:5512     32e4           xor ah, ah
|           0000:5514     05adc2         add ax, 0xc2ad
|           0000:5517     f60639d2ff     test byte [0xd239], 0xff
|           0000:551c     7403           je 0x5521
|           0000:551e     051000         add ax, 0x10                  ; 16
|           ; CODE XREF from fcn.000054b5 @ 0x551c(x)
|           0000:5521     8bf8           mov di, ax
|           0000:5523     8815           mov byte [di], dl
|           0000:5525     b90600         mov cx, 6
|           ; CODE XREF from fcn.000054b5 @ 0x553e(x)
|           0000:5528     268a04         mov al, byte es:[si]
|           0000:552b     268807         mov byte es:[bx], al
|           0000:552e     43             inc bx
|           0000:552f     84d2           test dl, dl
|           0000:5531     7408           je 0x553b
|           0000:5533     268a4401       mov al, byte es:[si + 1]
|           0000:5537     268807         mov byte es:[bx], al
|           0000:553a     43             inc bx
|           ; CODE XREF from fcn.000054b5 @ 0x5531(x)
|           0000:553b     83c650         add si, 0x50                  ; 80
|           0000:553e     e2e8           loop 0x5528
|           0000:5540    .string "]_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.000055b9 @ 0x55e0(x)
/ 113: fcn.00005548 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(1:sp[0x8..0x8])
|           0000:5548    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:5550     e532           in ax, 0x32
|           0000:5552     f68acad0e2     test byte [bp + si - 0x2f36], 0xe2
|           0000:5557     89d7           mov di, dx
|           0000:5559     00ca           add dl, cl
|           0000:555b     d0e2           shl dl, 1
|           0000:555d     d0e2           shl dl, 1
|           0000:555f     89d3           mov bx, dx
|           0000:5561     81c3b4e2       add bx, 0xe2b4
|           0000:5565     f60639d2ff     test byte [0xd239], 0xff
|           0000:556a     7404           je 0x5570
|           0000:556c     81c3c000       add bx, 0xc0                  ; 192
|           ; CODE XREF from fcn.00005548 @ 0x556a(x)
|           0000:5570     81c76dc2       add di, 0xc26d
|           0000:5574     f60639d2ff     test byte [0xd239], 0xff
|           0000:5579     7403           je 0x557e
|           0000:557b     83c720         add di, 0x20                  ; 32
|           ; CODE XREF from fcn.00005548 @ 0x5579(x)
|           0000:557e     8b35           mov si, word [di]
|           0000:5580     8a4606         mov al, byte [var_6h]
|           0000:5583     32e4           xor ah, ah
|           0000:5585     05adc2         add ax, 0xc2ad
|           0000:5588     f60639d2ff     test byte [0xd239], 0xff
|           0000:558d     7403           je 0x5592
|           0000:558f     051000         add ax, 0x10                  ; 16
|           ; CODE XREF from fcn.00005548 @ 0x558d(x)
|           0000:5592     8bf8           mov di, ax
|           0000:5594     8a15           mov dl, byte [di]
|           0000:5596     b90600         mov cx, 6
|           ; CODE XREF from fcn.00005548 @ 0x55af(x)
|           0000:5599     268a07         mov al, byte es:[bx]
|           0000:559c     43             inc bx
|           0000:559d     268804         mov byte es:[si], al
|           0000:55a0     84d2           test dl, dl
|           0000:55a2     7408           je 0x55ac
|           0000:55a4     268a07         mov al, byte es:[bx]
|           0000:55a7     43             inc bx
|           0000:55a8     26884401       mov byte es:[si + 1], al
|           ; CODE XREF from fcn.00005548 @ 0x55a2(x)
|           0000:55ac     83c650         add si, 0x50                  ; 80
|           0000:55af     e2e8           loop 0x5599
|           0000:55b1    .string "]_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.00003658 @ 0x3673(x)
            ; CALL XREF from fcn.000036fd @ 0x3701(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bd5(x)
            ; CALL XREF from fcn.00004b19 @ 0x4b29(x)
            ; CALL XREF from fcn.0000648d @ 0x649d(x)
/ 64: fcn.000055b9 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:55b9    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:55c0     ce             into
|           0000:55c1     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:55c5     42             inc dx
|           0000:55c6     b011           mov al, 0x11                  ; 17
|           0000:55c8     ee             out dx, al
|           0000:55c9     b200           mov dl, 0
|           0000:55cb     beadc2         mov si, 0xc2ad
|           0000:55ce     f60639d2ff     test byte [0xd239], 0xff
|           0000:55d3     7403           je 0x55d8
|           0000:55d5     83c610         add si, 0x10                  ; 16
|           ; CODE XREF from fcn.000055b9 @ 0x55d3(x)
|           0000:55d8     b91000         mov cx, 0x10                  ; 16
|           ; CODE XREF from fcn.000055b9 @ 0x55e6(x)
|           0000:55db     803cff         cmp byte [si], 0xff
|           0000:55de     7403           je 0x55e3
|           0000:55e0     e865ff         call fcn.00005548
|           ; CODE XREF from fcn.000055b9 @ 0x55de(x)
|           0000:55e3     fec2           inc dl
|           0000:55e5     46             inc si
|           0000:55e6     e2f3           loop 0x55db
|           0000:55e8     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:55eb     b005           mov al, 5
|           0000:55ed     ee             out dx, al
|           0000:55ee     42             inc dx
|           0000:55ef     b010           mov al, 0x10                  ; 16
|           0000:55f1     ee             out dx, al
|           0000:55f2    .string "_^ZY[X\xc3" ; len=7
            ; XREFS: CALL 0x0000363e  CALL 0x0000369a  CALL 0x00003b9d  CALL 0x00003bf0  CALL 0x00004b2f  CALL 0x000064a3  
/ 81: fcn.000055f9 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:55f9    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:5600     ce             into
|           0000:5601     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:5605     42             inc dx
|           0000:5606     b011           mov al, 0x11                  ; 17
|           0000:5608     ee             out dx, al
|           0000:5609     b200           mov dl, 0
|           0000:560b     be6dc1         mov si, 0xc16d
|           0000:560e     bfadc2         mov di, 0xc2ad
|           0000:5611     f60639d2ff     test byte [0xd239], 0xff
|           0000:5616     7403           je 0x561b
|           0000:5618     83c710         add di, 0x10                  ; 16
|           ; CODE XREF from fcn.000055f9 @ 0x5616(x)
|           0000:561b     b91000         mov cx, 0x10                  ; 16
|           ; CODE XREF from fcn.000055f9 @ 0x5637(x)
|           0000:561e     f6440801       test byte [si + 8], 1
|           0000:5622     740a           je 0x562e
|           0000:5624     8b04           mov ax, word [si]
|           0000:5626     8b5c02         mov bx, word [si + 2]
|           0000:5629     e889fe         call fcn.000054b5
|           0000:562c     eb03           jmp 0x5631
|           ; CODE XREF from fcn.000055f9 @ 0x5622(x)
|           0000:562e     c605ff         mov byte [di], 0xff           ; [0xff:1]=255
|           ; CODE XREF from fcn.000055f9 @ 0x562c(x)
|           0000:5631     47             inc di
|           0000:5632     fec2           inc dl
|           0000:5634     83c610         add si, 0x10                  ; 16
|           0000:5637     e2e5           loop 0x561e
|           0000:5639     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:563c     b005           mov al, 5
|           0000:563e     ee             out dx, al
|           0000:563f     42             inc dx
|           0000:5640     b010           mov al, 0x10                  ; 16
|           0000:5642     ee             out dx, al
|           0000:5643    .string "_^ZY[X\xc3" ; len=7
            ; XREFS: CALL 0x00003644  CALL 0x000036a9  CALL 0x00003ba3  CALL 0x00003bf9  CALL 0x00004b32  CALL 0x000064a6  
/ 66: fcn.0000564a (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:564a    .string "PSQRV\xba" ; len=6                   ; arg1
|           0000:5650     ce             into
|           0000:5651     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:5655     42             inc dx
|           0000:5656     b00f           mov al, 0xf                   ; 15
|           0000:5658     ee             out dx, al
|           0000:5659     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:565c     32c0           xor al, al
|           0000:565e     ee             out dx, al
|           0000:565f     42             inc dx
|           0000:5660     b00f           mov al, 0xf                   ; 15
|           0000:5662     ee             out dx, al
|           0000:5663     b91000         mov cx, 0x10                  ; 16
|           0000:5666     be6dc1         mov si, 0xc16d
|           ; CODE XREF from fcn.0000564a @ 0x567a(x)
|           0000:5669     f6440801       test byte [si + 8], 1
|           0000:566d     7408           je 0x5677
|           0000:566f     8b04           mov ax, word [si]
|           0000:5671     8b5c02         mov bx, word [si + 2]
|           0000:5674     e888fc         call fcn.000052ff
|           ; CODE XREF from fcn.0000564a @ 0x566d(x)
|           0000:5677     83c610         add si, 0x10                  ; 16
|           0000:567a     e2ed           loop 0x5669
|           0000:567c     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:567f     b001           mov al, 1
|           0000:5681     ee             out dx, al
|           0000:5682     42             inc dx
|           0000:5683     b000           mov al, 0
|           0000:5685     ee             out dx, al
|           0000:5686    .string "^ZY[X\xc3" ; len=6
            ;-- str.PSQRVU:
            ; CALL XREF from fcn.00005808 @ 0x5811(x)
/ 380: fcn.0000568c (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx) vars(2:sp[0x2..0x8])
|           0000:568c    .string "PSQRVU\x89" ; len=7                  ; arg1
|           0000:5693     e58b           in ax, 0x8b
|           0000:5695     d8d1           fcom st(1)
|           0000:5697     ebd1           jmp 0x566a                    ; fcn.0000564a+0x20
|           0000:5699     ebd1           jmp 0x566c                    ; fcn.0000564a+0x22
|           0000:569b     eb81           jmp 0x561e                    ; fcn.000055f9+0x25
|           0000:569d     c3             ret
|           0000:569e     d06603         shl byte [bp + 3], 1
|           0000:56a1     1e             push ds
|           0000:56a2     37             aaa
|           0000:56a3     d2be810a       sar byte [bp + 0xa81], cl
|           0000:56a7     250700         and ax, 7
|           0000:56aa     7503           jne 0x56af
|           0000:56ac     e9bd00         jmp 0x576c
|           ; CODE XREF from fcn.0000568c @ 0x56aa(x)
|           0000:56af     d1e0           shl ax, 1
|           0000:56b1     01c6           add si, ax
|           0000:56b3     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:56b6     b008           mov al, 8
|           0000:56b8     ee             out dx, al
|           0000:56b9     42             inc dx
|           0000:56ba     8a04           mov al, byte [si]
|           0000:56bc     ee             out dx, al
|           0000:56bd     268a07         mov al, byte es:[bx]
|           0000:56c0     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:56c4     268a87f000     mov al, byte es:[bx + 0xf0]
|           0000:56c9     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           0000:56cf     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:56d2     b008           mov al, 8
|           0000:56d4     ee             out dx, al
|           0000:56d5     42             inc dx
|           0000:56d6     8a4401         mov al, byte [si + 1]
|           0000:56d9     ee             out dx, al
|           0000:56da     268a4750       mov al, byte es:[bx + 0x50]
|           0000:56de     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           0000:56e3     268a87a000     mov al, byte es:[bx + 0xa0]
|           0000:56e8     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           0000:56ee     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:56f1     b008           mov al, 8
|           0000:56f3     ee             out dx, al
|           0000:56f4     42             inc dx
|           0000:56f5     b0ff           mov al, 0xff
|           0000:56f7     ee             out dx, al
|           0000:56f8     43             inc bx
|           0000:56f9     8a4e04         mov cl, byte [var_4h]
|           0000:56fc     32ed           xor ch, ch
|           0000:56fe     49             dec cx
|           ; CODE XREF from fcn.0000568c @ 0x5715(x)
|           0000:56ff     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:5703     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           0000:5708     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           0000:570e     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           0000:5714     43             inc bx
|           0000:5715     e2e8           loop 0x56ff
|           0000:5717     be8f0a         mov si, 0xa8f
|           0000:571a ~   8b460a         mov ax, word [var_ah]
|           ;-- str.F_n__a:
|           0000:571b    .string "F\n%\a" ; len=5
|           0000:5720     d1e0           shl ax, 1
|           0000:5722     01c6           add si, ax
|           0000:5724     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5727     b008           mov al, 8
|           0000:5729     ee             out dx, al
|           0000:572a     42             inc dx
|           0000:572b     8a04           mov al, byte [si]
|           0000:572d     ee             out dx, al
|           0000:572e     268a07         mov al, byte es:[bx]
|           0000:5731     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:5735     268a87f000     mov al, byte es:[bx + 0xf0]
|           0000:573a     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           0000:5740     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5743     b008           mov al, 8
|           0000:5745     ee             out dx, al
|           0000:5746     42             inc dx
|           0000:5747     8a4401         mov al, byte [si + 1]
|           0000:574a     ee             out dx, al
|           0000:574b     268a4750       mov al, byte es:[bx + 0x50]
|           0000:574f     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           0000:5754     268a87a000     mov al, byte es:[bx + 0xa0]
|           0000:5759     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           0000:575f     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5762     b008           mov al, 8
|           0000:5764     ee             out dx, al
|           0000:5765     42             inc dx
|           0000:5766     b0ff           mov al, 0xff
|           0000:5768     ee             out dx, al
|           0000:5769     e99500         jmp 0x5801
|           ; CODE XREF from fcn.0000568c @ 0x56ac(x)
|           0000:576c     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:576f     b008           mov al, 8
|           0000:5771     ee             out dx, al
|           0000:5772     42             inc dx
|           0000:5773     b07f           mov al, 0x7f                  ; '\x7f' ; 127
|           0000:5775     ee             out dx, al
|           0000:5776     268a07         mov al, byte es:[bx]
|           0000:5779     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:577d     268a87f000     mov al, byte es:[bx + 0xf0]
|           0000:5782     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           0000:5788     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:578b     b008           mov al, 8
|           0000:578d     ee             out dx, al
|           0000:578e     42             inc dx
|           0000:578f     b0ff           mov al, 0xff
|           0000:5791     ee             out dx, al
|           0000:5792     268a4750       mov al, byte es:[bx + 0x50]
|           0000:5796     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           0000:579b     268a87a000     mov al, byte es:[bx + 0xa0]
|           0000:57a0     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           0000:57a6     43             inc bx
|           0000:57a7     8a4e04         mov cl, byte [var_4h]
|           0000:57aa     32ed           xor ch, ch
|           0000:57ac     83e902         sub cx, 2
|           ; CODE XREF from fcn.0000568c @ 0x57c5(x)
|           0000:57af     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:57b3     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           0000:57b8     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           0000:57be     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           0000:57c4     43             inc bx
|           0000:57c5     e2e8           loop 0x57af
|           0000:57c7     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:57ca     b008           mov al, 8
|           0000:57cc     ee             out dx, al
|           0000:57cd     42             inc dx
|           0000:57ce     b0fe           mov al, 0xfe
|           0000:57d0     ee             out dx, al
|           0000:57d1     268a07         mov al, byte es:[bx]
|           0000:57d4     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:57d8     268a87f000     mov al, byte es:[bx + 0xf0]
|           0000:57dd     26c687f000ff   mov byte es:[bx + 0xf0], 0xff ; [0xff:1]=255
|           0000:57e3     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:57e6     b008           mov al, 8
|           0000:57e8     ee             out dx, al
|           0000:57e9     42             inc dx
|           0000:57ea     b0ff           mov al, 0xff
|           0000:57ec     ee             out dx, al
|           0000:57ed     268a4750       mov al, byte es:[bx + 0x50]
|           0000:57f1     26c64750ff     mov byte es:[bx + 0x50], 0xff ; [0xff:1]=255
|           0000:57f6     268a87a000     mov al, byte es:[bx + 0xa0]
|           0000:57fb     26c687a000ff   mov byte es:[bx + 0xa0], 0xff ; [0xff:1]=255
|           ; CODE XREF from fcn.0000568c @ 0x5769(x)
|           0000:5801    .string "]^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003610 @ 0x3647(x)
            ; CALL XREF from fcn.00003658 @ 0x36ac(x)
            ; CALL XREF from fcn.00003b94 @ 0x3ba6(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bfc(x)
/ 15: fcn.00005808 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:5808     50             push ax                       ; arg1
|           0000:5809     52             push dx                       ; arg2
|           0000:580a     a147d2         mov ax, word [0xd247]         ; [0xd247:2]=0xffff
|           0000:580d     8a1649d2       mov dl, byte [0xd249]
|           0000:5811     e878fe         call fcn.0000568c
|           0000:5814     5a             pop dx
|           0000:5815     58             pop ax
\           0000:5816     c3             ret
            ; CALL XREF from fcn.00003610 @ 0x3641(x)
            ; CALL XREF from fcn.00003658 @ 0x369d(x)
            ; CALL XREF from fcn.00003b94 @ 0x3ba0(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bf3(x)
/ 141: fcn.00005817 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5817    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:581e     ce             into
|           0000:581f     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:5823     42             inc dx
|           0000:5824     b011           mov al, 0x11                  ; 17
|           0000:5826     ee             out dx, al
|           0000:5827     a147d2         mov ax, word [0xd247]         ; [0xd247:2]=0xffff
|           0000:582a     8bd8           mov bx, ax
|           0000:582c     d1eb           shr bx, 1
|           0000:582e     d1eb           shr bx, 1
|           0000:5830     d1eb           shr bx, 1
|           0000:5832     81c3d066       add bx, 0x66d0
|           0000:5836     031e37d2       add bx, word [0xd237]
|           0000:583a     be5ec3         mov si, 0xc35e
|           0000:583d     f60639d2ff     test byte [0xd239], 0xff
|           0000:5842     7403           je 0x5847
|           0000:5844     83c602         add si, 2
|           ; CODE XREF from fcn.00005817 @ 0x5842(x)
|           0000:5847     891c           mov word [si], bx
|           0000:5849     8a0e49d2       mov cl, byte [0xd249]
|           0000:584d     32ed           xor ch, ch
|           0000:584f     250700         and ax, 7
|           0000:5852     7401           je 0x5855
|           0000:5854     41             inc cx
|           ; CODE XREF from fcn.00005817 @ 0x5852(x)
|           0000:5855     be62c3         mov si, 0xc362
|           0000:5858     f60639d2ff     test byte [0xd239], 0xff
|           0000:585d     7401           je 0x5860
|           0000:585f     46             inc si
|           ; CODE XREF from fcn.00005817 @ 0x585d(x)
|           0000:5860     880c           mov byte [si], cl
|           0000:5862     bf34e4         mov di, 0xe434
|           0000:5865     f60639d2ff     test byte [0xd239], 0xff
|           0000:586a     7403           je 0x586f
|           0000:586c     83c724         add di, 0x24                  ; 36
|           ; CODE XREFS from fcn.00005817 @ 0x586a(x), 0x5891(x)
|           0000:586f     268a07         mov al, byte es:[bx]
|           0000:5872     268805         mov byte es:[di], al
|           0000:5875     47             inc di
|           0000:5876     268a4750       mov al, byte es:[bx + 0x50]
|           0000:587a     268805         mov byte es:[di], al
|           0000:587d     47             inc di
|           0000:587e     268a87a000     mov al, byte es:[bx + 0xa0]
|           0000:5883     268805         mov byte es:[di], al
|           0000:5886     47             inc di
|           0000:5887     268a87f000     mov al, byte es:[bx + 0xf0]
|           0000:588c     268805         mov byte es:[di], al
|           0000:588f     47             inc di
|           0000:5890     43             inc bx
|           0000:5891     e2dc           loop 0x586f
|           0000:5893     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5896     b005           mov al, 5
|           0000:5898     ee             out dx, al
|           0000:5899     42             inc dx
|           0000:589a     b010           mov al, 0x10                  ; 16
|           0000:589c     ee             out dx, al
|           0000:589d    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003658 @ 0x367c(x)
            ; CALL XREF from fcn.000036fd @ 0x3704(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bdb(x)
/ 117: fcn.000058a4 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:58a4    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:58ab     ce             into
|           0000:58ac     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:58b0     42             inc dx
|           0000:58b1     b011           mov al, 0x11                  ; 17
|           0000:58b3     ee             out dx, al
|           0000:58b4     be5ec3         mov si, 0xc35e
|           0000:58b7     f60639d2ff     test byte [0xd239], 0xff
|           0000:58bc     7403           je 0x58c1
|           0000:58be     83c602         add si, 2
|           ; CODE XREF from fcn.000058a4 @ 0x58bc(x)
|           0000:58c1     8b1c           mov bx, word [si]
|           0000:58c3     83fbff         cmp bx, 0xffff
|           0000:58c6     7440           je 0x5908
|           0000:58c8     be62c3         mov si, 0xc362
|           0000:58cb     f60639d2ff     test byte [0xd239], 0xff
|           0000:58d0     7401           je 0x58d3
|           0000:58d2     46             inc si
|           ; CODE XREF from fcn.000058a4 @ 0x58d0(x)
|           0000:58d3     8a0c           mov cl, byte [si]
|           0000:58d5     32ed           xor ch, ch
|           0000:58d7     bf34e4         mov di, 0xe434
|           0000:58da     f60639d2ff     test byte [0xd239], 0xff
|           0000:58df     7403           je 0x58e4
|           0000:58e1     83c724         add di, 0x24                  ; 36
|           ; CODE XREFS from fcn.000058a4 @ 0x58df(x), 0x5906(x)
|           0000:58e4     268a05         mov al, byte es:[di]
|           0000:58e7     47             inc di
|           0000:58e8     268807         mov byte es:[bx], al
|           0000:58eb     268a05         mov al, byte es:[di]
|           0000:58ee     47             inc di
|           0000:58ef     26884750       mov byte es:[bx + 0x50], al
|           0000:58f3     268a05         mov al, byte es:[di]
|           0000:58f6     47             inc di
|           0000:58f7     268887a000     mov byte es:[bx + 0xa0], al
|           0000:58fc     268a05         mov al, byte es:[di]
|           0000:58ff     47             inc di
|           0000:5900     268887f000     mov byte es:[bx + 0xf0], al
|           0000:5905     43             inc bx
|           0000:5906     e2dc           loop 0x58e4
|           ; CODE XREF from fcn.000058a4 @ 0x58c6(x)
|           0000:5908     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:590b     b005           mov al, 5
|           0000:590d     ee             out dx, al
|           0000:590e     42             inc dx
|           0000:590f     b010           mov al, 0x10                  ; 16
|           0000:5911     ee             out dx, al
|           0000:5912    .string "_^ZY[X\xc3" ; len=7
            ;-- str.PSQVW:
            ; CALL XREF from fcn.0000240b @ 0x2438(x)
            ; CALL XREF from fcn.00004e5b @ 0x4e82(x)
/ 72: fcn.00005919 (int16_t arg1, uint16_t arg2, int16_t arg3);
| `- args(ax, bx, cx)
|           0000:5919    .string "PSQVW\x81" ; len=6                   ; arg1
|           0000:591f     fb             sti
|           0000:5920     51             push cx
|           0000:5921     017737         add word [bx + 0x37], si
|           0000:5924     89df           mov di, bx                    ; arg2
|           0000:5926     d1e7           shl di, 1
|           0000:5928     d1e7           shl di, 1
|           0000:592a     03fb           add di, bx                    ; arg2
|           0000:592c     d1e7           shl di, 1
|           0000:592e     d1e7           shl di, 1
|           0000:5930     d1e7           shl di, 1
|           0000:5932     d1e7           shl di, 1
|           0000:5934     01c7           add di, ax                    ; arg1
|           0000:5936 ~   033e37d2       add di, word [0xd237]
|           ;-- str._7R:
|           0000:5937    .string ">7\xd2\xb9R\x01" ; len=6
|           0000:593d     29d9           sub cx, bx                    ; arg2
|           0000:593f     83f90c         cmp cx, 0xc                   ; 12
|           0000:5942     7603           jbe 0x5947
|           0000:5944     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREFS from fcn.00005919 @ 0x5942(x), 0x5959(x)
|           0000:5947     268a04         mov al, byte es:[si]
|           0000:594a     46             inc si
|           0000:594b     268805         mov byte es:[di], al
|           0000:594e     268a04         mov al, byte es:[si]
|           0000:5951     46             inc si
|           0000:5952     26884501       mov byte es:[di + 1], al
|           0000:5956     83c750         add di, 0x50                  ; 80
|           0000:5959     e2ec           loop 0x5947
|           ; CODE XREF from fcn.00005919 @ 0x5922(x)
|           0000:595b    .string "_^Y[X\xc3" ; len=6
            ; CALL XREF from fcn.0000237e @ 0x23b2(x)
/ 106: fcn.00005961 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5961    .string "PSQRVW\x89" ; len=7                  ; arg1
|           0000:5968     de             invalid
|           0000:5969     d1e3           shl bx, 1
|           0000:596b     d1e3           shl bx, 1
|           0000:596d     03f3           add si, bx
|           0000:596f     d1e6           shl si, 1
|           0000:5971     d1e6           shl si, 1
|           0000:5973     d1e6           shl si, 1
|           0000:5975     d1e6           shl si, 1
|           0000:5977     01c6           add si, ax
|           0000:5979     033637d2       add si, word [0xd237]
|           0000:597d     32f6           xor dh, dh
|           0000:597f     8aca           mov cl, dl
|           0000:5981     d0e2           shl dl, 1
|           0000:5983     89d7           mov di, dx
|           0000:5985     00ca           add dl, cl
|           0000:5987     d0e2           shl dl, 1
|           0000:5989     d0e2           shl dl, 1
|           0000:598b     d0e2           shl dl, 1
|           0000:598d     89d3           mov bx, dx
|           0000:598f     81c314e9       add bx, 0xe914
|           0000:5993     f60639d2ff     test byte [0xd239], 0xff
|           0000:5998     7403           je 0x599d
|           0000:599a     83c378         add bx, 0x78                  ; 120
|           ; CODE XREF from fcn.00005961 @ 0x5998(x)
|           0000:599d     81c7fac2       add di, 0xc2fa
|           0000:59a1     f60639d2ff     test byte [0xd239], 0xff
|           0000:59a6     7403           je 0x59ab
|           0000:59a8     83c70a         add di, 0xa
|           ; CODE XREF from fcn.00005961 @ 0x59a6(x)
|           0000:59ab     8935           mov word [di], si
|           0000:59ad     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREF from fcn.00005961 @ 0x59c2(x)
|           0000:59b0     268a04         mov al, byte es:[si]
|           0000:59b3     268807         mov byte es:[bx], al
|           0000:59b6     43             inc bx
|           0000:59b7     268a4401       mov al, byte es:[si + 1]
|           0000:59bb     268807         mov byte es:[bx], al
|           0000:59be     43             inc bx
|           0000:59bf     83c650         add si, 0x50                  ; 80
|           0000:59c2     e2ec           loop 0x59b0
|           0000:59c4    .string "_^ZY[X\xc3" ; len=7
            ;-- str.PSQRVW2:
            ; CALL XREF from fcn.00002451 @ 0x2478(x)
/ 84: fcn.000059cb (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:59cb    .string "PSQRVW2\xf6" ; len=8                 ; arg1
|           0000:59d3     8aca           mov cl, dl
|           0000:59d5     d0e2           shl dl, 1
|           0000:59d7     89d7           mov di, dx
|           0000:59d9     00ca           add dl, cl
|           0000:59db     d0e2           shl dl, 1
|           0000:59dd     d0e2           shl dl, 1
|           0000:59df     d0e2           shl dl, 1
|           0000:59e1     89d3           mov bx, dx
|           0000:59e3     81c314e9       add bx, 0xe914
|           0000:59e7     f60639d2ff     test byte [0xd239], 0xff
|           0000:59ec     7403           je 0x59f1
|           0000:59ee     83c378         add bx, 0x78                  ; 120
|           ; CODE XREF from fcn.000059cb @ 0x59ec(x)
|           0000:59f1     81c7fac2       add di, 0xc2fa
|           0000:59f5     f60639d2ff     test byte [0xd239], 0xff
|           0000:59fa     7403           je 0x59ff
|           0000:59fc     83c70a         add di, 0xa
|           ; CODE XREF from fcn.000059cb @ 0x59fa(x)
|           0000:59ff     8b35           mov si, word [di]
|           0000:5a01     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREF from fcn.000059cb @ 0x5a16(x)
|           0000:5a04     268a07         mov al, byte es:[bx]
|           0000:5a07     43             inc bx
|           0000:5a08     268804         mov byte es:[si], al
|           0000:5a0b     268a07         mov al, byte es:[bx]
|           0000:5a0e     43             inc bx
|           0000:5a0f     26884401       mov byte es:[si + 1], al
|           0000:5a13     83c650         add si, 0x50                  ; 80
|           0000:5a16     e2ec           loop 0x5a04
|           0000:5a18    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.0000406d @ 0x407a(x)
            ; CALL XREFS from fcn.00005b26 @ 0x5b7d(x), 0x5ba1(x)
/ 145: fcn.00005a1f (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, bx, cx) vars(1:sp[0x1..0x1])
|           0000:5a1f    .string "PSQVU\x89" ; len=6                   ; arg1
|           0000:5a25     e532           in ax, 0x32
|           0000:5a27     ed             in ax, dx
|           0000:5a28     d1e1           shl cx, 1                     ; arg3
|           0000:5a2a     d1e1           shl cx, 1
|           0000:5a2c     d1e1           shl cx, 1
|           0000:5a2e     d1e1           shl cx, 1
|           0000:5a30     8bd9           mov bx, cx
|           0000:5a32     d1e1           shl cx, 1
|           0000:5a34     01d9           add cx, bx
|           0000:5a36     8bf1           mov si, cx
|           0000:5a38     81c684dc       add si, 0xdc84
|           0000:5a3c     32ff           xor bh, bh
|           0000:5a3e     32e4           xor ah, ah
|           0000:5a40     8ad8           mov bl, al                    ; arg1
|           0000:5a42     8bcb           mov cx, bx
|           0000:5a44     d1e3           shl bx, 1
|           0000:5a46     01cb           add bx, cx
|           0000:5a48     8bcb           mov cx, bx
|           0000:5a4a     d1e3           shl bx, 1
|           0000:5a4c     d1e3           shl bx, 1
|           0000:5a4e     01cb           add bx, cx
|           0000:5a50     d1e3           shl bx, 1
|           0000:5a52     d1e3           shl bx, 1
|           0000:5a54     d1e3           shl bx, 1
|           0000:5a56     d1e3           shl bx, 1
|           0000:5a58     d1e3           shl bx, 1
|           0000:5a5a     d1e3           shl bx, 1
|           0000:5a5c     8a4609         mov al, byte [var_9h]
|           0000:5a5f     32e4           xor ah, ah
|           0000:5a61     d1e0           shl ax, 1
|           0000:5a63     d1e0           shl ax, 1
|           0000:5a65     01c3           add bx, ax
|           0000:5a67     81c3c203       add bx, 0x3c2                 ; " - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5a6b     031e37d2       add bx, word [0xd237]
|           0000:5a6f     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5a72     b005           mov al, 5
|           0000:5a74     ee             out dx, al
|           0000:5a75     42             inc dx
|           0000:5a76     b011           mov al, 0x11                  ; 17
|           0000:5a78     ee             out dx, al
|           0000:5a79     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREF from fcn.00005a1f @ 0x5a9e(x)
|           0000:5a7c     268a04         mov al, byte es:[si]
|           0000:5a7f     46             inc si
|           0000:5a80     268807         mov byte es:[bx], al
|           0000:5a83     43             inc bx
|           0000:5a84     268a04         mov al, byte es:[si]
|           0000:5a87     46             inc si
|           0000:5a88     268807         mov byte es:[bx], al
|           0000:5a8b     43             inc bx
|           0000:5a8c     268a04         mov al, byte es:[si]
|           0000:5a8f     46             inc si
|           0000:5a90     268807         mov byte es:[bx], al
|           0000:5a93     43             inc bx
|           0000:5a94     268a04         mov al, byte es:[si]
|           0000:5a97     46             inc si
|           0000:5a98     268807         mov byte es:[bx], al
|           0000:5a9b     83c34d         add bx, 0x4d                  ; 77
|           0000:5a9e     e2dc           loop 0x5a7c
|           0000:5aa0     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5aa3     b005           mov al, 5
|           0000:5aa5     ee             out dx, al
|           0000:5aa6     42             inc dx
|           0000:5aa7     b010           mov al, 0x10                  ; 16
|           0000:5aa9     ee             out dx, al
|           0000:5aaa    .string "]^Y[X\xc3" ; len=6
            ;-- str.PSQVU:
            ; CALL XREF from fcn.00004c87 @ 0x4ca1(x)
/ 118: fcn.00005ab0 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, bx, cx) vars(1:sp[0x4..0x4])
|           0000:5ab0    .string "PSQVU\x89" ; len=6                   ; arg1
|           0000:5ab6     e532           in ax, 0x32
|           0000:5ab8     ed             in ax, dx
|           0000:5ab9     d1e1           shl cx, 1                     ; arg3
|           0000:5abb     d1e1           shl cx, 1
|           0000:5abd     d1e1           shl cx, 1
|           0000:5abf     d1e1           shl cx, 1
|           0000:5ac1     8bd9           mov bx, cx
|           0000:5ac3     d1e1           shl cx, 1
|           0000:5ac5     01d9           add cx, bx
|           0000:5ac7     8bf1           mov si, cx
|           0000:5ac9     81c684dc       add si, 0xdc84
|           0000:5acd     8b5e06         mov bx, word [var_6h]
|           0000:5ad0     d1e3           shl bx, 1
|           0000:5ad2     d1e3           shl bx, 1
|           0000:5ad4     035e06         add bx, word [var_6h]
|           0000:5ad7     d1e3           shl bx, 1
|           0000:5ad9     d1e3           shl bx, 1
|           0000:5adb     d1e3           shl bx, 1
|           0000:5add     d1e3           shl bx, 1
|           0000:5adf     01c3           add bx, ax                    ; arg1
|           0000:5ae1     031e37d2       add bx, word [0xd237]
|           0000:5ae5     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5ae8     b005           mov al, 5
|           0000:5aea     ee             out dx, al
|           0000:5aeb     42             inc dx
|           0000:5aec     b011           mov al, 0x11                  ; 17
|           0000:5aee     ee             out dx, al
|           0000:5aef     b90c00         mov cx, 0xc                   ; 12
|           ; CODE XREF from fcn.00005ab0 @ 0x5b14(x)
|           0000:5af2     268a04         mov al, byte es:[si]
|           0000:5af5     46             inc si
|           0000:5af6     268807         mov byte es:[bx], al
|           0000:5af9     43             inc bx
|           0000:5afa     268a04         mov al, byte es:[si]
|           0000:5afd     46             inc si
|           0000:5afe     268807         mov byte es:[bx], al
|           0000:5b01     43             inc bx
|           0000:5b02     268a04         mov al, byte es:[si]
|           0000:5b05     46             inc si
|           0000:5b06     268807         mov byte es:[bx], al
|           0000:5b09     43             inc bx
|           0000:5b0a     268a04         mov al, byte es:[si]
|           0000:5b0d     46             inc si
|           0000:5b0e     268807         mov byte es:[bx], al
|           0000:5b11     83c34d         add bx, 0x4d                  ; 77
|           0000:5b14     e2dc           loop 0x5af2
|           0000:5b16     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5b19     b005           mov al, 5
|           0000:5b1b     ee             out dx, al
|           0000:5b1c     42             inc dx
|           0000:5b1d     b010           mov al, 0x10                  ; 16
|           0000:5b1f     ee             out dx, al
|           ;-- str._Y_X:
|           0000:5b20    .string "]^Y[X\xc3" ; len=6
            ; CALL XREF from fcn.00003658 @ 0x368e(x)
            ; CALL XREF from fcn.000036fd @ 0x3724(x)
            ; CALL XREF from fcn.00003bbd @ 0x3bea(x)
/ 151: fcn.00005b26 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5b26    .string "PSQR\xf6" ; len=5                    ; arg1
|           0000:5b2b     06             push es
|           0000:5b2c     35d2ff         xor ax, 0xffd2
|           0000:5b2f     7503           jne 0x5b34
|           0000:5b31     e98400         jmp 0x5bb8
|           ; CODE XREF from fcn.00005b26 @ 0x5b2f(x)
|           0000:5b34     c60654d200     mov byte [0xd254], 0
|           0000:5b39     bb17cf         mov bx, 0xcf17
|           0000:5b3c     c60636d240     mov byte [0xd236], 0x40       ; '@'
|                                                                      ; [0x40:1]=255 ; 64
|           0000:5b41     f60639d2ff     test byte [0xd239], 0xff
|           0000:5b46     7404           je 0x5b4c
|           0000:5b48 ~   d02636d2       shl byte [0xd236], 1
|           ;-- str.6.5:
|           0000:5b49    .string "&6\xd2\x8a.5\xd2" ; len=7
|           ; CODE XREF from fcn.00005b26 @ 0x5b46(x)
|           0000:5b4c    .string "&6\xd2\x8a.5\xd2" ; len=7
|           ; CODE XREF from fcn.00005b26 @ 0x5bb6(x)
|           0000:5b50     f64702ff       test byte [bx + 2], 0xff
|           0000:5b54     745b           je 0x5bb1
|           0000:5b56     fecd           dec ch
|           0000:5b58     8a7702         mov dh, byte [bx + 2]
|           0000:5b5b     843636d2       test byte [0xd236], dh
|           0000:5b5f     7439           je 0x5b9a
|           0000:5b61     80e63f         and dh, 0x3f                  ; 63
|           0000:5b64     7405           je 0x5b6b
|           0000:5b66     fe4f02         dec byte [bx + 2]
|           0000:5b69     eb46           jmp 0x5bb1
|           ; CODE XREF from fcn.00005b26 @ 0x5b64(x)
|           0000:5b6b     8a07           mov al, byte [bx]
|           0000:5b6d     32e4           xor ah, ah
|           0000:5b6f     53             push bx
|           0000:5b70     8a5f01         mov bl, byte [bx + 1]
|           0000:5b73     32ff           xor bh, bh
|           0000:5b75     e882ce         call fcn.000029fa
|           0000:5b78     88c4           mov ah, al
|           0000:5b7a     8ac3           mov al, bl
|           0000:5b7c     5b             pop bx
|           0000:5b7d     e89ffe         call fcn.00005a1f
|           0000:5b80     f61636d2       not byte [0xd236]
|           0000:5b84     8a4702         mov al, byte [bx + 2]
|           0000:5b87     220636d2       and al, byte [0xd236]
|           0000:5b8b     884702         mov byte [bx + 2], al
|           0000:5b8e     f61636d2       not byte [0xd236]
|           0000:5b92     7504           jne 0x5b98
|           0000:5b94     fe0e35d2       dec byte [0xd235]
|           ; CODE XREF from fcn.00005b26 @ 0x5b92(x)
|           0000:5b98     eb17           jmp 0x5bb1
|           ; CODE XREF from fcn.00005b26 @ 0x5b5f(x)
|           0000:5b9a     8a27           mov ah, byte [bx]
|           0000:5b9c     8a4701         mov al, byte [bx + 1]
|           0000:5b9f     b120           mov cl, 0x20                  ; 32
|           0000:5ba1     e87bfe         call fcn.00005a1f
|           0000:5ba4     8a4702         mov al, byte [bx + 2]
|           0000:5ba7     0a0636d2       or al, byte [0xd236]
|           0000:5bab     884702         mov byte [bx + 2], al
|           0000:5bae     fe4f02         dec byte [bx + 2]
|           ; CODE XREFS from fcn.00005b26 @ 0x5b54(x), 0x5b69(x), 0x5b98(x)
|           0000:5bb1     83c303         add bx, 3
|           0000:5bb4     84ed           test ch, ch
|           0000:5bb6     7598           jne 0x5b50
|           ; CODE XREF from fcn.00005b26 @ 0x5b31(x)
|           0000:5bb8    .string "ZY[X\xc3" ; len=5
            ; CALL XREFS from fcn.00002a73 @ 0x2ac8(x), 0x2aff(x)
/ 40: fcn.00005bbd (int16_t arg1, int16_t arg2);
| `- args(ax, bx)
|           0000:5bbd     53             push bx                       ; arg2
|           0000:5bbe     bb17cf         mov bx, 0xcf17
|           ; CODE XREF from fcn.00005bbd @ 0x5bce(x)
|           0000:5bc1     f64702ff       test byte [bx + 2], 0xff
|           0000:5bc5     740b           je 0x5bd2
|           0000:5bc7     83c303         add bx, 3
|           0000:5bca     81fb35d2       cmp bx, 0xd235
|           0000:5bce     72f1           jb 0x5bc1
|           0000:5bd0     eb10           jmp 0x5be2
|           ; CODE XREF from fcn.00005bbd @ 0x5bc5(x)
|           0000:5bd2     8827           mov byte [bx], ah             ; arg1
|           0000:5bd4     884701         mov byte [bx + 1], al         ; arg1
|           0000:5bd7     c6470205       mov byte [bx + 2], 5
|           0000:5bdb     fe0635d2       inc byte [0xd235]
|           0000:5bdf     f8             clc
|           ; CODE XREF from fcn.00005bbd @ 0x5be3(x)
|           0000:5be0     5b             pop bx
|           0000:5be1     c3             ret
|           ; CODE XREF from fcn.00005bbd @ 0x5bd0(x)
|           0000:5be2     f9             stc
\           0000:5be3     ebfb           jmp 0x5be0
            ; CALL XREF from fcn.00003658 @ 0x3691(x)
/ 85: fcn.00005be5 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5be5    .string "PSQR\xb2" ; len=5                    ; arg1
|           0000:5bea     01f6           add si, si
|           0000:5bec     06             push es
|           0000:5bed     39d2           cmp dx, dx
|           0000:5bef     ff7402         push word [si + 2]
|           0000:5bf2     d0e2           shl dl, 1
|           ; CODE XREF from fcn.00005be5 @ 0x5bf0(x)
|           0000:5bf4     88d6           mov dh, dl
|           0000:5bf6     221658d2       and dl, byte [0xd258]
|           0000:5bfa     7402           je 0x5bfe
|           0000:5bfc     b201           mov dl, 1
|           ; CODE XREF from fcn.00005be5 @ 0x5bfa(x)
|           0000:5bfe     3a1657d2       cmp dl, byte [0xd257]
|           0000:5c02     7431           je 0x5c35
|           0000:5c04     b200           mov dl, 0
|           0000:5c06     f60657d2ff     test byte [0xd257], 0xff
|           0000:5c0b     7402           je 0x5c0f
|           0000:5c0d     b20f           mov dl, 0xf                   ; 15
|           ; CODE XREF from fcn.00005be5 @ 0x5c0b(x)
|           0000:5c0f     b80f00         mov ax, 0xf                   ; 15 ; int16_t arg1
|           0000:5c12     bbcf01         mov bx, 0x1cf                 ; " DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg3
|           0000:5c15     b94f01         mov cx, 0x14f                 ; "\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE" ; int16_t arg4
|           0000:5c18     e881e5         call fcn.0000419c
|           0000:5c1b     8a1658d2       mov dl, byte [0xd258]
|           0000:5c1f     a057d2         mov al, byte [0xd257]         ; [0xd257:1]=255
|           0000:5c22     f60639d2ff     test byte [0xd239], 0xff
|           0000:5c27     7402           je 0x5c2b
|           0000:5c29     d0e0           shl al, 1
|           ; CODE XREF from fcn.00005be5 @ 0x5c27(x)
|           0000:5c2b     f6d6           not dh
|           0000:5c2d     22d6           and dl, dh
|           0000:5c2f     08c2           or dl, al
|           0000:5c31     881658d2       mov byte [0xd258], dl
|           ; CODE XREF from fcn.00005be5 @ 0x5c02(x)
|           0000:5c35    .string "ZY[X\xc3" ; len=5
            ; CALL XREF from fcn.00005e23 @ 0x5e4d(x)
/ 142: fcn.00005c3a (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5c3a    .string "PSQRV\x8b" ; len=6                   ; arg1
|           0000:5c40     cb             retf
|           0000:5c41     83e907         sub cx, 7
|           0000:5c44     83f908         cmp cx, 8                     ; 8
|           0000:5c47     7603           jbe 0x5c4c
|           0000:5c49     b90800         mov cx, 8
|           ; CODE XREF from fcn.00005c3a @ 0x5c47(x)
|           0000:5c4c     8bd0           mov dx, ax
|           0000:5c4e     8bc3           mov ax, bx
|           0000:5c50     d1e3           shl bx, 1
|           0000:5c52     d1e3           shl bx, 1
|           0000:5c54     01c3           add bx, ax
|           0000:5c56     d1e3           shl bx, 1
|           0000:5c58     d1e3           shl bx, 1
|           0000:5c5a     d1e3           shl bx, 1
|           0000:5c5c     d1e3           shl bx, 1
|           0000:5c5e     8bc2           mov ax, dx
|           0000:5c60     8bf0           mov si, ax
|           0000:5c62     d1e8           shr ax, 1
|           0000:5c64     d1e8           shr ax, 1
|           0000:5c66     d1e8           shr ax, 1
|           0000:5c68     01c3           add bx, ax
|           0000:5c6a     031e37d2       add bx, word [0xd237]
|           0000:5c6e     81c33002       add bx, 0x230                 ; "turning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5c72     83e607         and si, 7
|           0000:5c75     d1e6           shl si, 1
|           0000:5c77     81c69f0a       add si, 0xa9f
|           0000:5c7b     f604ff         test byte [si], 0xff
|           0000:5c7e     741a           je 0x5c9a
|           0000:5c80     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5c83     b008           mov al, 8
|           0000:5c85     ee             out dx, al
|           0000:5c86     42             inc dx
|           0000:5c87     8a04           mov al, byte [si]
|           0000:5c89     ee             out dx, al
|           0000:5c8a     51             push cx
|           0000:5c8b     53             push bx
|           ; CODE XREF from fcn.00005c3a @ 0x5c96(x)
|           0000:5c8c     268a07         mov al, byte es:[bx]
|           0000:5c8f     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:5c93     83eb50         sub bx, 0x50                  ; 80
|           0000:5c96     e2f4           loop 0x5c8c
|           0000:5c98     5b             pop bx
|           0000:5c99     59             pop cx
|           ; CODE XREF from fcn.00005c3a @ 0x5c7e(x)
|           0000:5c9a     43             inc bx
|           0000:5c9b     f64401ff       test byte [si + 1], 0xff
|           0000:5c9f     7417           je 0x5cb8
|           0000:5ca1     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5ca4     b008           mov al, 8
|           0000:5ca6     ee             out dx, al
|           0000:5ca7     42             inc dx
|           0000:5ca8     8a4401         mov al, byte [si + 1]
|           0000:5cab     ee             out dx, al
|           ; CODE XREF from fcn.00005c3a @ 0x5cb6(x)
|           0000:5cac     268a07         mov al, byte es:[bx]
|           0000:5caf     26c607ff       mov byte es:[bx], 0xff        ; [0xff:1]=255
|           0000:5cb3     83eb50         sub bx, 0x50                  ; 80
|           0000:5cb6     e2f4           loop 0x5cac
|           ; CODE XREF from fcn.00005c3a @ 0x5c9f(x)
|           0000:5cb8     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5cbb     b008           mov al, 8
|           0000:5cbd     ee             out dx, al
|           0000:5cbe     42             inc dx
|           0000:5cbf     b0ff           mov al, 0xff
|           0000:5cc1     ee             out dx, al
|           0000:5cc2    .string "^ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00005d8c @ 0x5dbd(x)
/ 112: fcn.00005cc8 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5cc8    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:5cd0     e589           in ax, 0x89
|           0000:5cd2     de             invalid
|           0000:5cd3     d1e3           shl bx, 1
|           0000:5cd5     d1e3           shl bx, 1
|           0000:5cd7     03f3           add si, bx
|           0000:5cd9     d1e6           shl si, 1
|           0000:5cdb     d1e6           shl si, 1
|           0000:5cdd     d1e6           shl si, 1
|           0000:5cdf     d1e6           shl si, 1
|           0000:5ce1     d1e8           shr ax, 1
|           0000:5ce3     d1e8           shr ax, 1
|           0000:5ce5     d1e8           shr ax, 1
|           0000:5ce7     01c6           add si, ax
|           0000:5ce9     033637d2       add si, word [0xd237]
|           0000:5ced     32f6           xor dh, dh
|           0000:5cef     d0e2           shl dl, 1
|           0000:5cf1     89d7           mov di, dx
|           0000:5cf3     d0e2           shl dl, 1
|           0000:5cf5     d0e2           shl dl, 1
|           0000:5cf7     d0e2           shl dl, 1
|           0000:5cf9     89d3           mov bx, dx
|           0000:5cfb     81c304ea       add bx, 0xea04
|           0000:5cff     f60639d2ff     test byte [0xd239], 0xff
|           0000:5d04     7403           je 0x5d09
|           0000:5d06     83c340         add bx, 0x40                  ; 64
|           ; CODE XREF from fcn.00005cc8 @ 0x5d04(x)
|           0000:5d09     81c74ec3       add di, 0xc34e
|           0000:5d0d     f60639d2ff     test byte [0xd239], 0xff
|           0000:5d12     7403           je 0x5d17
|           0000:5d14     83c708         add di, 8
|           ; CODE XREF from fcn.00005cc8 @ 0x5d12(x)
|           0000:5d17     8935           mov word [di], si
|           0000:5d19     b90800         mov cx, 8
|           ; CODE XREF from fcn.00005cc8 @ 0x5d2e(x)
|           0000:5d1c     268a04         mov al, byte es:[si]
|           0000:5d1f     268807         mov byte es:[bx], al
|           0000:5d22     43             inc bx
|           0000:5d23     268a4401       mov al, byte es:[si + 1]
|           0000:5d27     268807         mov byte es:[bx], al
|           0000:5d2a     43             inc bx
|           0000:5d2b     83c650         add si, 0x50                  ; 80
|           0000:5d2e     e2ec           loop 0x5d1c
|           0000:5d30    .string "]_^ZY[X\xc3" ; len=8
            ;-- str.PSQRVWU:
            ; CALL XREF from fcn.00005de1 @ 0x5e08(x)
/ 84: fcn.00005d38 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5d38    .string "PSQRVWU\x89" ; len=8                 ; arg1
|           0000:5d40     e532           in ax, 0x32
|           0000:5d42     f6d0           not al
|           0000:5d44     e289           loop 0x5ccf                   ; fcn.00005cc8+0x7
|           0000:5d46     d7             xlatb
|           0000:5d47     d0e2           shl dl, 1
|           0000:5d49     d0e2           shl dl, 1
|           0000:5d4b     d0e2           shl dl, 1
|           0000:5d4d     89d3           mov bx, dx
|           0000:5d4f     81c304ea       add bx, 0xea04
|           0000:5d53     f60639d2ff     test byte [0xd239], 0xff
|           0000:5d58     7403           je 0x5d5d
|           0000:5d5a     83c340         add bx, 0x40                  ; 64
|           ; CODE XREF from fcn.00005d38 @ 0x5d58(x)
|           0000:5d5d     81c74ec3       add di, 0xc34e
|           0000:5d61     f60639d2ff     test byte [0xd239], 0xff
|           0000:5d66     7403           je 0x5d6b
|           0000:5d68     83c708         add di, 8
|           ; CODE XREF from fcn.00005d38 @ 0x5d66(x)
|           0000:5d6b     8b35           mov si, word [di]
|           0000:5d6d     b90800         mov cx, 8
|           ; CODE XREF from fcn.00005d38 @ 0x5d82(x)
|           0000:5d70     268a07         mov al, byte es:[bx]
|           0000:5d73     43             inc bx
|           0000:5d74     268804         mov byte es:[si], al
|           0000:5d77     268a07         mov al, byte es:[bx]
|           0000:5d7a     43             inc bx
|           0000:5d7b     26884401       mov byte es:[si + 1], al
|           0000:5d7f     83c650         add si, 0x50                  ; 80
|           0000:5d82     e2ec           loop 0x5d70
|           ;-- str.__ZY_X:
|           0000:5d84    .string "]_^ZY[X\xc3" ; len=8
            ; CALL XREF from fcn.00003658 @ 0x36a0(x)
/ 85: fcn.00005d8c (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5d8c    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:5d93     ce             into
|           0000:5d94     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:5d98     42             inc dx
|           0000:5d99     b011           mov al, 0x11                  ; 17
|           0000:5d9b     ee             out dx, al
|           0000:5d9c     b200           mov dl, 0
|           0000:5d9e     be0ec3         mov si, 0xc30e
|           0000:5da1     bf4ec3         mov di, 0xc34e
|           0000:5da4     f60639d2ff     test byte [0xd239], 0xff
|           0000:5da9     7403           je 0x5dae
|           0000:5dab     83c708         add di, 8
|           ; CODE XREF from fcn.00005d8c @ 0x5da9(x)
|           0000:5dae     b90400         mov cx, 4
|           ; CODE XREF from fcn.00005d8c @ 0x5dce(x)
|           0000:5db1     f744040100     test word [si + 4], 1
|           0000:5db6     740a           je 0x5dc2
|           0000:5db8     8b04           mov ax, word [si]
|           0000:5dba     8b5c02         mov bx, word [si + 2]
|           0000:5dbd     e808ff         call fcn.00005cc8
|           0000:5dc0     eb04           jmp 0x5dc6
|           ; CODE XREF from fcn.00005d8c @ 0x5db6(x)
|           0000:5dc2     c705ffff       mov word [di], 0xffff         ; [0xffff:2]=0xffff
|           ; CODE XREF from fcn.00005d8c @ 0x5dc0(x)
|           0000:5dc6     83c702         add di, 2
|           0000:5dc9     fec2           inc dl
|           0000:5dcb     83c610         add si, 0x10                  ; 16
|           0000:5dce     e2e1           loop 0x5db1
|           0000:5dd0     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5dd3     b005           mov al, 5
|           0000:5dd5     ee             out dx, al
|           0000:5dd6     42             inc dx
|           0000:5dd7     b010           mov al, 0x10                  ; 16
|           0000:5dd9     ee             out dx, al
|           0000:5dda    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.00003658 @ 0x3679(x)
            ; CALL XREF from fcn.000036fd @ 0x3707(x)
/ 66: fcn.00005de1 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5de1    .string "PSQRVW\xba" ; len=7                  ; arg1
|           0000:5de8     ce             into
|           0000:5de9     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:5ded     42             inc dx
|           0000:5dee     b011           mov al, 0x11                  ; 17
|           0000:5df0     ee             out dx, al
|           0000:5df1     b200           mov dl, 0
|           0000:5df3     be4ec3         mov si, 0xc34e
|           0000:5df6     f60639d2ff     test byte [0xd239], 0xff
|           0000:5dfb     7403           je 0x5e00
|           0000:5dfd     83c608         add si, 8
|           ; CODE XREF from fcn.00005de1 @ 0x5dfb(x)
|           0000:5e00     b90400         mov cx, 4
|           ; CODE XREF from fcn.00005de1 @ 0x5e10(x)
|           0000:5e03     833cff         cmp word [si], 0xffff
|           0000:5e06     7403           je 0x5e0b
|           0000:5e08     e82dff         call fcn.00005d38
|           ; CODE XREF from fcn.00005de1 @ 0x5e06(x)
|           0000:5e0b     fec2           inc dl
|           0000:5e0d     83c602         add si, 2
|           0000:5e10     e2f1           loop 0x5e03
|           0000:5e12     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5e15     b005           mov al, 5
|           0000:5e17     ee             out dx, al
|           0000:5e18     42             inc dx
|           0000:5e19     b010           mov al, 0x10                  ; 16
|           0000:5e1b     ee             out dx, al
|           0000:5e1c    .string "_^ZY[X\xc3" ; len=7
            ;-- str.PSQRV:
            ; CALL XREF from fcn.00003658 @ 0x36a6(x)
/ 66: fcn.00005e23 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5e23    .string "PSQRV\xba" ; len=6                   ; arg1
|           0000:5e29     ce             into
|           0000:5e2a     03b001ee       add si, word [bx + si - 0x11ff]
|           0000:5e2e     42             inc dx
|           0000:5e2f     b00f           mov al, 0xf                   ; 15
|           0000:5e31     ee             out dx, al
|           0000:5e32     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5e35     32c0           xor al, al
|           0000:5e37     ee             out dx, al
|           0000:5e38     42             inc dx
|           0000:5e39     b00e           mov al, 0xe                   ; 14
|           0000:5e3b     ee             out dx, al
|           0000:5e3c     b90400         mov cx, 4
|           0000:5e3f     be0ec3         mov si, 0xc30e
|           ; CODE XREF from fcn.00005e23 @ 0x5e53(x)
|           0000:5e42     f6440401       test byte [si + 4], 1
|           0000:5e46     7408           je 0x5e50
|           0000:5e48     8b04           mov ax, word [si]
|           0000:5e4a     8b5c02         mov bx, word [si + 2]
|           0000:5e4d     e8eafd         call fcn.00005c3a
|           ; CODE XREF from fcn.00005e23 @ 0x5e46(x)
|           0000:5e50     83c610         add si, 0x10                  ; 16
|           0000:5e53     e2ed           loop 0x5e42
|           0000:5e55     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5e58     b001           mov al, 1
|           0000:5e5a     ee             out dx, al
|           0000:5e5b     42             inc dx
|           0000:5e5c     b000           mov al, 0
|           0000:5e5e     ee             out dx, al
|           0000:5e5f    .string "^ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.00003658 @ 0x3694(x)
/ 30: fcn.00005e65 (int16_t arg1);
| `- args(ax)
|           0000:5e65     50             push ax                       ; arg1
|           0000:5e66     56             push si
|           0000:5e67     be59d2         mov si, 0xd259
|           0000:5e6a     8a04           mov al, byte [si]
|           0000:5e6c     46             inc si
|           0000:5e6d     f60639d2ff     test byte [0xd239], 0xff
|           0000:5e72     7401           je 0x5e75
|           0000:5e74     46             inc si
|           ; CODE XREF from fcn.00005e65 @ 0x5e72(x)
|           0000:5e75     8a24           mov ah, byte [si]
|           0000:5e77     3ae0           cmp ah, al
|           0000:5e79     7405           je 0x5e80
|           0000:5e7b     e80500         call fcn.00005e83
|           0000:5e7e     8804           mov byte [si], al
|           ; CODE XREF from fcn.00005e65 @ 0x5e79(x)
|           0000:5e80     5e             pop si
|           0000:5e81     58             pop ax
\           0000:5e82     c3             ret
            ; CALL XREF from fcn.00005e65 @ 0x5e7b(x)
/ 88: fcn.00005e83 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5e83    .string "PSQRVW\xbf" ; len=7                  ; arg1
|           0000:5e8a     5c             pop sp
|           0000:5e8b     d2bee30a       sar byte [bp + str.BONUS], cl
|           0000:5e8f     b90600         mov cx, 6
|           ; CODE XREF from fcn.00005e83 @ 0x5e98(x)
|           0000:5e92     8a04           mov al, byte [si]
|           0000:5e94     8805           mov byte [di], al
|           0000:5e96     47             inc di
|           0000:5e97     46             inc si
|           0000:5e98     e2f8           loop 0x5e92
|           0000:5e9a     b207           mov dl, 7
|           0000:5e9c     b82502         mov ax, 0x225                 ; "disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5e9f     bbc400         mov bx, 0xc4                  ; 196
|           0000:5ea2     bf5cd2         mov di, 0xd25c
|           0000:5ea5 ~   e8fede         call fcn.00003da6
|           ;-- str.6Y:
|           0000:5ea7    .string "\xde\x8a6Y\xd2\xbf\\xd2\xb9\x05" ; len=10
|           0000:5eb1 ~   00d0           add al, dl
|           ; CODE XREF from fcn.00005e83 @ 0x5eba(x)
|           0000:5eb2     d0de           rcr dh, 1
|           0000:5eb4     7203           jb 0x5eb9
|           0000:5eb6     c60520         mov byte [di], 0x20           ; [0x20:1]=255 ; 32
|           ; CODE XREF from fcn.00005e83 @ 0x5eb4(x)
|           0000:5eb9     47             inc di
|           0000:5eba     e2f6           loop 0x5eb2
|           0000:5ebc     b20e           mov dl, 0xe                   ; 14
|           0000:5ebe     b82502         mov ax, 0x225                 ; "disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:5ec1     bbc400         mov bx, 0xc4                  ; 196
|           0000:5ec4     bf5cd2         mov di, 0xd25c
|           0000:5ec7     e8dcde         call fcn.00003da6
|           0000:5eca     a059d2         mov al, byte [0xd259]         ; [0xd259:1]=255
|           0000:5ecd     3c1f           cmp al, 0x1f                  ; 31
|           0000:5ecf     7503           jne 0x5ed4
|           0000:5ed1     e8fddb         call fcn.00003ad1
|           ; CODE XREF from fcn.00005e83 @ 0x5ecf(x)
|           0000:5ed4    .string "_^ZY[X\xc3" ; len=7
            0000:5edb     3100           xor word [bx + si], ax
            0000:5edd ~   e27e           loop 0x5f5d                   ; fcn.00005ee1+0x7c
            ;-- str.__PR:
            0000:5ede    .string "~;'PR\xf7" ; len=6
|           0000:5ee4     06             push es
|           0000:5ee5     99             cdq
|           0000:5ee6     d3ff           sar di, cl
|           0000:5ee8     ff7405         push word [si + 5]
|           0000:5eeb     c60654d200     mov byte [0xd254], 0
|           ; CODE XREF from fcn.00005ee1 @ 0x5ee9(x)
|           0000:5ef0     f60698d3ff     test byte [0xd398], 0xff
|           0000:5ef5     757c           jne 0x5f73
|           0000:5ef7     c60698d302     mov byte [0xd398], 2
|           0000:5efc     a199d3         mov ax, word [0xd399]         ; [0xd399:2]=0xffff
|           0000:5eff     3d0000         cmp ax, 0
|           0000:5f02     746c           je 0x5f70
|           0000:5f04     48             dec ax
|           0000:5f05     a399d3         mov word [0xd399], ax         ; [0xd399:2]=0xffff
|           0000:5f08     fe06a0d3       inc byte [0xd3a0]
|           0000:5f0c     803ea0d30a     cmp byte [0xd3a0], 0xa
|           0000:5f11     7555           jne 0x5f68
|           0000:5f13     c606a0d300     mov byte [0xd3a0], 0
|           0000:5f18     fe069fd3       inc byte [0xd39f]
|           0000:5f1c     803e9fd30a     cmp byte [0xd39f], 0xa
|           0000:5f21     7545           jne 0x5f68
|           0000:5f23     c6069fd300     mov byte [0xd39f], 0
|           0000:5f28     fe069ed3       inc byte [0xd39e]
|           0000:5f2c     803e9ed30a     cmp byte [0xd39e], 0xa
|           0000:5f31     7535           jne 0x5f68
|           0000:5f33     c6069ed300     mov byte [0xd39e], 0
|           0000:5f38     fe069dd3       inc byte [0xd39d]
|           0000:5f3c     803e9dd30a     cmp byte [0xd39d], 0xa
|           0000:5f41     7525           jne 0x5f68
|           0000:5f43     c6069dd300     mov byte [0xd39d], 0
|           0000:5f48     fe069cd3       inc byte [0xd39c]
|           0000:5f4c     803e9cd30a     cmp byte [0xd39c], 0xa
|           0000:5f51     7515           jne 0x5f68
|           0000:5f53     c6069cd300     mov byte [0xd39c], 0
|           0000:5f58     fe069bd3       inc byte [0xd39b]
|           0000:5f5c     803e9bd30a     cmp byte [0xd39b], 0xa
|           0000:5f61     7505           jne 0x5f68
|           0000:5f63     c6069bd300     mov byte [0xd39b], 0
|           ; XREFS: CODE 0x00005f11  CODE 0x00005f21  CODE 0x00005f31  CODE 0x00005f41  CODE 0x00005f51  CODE 0x00005f61  
|           0000:5f68     b201           mov dl, 1
|           0000:5f6a     e85600         call fcn.00005fc3
|           0000:5f6d     e80900         call fcn.00005f79
|           ; CODE XREFS from fcn.00005ee1 @ 0x5f02(x), 0x5f77(x)
|           0000:5f70     5a             pop dx
|           0000:5f71     58             pop ax
|           0000:5f72     c3             ret
|           ; CODE XREF from fcn.00005ee1 @ 0x5ef5(x)
|           0000:5f73     fe0e98d3       dec byte [0xd398]
\           0000:5f77     ebf7           jmp 0x5f70
            ; CALL XREF from fcn.0000253f @ 0x2586(x)
            ; CALL XREF from fcn.00003ad1 @ 0x3b1f(x)
            ; CALL XREF from fcn.00005ee1 @ 0x5f6d(x)
/ 74: fcn.00005f79 ();
|           0000:5f79     56             push si
|           0000:5f7a     57             push di
|           0000:5f7b     bf9bd3         mov di, 0xd39b
|           0000:5f7e     bea2d3         mov si, 0xd3a2
|           0000:5f81     e8e2e8         call fcn.00004866
|           0000:5f84     733a           jae 0x5fc0
|           0000:5f86     e811c6         call fcn.0000259a
|           0000:5f89     bf3c0d         mov di, 0xd3c                 ; '<\r'
|           0000:5f8c     e850f3         call fcn.000052df
|           0000:5f8f     8006a4d304     add byte [0xd3a4], 4
|           0000:5f94     803ea4d30a     cmp byte [0xd3a4], 0xa
|           0000:5f99     7225           jb 0x5fc0
|           0000:5f9b     802ea4d30a     sub byte [0xd3a4], 0xa
|           0000:5fa0     fe06a3d3       inc byte [0xd3a3]
|           0000:5fa4     803ea3d30a     cmp byte [0xd3a3], 0xa
|           0000:5fa9     7215           jb 0x5fc0
|           0000:5fab     802ea3d30a     sub byte [0xd3a3], 0xa
|           0000:5fb0     fe06a2d3       inc byte [0xd3a2]
|           0000:5fb4     803ea2d30a     cmp byte [0xd3a2], 0xa
|           0000:5fb9     7205           jb 0x5fc0
|           0000:5fbb     802ea2d30a     sub byte [0xd3a2], 0xa
|           ; CODE XREFS from fcn.00005f79 @ 0x5f84(x), 0x5f99(x), 0x5fa9(x), 0x5fb9(x)
|           0000:5fc0     5f             pop di
|           0000:5fc1     5e             pop si
\           0000:5fc2     c3             ret
            ; CALL XREF from fcn.0000253f @ 0x2583(x)
            ; CALL XREF from fcn.0000391f @ 0x3925(x)
            ; CALL XREF from fcn.00003ad1 @ 0x3b1c(x)
            ; CALL XREF from fcn.00005ee1 @ 0x5f6a(x)
/ 19: fcn.00005fc3 (int16_t arg1, int16_t arg2);
| `- args(ax, bx)
|           0000:5fc3     50             push ax                       ; arg1
|           0000:5fc4     53             push bx                       ; arg2
|           0000:5fc5     57             push di
|           0000:5fc6     b84400         mov ax, 0x44                  ; 'D' ; 68 ; int16_t arg1
|           0000:5fc9     bb2500         mov bx, 0x25                  ; '%' ; 37 ; int16_t arg3
|           0000:5fcc     bf9bd3         mov di, 0xd39b
|           0000:5fcf     e82edd         call fcn.00003d00
|           0000:5fd2     5f             pop di
|           0000:5fd3     5b             pop bx
|           0000:5fd4     58             pop ax
\           0000:5fd5     c3             ret
            ; CALL XREF from fcn.0000391f @ 0x3928(x)
/ 19: fcn.00005fd6 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5fd6     50             push ax                       ; arg1
|           0000:5fd7     53             push bx                       ; arg3
|           0000:5fd8     57             push di
|           0000:5fd9     b84800         mov ax, 0x48                  ; 'H' ; 72
|           0000:5fdc     bb5900         mov bx, 0x59                  ; 'Y' ; 89
|           0000:5fdf     bfa8d3         mov di, 0xd3a8
|           0000:5fe2     e81bdd         call fcn.00003d00
|           0000:5fe5     5f             pop di
|           0000:5fe6     5b             pop bx
|           0000:5fe7     58             pop ax
\           0000:5fe8     c3             ret
            ; CALL XREF from fcn.0000259a @ 0x25b5(x)
            ; CALL XREF from fcn.0000391f @ 0x392b(x)
            ; CALL XREF from fcn.00003a59 @ 0x3a6f(x)
/ 19: fcn.00005fe9 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:5fe9     50             push ax                       ; arg1
|           0000:5fea     53             push bx                       ; arg3
|           0000:5feb     57             push di
|           0000:5fec     b84800         mov ax, 0x48                  ; 'H' ; 72
|           0000:5fef     bb8d00         mov bx, 0x8d                  ; 141
|           0000:5ff2     bfabd3         mov di, 0xd3ab
|           0000:5ff5     e808dd         call fcn.00003d00
|           0000:5ff8     5f             pop di
|           0000:5ff9     5b             pop bx
|           0000:5ffa     58             pop ax
\           0000:5ffb     c3             ret
            ; CALL XREF from fcn.000060f7 @ 0x60f7(x)
/ 43: fcn.00005ffc ();
|           0000:5ffc     56             push si
|           0000:5ffd     57             push di
|           0000:5ffe     beb107         mov si, 0x7b1                 ; "BITMAPS.PAR"
|           0000:6001     bfce80         mov di, 0x80ce
|           ; CODE XREF from fcn.00005ffc @ 0x601c(x)
|           0000:6004     803cff         cmp byte [si], 0xff
|           0000:6007     7415           je 0x601e
|           0000:6009     c60500         mov byte [di], 0
|           0000:600c     e81800         call fcn.00006027
|           0000:600f     7303           jae 0x6014
|           0000:6011     c60501         mov byte [di], 1
|           ; CODE XREFS from fcn.00005ffc @ 0x600f(x), 0x6019(x)
|           0000:6014     46             inc si
|           0000:6015     807cff24       cmp byte [si - 1], 0x24       ; '$'
|           0000:6019     75f9           jne 0x6014
|           0000:601b     47             inc di
|           0000:601c     ebe6           jmp 0x6004
|           ; CODE XREF from fcn.00005ffc @ 0x6007(x)
|           0000:601e     c605ff         mov byte [di], 0xff           ; [0xff:1]=255
|           0000:6021     e81d00         call fcn.00006041
|           0000:6024     5f             pop di
|           0000:6025     5e             pop si
\           0000:6026     c3             ret
            ; CALL XREF from fcn.00005ffc @ 0x600c(x)
/ 26: fcn.00006027 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:6027     50             push ax                       ; arg1
|           0000:6028     53             push bx                       ; arg3
|           0000:6029     52             push dx                       ; arg2
|           0000:602a     b8003d         mov ax, fcn.00003d00          ; 0x3d00 ; "PSQRVWU\x89\xe5\x8b\xc3\xd1\xe3\xd1\xe3\x01\u00f9\x04"
|           0000:602d     89f2           mov dx, si
|           0000:602f     cd21           int 0x21
|           0000:6031     7209           jb 0x603c
|           0000:6033     8bd8           mov bx, ax
|           0000:6035     b43e           mov ah, 0x3e                  ; '>' ; 62
|           0000:6037     cd21           int 0x21
|           0000:6039     f8             clc
|           0000:603a     eb01           jmp 0x603d
|           ; CODE XREF from fcn.00006027 @ 0x6031(x)
|           0000:603c     f9             stc
|           ; CODE XREF from fcn.00006027 @ 0x603a(x)
|           0000:603d     5a             pop dx
|           0000:603e     5b             pop bx
|           0000:603f     58             pop ax
\           0000:6040     c3             ret
            ;-- str.PRVW:
            ; CALL XREF from fcn.00005ffc @ 0x6021(x)
/ 90: fcn.00006041 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:6041    .string "PRVW\xbe" ; len=5                    ; arg1
|           0000:6046     ce             into
|           0000:6047 ~   80b000803c     xor byte [bx + si - 0x8000], 0x3c ; [0x3c:1]=255 ; 60
|           ; CODE XREF from fcn.00006041 @ 0x6057(x)
|           0000:604a     803cff         cmp byte [si], 0xff
|           0000:604d     740a           je 0x6059
|           0000:604f     f604ff         test byte [si], 0xff
|           0000:6052     7402           je 0x6056
|           0000:6054     b001           mov al, 1
|           ; CODE XREF from fcn.00006041 @ 0x6052(x)
|           0000:6056     46             inc si
|           0000:6057     ebf1           jmp 0x604a
|           ; CODE XREF from fcn.00006041 @ 0x604d(x)
|           0000:6059     84c0           test al, al
|           0000:605b     7439           je 0x6096
|           0000:605d     b409           mov ah, 9
|           0000:605f     baca07         mov dx, str._r_n_r_nThe_following_files_are_missing_or_corrupt_:_r_n_r_n__r_nplease_re_copy_them_from_the_release_disk._r_n_r_nReturning_to_DOS_...._r_n_r_n____________r_n__r_nCannot_continue__the_levels_data_file_r_n_r_n_____________r_n_r_nwas_missing_or_corrupt__returning_to_DOS_..._r_n_ ; 0x7ca ; " |           ;                                                         |           ; The following files are missing or corrupt :            |           ;                                                         |           ; $                                                       |           ; please re-copy them from the release disk.              |           ;                                                         |           ; Returning to DOS ....                                   |           ;                                                         |           ; $         $                                             |           ; $                                                       |           ; Cannot continue; the levels data file                   |           ;                                                         |           ;            $                                            |           ;                                                         |           ; was missing or corrupt, returning to DOS ...            |           ; $"
|           0000:6062     cd21           int 0x21
|           0000:6064     bece80         mov si, 0x80ce
|           0000:6067     bfb107         mov di, 0x7b1                 ; "BITMAPS.PAR"
|           ; CODE XREF from fcn.00006041 @ 0x608a(x)
|           0000:606a     803cff         cmp byte [si], 0xff
|           0000:606d     741d           je 0x608c
|           0000:606f     f604ff         test byte [si], 0xff
|           0000:6072     740e           je 0x6082
|           0000:6074     ba4908         mov dx, 0x849                 ; "         $\r\n$\r\nCannot continue; the levels data file\r\n\r\n           $\r\n\r\nwas missing or corrupt, returning to DOS ...\r\n$\x10"
|           0000:6077     cd21           int 0x21
|           0000:6079     89fa           mov dx, di
|           0000:607b     cd21           int 0x21
|           0000:607d     ba5308         mov dx, 0x853                 ; "\r\n$\r\nCannot continue; the levels data file\r\n\r\n           $\r\n\r\nwas missing or corrupt, returning to DOS ...\r\n$\x10"
|           0000:6080     cd21           int 0x21
|           ; CODE XREFS from fcn.00006041 @ 0x6072(x), 0x6087(x)
|           0000:6082     47             inc di
|           0000:6083     807dff24       cmp byte [di - 1], 0x24       ; '$'
|           0000:6087     75f9           jne 0x6082
|           0000:6089     46             inc si
|           0000:608a     ebde           jmp 0x606a
|           ; CODE XREF from fcn.00006041 @ 0x606d(x)
|           0000:608c     baff07         mov dx, 0x7ff                 ; "\r\nplease re-copy them from the release disk.\r\n\r\nReturning to DOS ....\r\n\r\n$         $\r\n$\r\nCannot continue; the levels data file\r\n\r\n           $\r\n\r\nwas missing or corrupt, returning to DOS ...\r\n$\x10"
|           0000:608f     cd21           int 0x21
|           0000:6091     b8014c         mov ax, 0x4c01
|           0000:6094 ~   cd21           int 0x21
|           ;-- str.__ZX:
|           0000:6095    .string "!_^ZX\xc3" ; len=6
|           ; CODE XREF from fcn.00006041 @ 0x605b(x)
|           0000:6096    .string "!_^ZX\xc3" ; len=6
            ;-- str.PSRW:
            ; CALL XREF from fcn.000060f7 @ 0x6101(x)
/ 92: fcn.0000609b (int16_t arg1, int16_t arg2, uint16_t arg3);
| `- args(ax, dx, bx)
|           0000:609b    .string "PSRW\x06" ; len=5                    ; arg1
|           0000:60a0     b8001a         mov ax, 0x1a00                ; "ff this barrier - but only once."
|           0000:60a3     cd10           int 0x10
|           0000:60a5     b201           mov dl, 1
|           0000:60a7     3c1a           cmp al, 0x1a                  ; 26
|           0000:60a9     7538           jne 0x60e3
|           0000:60ab     80fb04         cmp bl, 4                     ; 4 ; arg3
|           0000:60ae     7233           jb 0x60e3
|           0000:60b0     80fb08         cmp bl, 8                     ; 8 ; arg3
|           0000:60b3     772e           ja 0x60e3
|           0000:60b5     1e             push ds
|           0000:60b6     07             pop es
|           0000:60b7     bfd8d3         mov di, 0xd3d8
|           0000:60ba     b41b           mov ah, 0x1b                  ; 27
|           0000:60bc     bb0000         mov bx, 0
|           0000:60bf     cd10           int 0x10
|           0000:60c1     a009d4         mov al, byte [0xd409]         ; [0xd409:1]=255
|           0000:60c4     b200           mov dl, 0
|           0000:60c6     3c03           cmp al, 3                     ; 3
|           0000:60c8     7219           jb 0x60e3
|           0000:60ca     a1dad3         mov ax, word [0xd3da]         ; [0xd3da:2]=0xffff
|           0000:60cd     50             push ax
|           0000:60ce     07             pop es
|           0000:60cf     8b3ed8d3       mov di, word [0xd3d8]
|           0000:60d3     b201           mov dl, 1
|           0000:60d5     268a4502       mov al, byte es:[di + 2]
|           0000:60d9     a801           test al, 1                    ; 1
|           0000:60db     7406           je 0x60e3
|           ;-- str._a_Z_X:
|           0000:60dd    .string "\a_Z[X\xc3" ; len=6
|           ; CODE XREFS from fcn.0000609b @ 0x60a9(x), 0x60ae(x), 0x60b3(x), 0x60c8(x), 0x60db(x)
|           0000:60e3     32f6           xor dh, dh
|           0000:60e5     d1e2           shl dx, 1
|           0000:60e7     bec602         mov si, 0x2c6
|           0000:60ea     03f2           add si, dx
|           0000:60ec     8b14           mov dx, word [si]
|           0000:60ee     b409           mov ah, 9
|           0000:60f0     cd21           int 0x21
|           0000:60f2     b8014c         mov ax, 0x4c01
\           0000:60f5     cd21           int 0x21
            ; CALL XREF from fcn.00000100 @ 0x5117(x)
/ 14: fcn.000060f7 ();
|           0000:60f7     e802ff         call fcn.00005ffc
|           0000:60fa     f606d2ceff     test byte [0xced2], 0xff
|           0000:60ff     7503           jne 0x6104
|           0000:6101     e897ff         call fcn.0000609b
|           ; CODE XREF from fcn.000060f7 @ 0x60ff(x)
\           0000:6104     c3             ret
            ; CALL XREF from fcn.00000100 @ 0x5114(x)
/ 79: fcn.00006105 (int16_t arg1);
| `- args(ax)
|           0000:6105     50             push ax                       ; arg1
|           0000:6106     56             push si
|           0000:6107     57             push di
|           0000:6108     be8000         mov si, 0x80                  ; 128
|           0000:610b     f604ff         test byte [si], 0xff
|           0000:610e     7440           je 0x6150
|           ; CODE XREFS from fcn.00006105 @ 0x6119(x), 0x611d(x), 0x6142(x)
|           0000:6110     46             inc si
|           0000:6111     8a04           mov al, byte [si]
|           ;-- str.__rt9__t:
|           0000:6113    .string "<\rt9< t\xf5" ; len=8
|           0000:611b     3c09           cmp al, 9                     ; 9
|           0000:611d     74f1           je 0x6110
|           0000:611f     3c2f           cmp al, 0x2f                  ; '/' ; 47
|           0000:6121     7406           je 0x6129
|           0000:6123     3c2d           cmp al, 0x2d                  ; '-' ; 45
|           0000:6125     7402           je 0x6129
|           0000:6127     eb1b           jmp 0x6144
|           ; CODE XREFS from fcn.00006105 @ 0x6121(x), 0x6125(x)
|           0000:6129     46             inc si
|           0000:612a     8a04           mov al, byte [si]
|           0000:612c     0c20           or al, 0x20                   ; 32
|           0000:612e     bb2101         mov bx, 0x121
|           ; CODE XREF from fcn.00006105 @ 0x613d(x)
|           0000:6131     803fff         cmp byte [bx], 0xff
|           0000:6134     740e           je 0x6144
|           0000:6136     3a07           cmp al, byte [bx]
|           0000:6138     7405           je 0x613f
|           0000:613a     83c303         add bx, 3
|           0000:613d     ebf2           jmp 0x6131
|           ; CODE XREF from fcn.00006105 @ 0x6138(x)
|           0000:613f     43             inc bx
|           0000:6140     ff17           call word [bx]
|           0000:6142     ebcc           jmp 0x6110
|           ; CODE XREFS from fcn.00006105 @ 0x6127(x), 0x6134(x)
|           0000:6144     b409           mov ah, 9
|           0000:6146     baca02         mov dx, str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE ; 0x2ca ; "Bad command-line switch.  Available switches are: |           ;                                                         |           ;     /Q - run quietly, ie disable sound effects          |           ;     /V - skip video mode auto-detect                    |           ;     /K llrraa - use alternative control keys            |           ;                                                         |           ; See Paranoid.DOC for details.                           |           ; $* - * - * - * - * - * - * - * - * - "
|           0000:6149     cd21           int 0x21
|           0000:614b     b8014c         mov ax, 0x4c01
|           0000:614e ~   cd21           int 0x21
|           ;-- str.__X:
|           0000:614f    .string "!_^X\xc3" ; len=5
|           ; DATA XREF from str.BONUS @ +0x34(r)
|           ; CODE XREFS from fcn.00006105 @ 0x610e(x), 0x6115(x)
|           0000:6150    .string "!_^X\xc3" ; len=5
            0000:6154     c606d1ce01     mov byte [0xced1], 1
            0000:6159     c3             ret
            0000:615a     c606d2ce01     mov byte [0xced2], 1
            0000:615f     c3             ret
            ;-- str.PQWF:
            0000:6160    .string "PQWF\x80" ; len=5
            0000:6165     3c20           cmp al, 0x20                  ; 32
            0000:6167     74fa           je 0x6163
            ; DATA XREF from str.brick__and_fourth__a_brilliantly_animated_icon_might_float @ +0x17(r)
            0000:6169     bf1dd4         mov di, 0xd41d
            ; DATA XREF from str.shrunk_by_a_third.__Not_a_particularly_useful_icon. @ +0x1e(r)
            0000:616c     b90300         mov cx, 3
            ; CODE XREF from str.PQWF @ +0x25(x)
            0000:616f     e87800         call fcn.000061ea
            ; DATA XREF from str.obliterate_bricks_with_some_heavy_artillery___use_the @ +0x3(r)
            0000:6172     7215           jb 0x6189
            0000:6174     8805           mov byte [di], al
            0000:6176     3ce0           cmp al, 0xe0                  ; 224
            0000:6178     7508           jne 0x6182
            0000:617a     e86d00         call fcn.000061ea
            0000:617d     720a           jb 0x6189
            0000:617f     884501         mov byte [di + 1], al
            ; CODE XREF from str.PQWF @ +0x18(x)
            0000:6182     83c702         add di, 2
            0000:6185     e2e8           loop 0x616f
            0000:6187     eb0c           jmp 0x6195
            ; CODE XREFS from str.PQWF @ +0x12(x), +0x1d(x)
            0000:6189     b409           mov ah, 9
            0000:618b     baca02         mov dx, str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE ; 0x2ca ; "Bad command-line switch.  Available switches are:             ;                                                                     ;     /Q - run quietly, ie disable sound effects                      ;     /V - skip video mode auto-detect                                ;     /K llrraa - use alternative control keys                        ;                                                                     ; See Paranoid.DOC for details.                                       ; $* - * - * - * - * - * - * - * - * - "
            0000:618e     cd21           int 0x21
            0000:6190     b8014c         mov ax, 0x4c01
            0000:6193 ~   cd21           int 0x21
            ;-- str._N_YX:
            0000:6194    .string "!N_YX\xc3" ; len=6
            0000:619a     50             push ax
            0000:619b     57             push di
            ; CODE XREF from str._N_YX @ +0xc(x)
            0000:619c     46             inc si
            0000:619d     803c20         cmp byte [si], 0x20
            0000:61a0     74fa           je 0x619c
            0000:61a2     bf4e80         mov di, 0x804e
            ; CODE XREF from str.__t_b__rt @ +0xa(x)
            0000:61a5     8a04           mov al, byte [si]
            0000:61a7     8805           mov byte [di], al
            ;-- str.__t_b__rt:
            0000:61a9    .string "< t\b<\rt\x04" ; len=8
            0000:61b1     46             inc si
            0000:61b2     47             inc di
            0000:61b3     ebf0           jmp 0x61a5
            ; CODE XREFS from str.__t_b__rt @ +0x2(x), +0x6(x)
            0000:61b5     c60500         mov byte [di], 0
            0000:61b8 ~   c6450124       mov byte [di + 1], 0x24       ; '$'
                                                                       ; [0x24:1]=255 ; 36
            ;-- str._N_X:
            0000:61bb    .string "$N_X\xc3" ; len=5
            ; DATA XREFS from fcn.000035a2 @ 0x35b1(r), 0x35cc(r), 0x35e9(r)
            0000:61c0    .string "PSQR\x8b" ; len=5
            0000:61c5     0405           add al, 5
            0000:61c7     3000           xor byte [bx + si], al
            0000:61c9     8b1d           mov bx, word [di]
            0000:61cb     83c330         add bx, 0x30                  ; 48
            0000:61ce     01d8           add ax, bx
            0000:61d0     b9f500         mov cx, 0xf5
            ; CODE XREF from str._N_X @ +0x1e(x)
            0000:61d3     8a04           mov al, byte [si]
            0000:61d5     46             inc si
            0000:61d6     8805           mov byte [di], al
            0000:61d8     47             inc di
            0000:61d9     e2f8           loop 0x61d3
            0000:61db     251700         and ax, 0x17                  ; 23
            0000:61de     83cb61         or bx, 0x61                   ; 97
            0000:61e1     8904           mov word [si], ax
            0000:61e3     891d           mov word [di], bx
            0000:61e5    .string "ZY[X\xc3\x8a\x04" ; len=7
|           ;-- str.F_ar:
|           0000:61ec    .string "F<ar\x06" ; len=5
|           0000:61f1     3c7a           cmp al, 0x7a                  ; 'z' ; 122
|           0000:61f3     7702           ja str._0__ns
|           0000:61f5     24df           and al, 0xdf                  ; 223
|           ;-- str._0__ns:
|           ; CODE XREFS from fcn.000061ea @ 0x61ef(x), 0x61f3(x)
|           0000:61f7    .string ",0<\ns\x06" ; len=6
|           0000:61fd     3c00           cmp al, 0
|           0000:61ff     7d0c           jge 0x620d
|           0000:6201 ~   eb43           jmp 0x6246
|           ;-- str.C__a_:
|           0000:6202    .string "C,\a<\x0f" ; len=5
|           ;-- str.w__nr9:
|           0000:6207    .string "w=<\nr9\x8a" ; len=7
|           0000:620e     2446           and al, 0x46                  ; 70
|           0000:6210     80fc61         cmp ah, 0x61                  ; 'a' ; 97
|           0000:6213     7208           jb 0x621d
|           0000:6215     80fc7a         cmp ah, 0x7a                  ; 'z' ; 122
|           0000:6218     7703           ja 0x621d
|           0000:621a     80e4df         and ah, 0xdf                  ; 223
|           ; CODE XREFS from fcn.000061ea @ 0x6213(x), 0x6218(x)
|           0000:621d     80ec30         sub ah, 0x30                  ; 48
|           0000:6220     80fc0a         cmp ah, 0xa                   ; 10
|           0000:6223     7307           jae 0x622c
|           0000:6225     80fc00         cmp ah, 0
|           0000:6228     7d0f           jge 0x6239
|           0000:622a     eb1a           jmp 0x6246
|           ; CODE XREF from fcn.000061ea @ 0x6223(x)
|           0000:622c     80ec07         sub ah, 7
|           0000:622f     80fc0f         cmp ah, 0xf                   ; 15
|           0000:6232     7712           ja 0x6246
|           0000:6234     80fc0a         cmp ah, 0xa                   ; 10
|           0000:6237     720d           jb 0x6246
|           ; CODE XREF from fcn.000061ea @ 0x6228(x)
|           0000:6239     d0e0           shl al, 1
|           0000:623b     d0e0           shl al, 1
|           0000:623d     d0e0           shl al, 1
|           0000:623f     d0e0           shl al, 1
|           0000:6241     02c4           add al, ah
|           0000:6243     f8             clc
|           0000:6244     eb01           jmp 0x6247
|           ; XREFS: CODE 0x00006201  CODE 0x00006207  CODE 0x0000620b  CODE 0x0000622a  CODE 0x00006232  CODE 0x00006237  
|           0000:6246     f9             stc
|           ; CODE XREF from fcn.000061ea @ 0x6244(x)
\           0000:6247     c3             ret
            0000:6248     3100           xor word [bx + si], ax
            0000:624a ~   e27e           loop 0x62ca                   ; fcn.00006299+0x31
            ;-- str.__PSQR:
            0000:624b    .string "~;'PSQR\xb8" ; len=8
|           0000:6253     0000           add byte [bx + si], al
|           0000:6255     bb0000         mov bx, 0
|           0000:6258     b97f02         mov cx, 0x27f                 ; "s 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:625b     ba2201         mov dx, 0x122
|           0000:625e     e891e0         call fcn.000042f2
|           0000:6261     b81000         mov ax, 0x10                  ; 16
|           0000:6264     bb0c00         mov bx, 0xc                   ; 12
|           0000:6267     b96f02         mov cx, 0x26f                 ; "Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:626a     ba1601         mov dx, 0x116
|           0000:626d     e802e1         call fcn.00004372
|           0000:6270     b8d000         mov ax, 0xd0                  ; 208
|           0000:6273     bb2e01         mov bx, 0x12e                 ; "rupt or missing file :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6276     b9af01         mov cx, 0x1af                 ; "r write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6279     ba5d01         mov dx, 0x15d                 ; "o DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:627c     e873e0         call fcn.000042f2
|           0000:627f     b8e000         mov ax, 0xe0                  ; 224
|           0000:6282     bb3a01         mov bx, 0x13a                 ; "ing file :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6285     b99f01         mov cx, 0x19f                 ; " for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6288     ba5101         mov dx, 0x151                 ; "\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:628b     e8e4e0         call fcn.00004372
|           0000:628e     e80800         call fcn.00006299
|           0000:6291     e86c00         call fcn.00006300
|           0000:6294    .string "ZY[X\xc3" ; len=5
            ;-- str.PSQRW:
            ; CALL XREF from fcn.0000624e @ 0x628e(x)
/ 103: fcn.00006299 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:6299    .string "PSQRW\xb8" ; len=6                   ; arg1
|           0000:629f     b600           mov dh, 0
|           0000:62a1     bb5a00         mov bx, 0x5a                  ; 'Z' ; 90
|           0000:62a4     b9c901         mov cx, 0x1c9                 ; "ing to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62a7     bac500         mov dx, 0xc5                  ; 197
|           0000:62aa     e845e0         call fcn.000042f2
|           0000:62ad     b8c600         mov ax, 0xc6                  ; 198
|           0000:62b0     bb6600         mov bx, 0x66                  ; 'f' ; 102
|           0000:62b3     b9b901         mov cx, 0x1b9                 ; "otect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62b6     bab900         mov dx, 0xb9                  ; 185
|           0000:62b9     e836e0         call fcn.000042f2
|           0000:62bc     b8e500         mov ax, 0xe5                  ; 229
|           0000:62bf     bb7e00         mov bx, 0x7e                  ; '~' ; 126
|           0000:62c2     b601           mov dh, 1
|           0000:62c4     bf5005         mov di, 0x550
|           ; CODE XREF from fcn.00006299 @ 0x62d5(x)
|           0000:62c7     8a15           mov dl, byte [di]
|           0000:62c9     47             inc di
|           ; CODE XREF from str.w__nr9 @ +0x43(x)
|           0000:62ca     80faff         cmp dl, 0xff
|           0000:62cd     7408           je 0x62d7
|           0000:62cf     e885e4         call fcn.00004757
|           0000:62d2     051800         add ax, 0x18                  ; 24
|           0000:62d5     ebf0           jmp 0x62c7
|           ; CODE XREF from fcn.00006299 @ 0x62cd(x)
|           0000:62d7     bf2305         mov di, 0x523                 ; "PRESS SPACE"
|           0000:62da     b82802         mov ax, 0x228                 ; "k.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62dd     bb4d01         mov bx, 0x14d                 ; "$\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62e0     b20f           mov dl, 0xf                   ; 15
|           0000:62e2     e8c1da         call fcn.00003da6
|           0000:62e5     bf2f05         mov di, str.___TO_START       ; 0x52f ; "   TO START"
|           0000:62e8     bb5601         mov bx, 0x156                 ; "rning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62eb     e8b8da         call fcn.00003da6
|           0000:62ee     bf3b05         mov di, str._VERSION_1.8      ; 0x53b ; " VERSION 1.8"
|           0000:62f1     b82002         mov ax, 0x220                 ; "t on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62f4     bb3201         mov bx, 0x132                 ; " or missing file :\r\n\r\n     $\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error creating high score table file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:62f7     e8acda         call fcn.00003da6
|           0000:62fa    .string "_ZY[X\xc3" ; len=6
            ; CALL XREF from fcn.0000624e @ 0x6291(x)
/ 58: fcn.00006300 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:6300    .string "PSQRVW\xbb" ; len=7                  ; arg1
|           0000:6307     44             inc sp
|           0000:6308     01b20fbe       add word [bp + si - 0x41f1], si
|           0000:630c     de51b6         ficom word [bx + di - 0x4a]
|           0000:630f ~   03bfec80       add di, word [bx - 0x7f14]
|           ; CODE XREF from fcn.00006300 @ 0x6331(x)
|           0000:6310     bfec80         mov di, 0x80ec
|           0000:6313     b91300         mov cx, 0x13                  ; 19
|           ; CODE XREF from fcn.00006300 @ 0x631e(x)
|           0000:6316     8a04           mov al, byte [si]
|           0000:6318     f6d0           not al
|           0000:631a     8805           mov byte [di], al
|           0000:631c     46             inc si
|           0000:631d     47             inc di
|           0000:631e     e2f6           loop 0x6316
|           0000:6320     c60500         mov byte [di], 0
|           0000:6323     46             inc si
|           0000:6324     33c0           xor ax, ax
|           0000:6326     bfec80         mov di, 0x80ec
|           0000:6329     e87ada         call fcn.00003da6
|           0000:632c     83c309         add bx, 9
|           0000:632f     fece           dec dh
|           0000:6331     75dd           jne 0x6310
|           0000:6333    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.000064d9 @ 0x64ee(x)
/ 45: fcn.0000633a (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:633a     52             push dx                       ; arg2
|           0000:633b     56             push si
|           0000:633c     8b360bcf       mov si, word [0xcf0b]
|           0000:6340     8a160dcf       mov dl, byte [0xcf0d]
|           0000:6344     e83000         call fcn.00006377
|           0000:6347     80c202         add dl, 2
|           0000:634a ~   80fa08         cmp dl, 8                     ; 8
|           ;-- str._br_rF:
|           0000:634c    .string "\br\rF\x81" ; len=5
|           0000:6351     fe             invalid
|           0000:6352     2305           and ax, word [di]
|           0000:6354     7503           jne 0x6359
|           0000:6356     bea503         mov si, 0x3a5                 ; "* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           ; CODE XREF from fcn.0000633a @ 0x6354(x)
|           0000:6359     80ea08         sub dl, 8
|           ; CODE XREF from fcn.0000633a @ 0x634d(x)
|           0000:635c ~   88160dcf       mov byte [0xcf0d], dl
|           ;-- str._r6_v:
|           0000:635e    .string "\r\xcf\x896\v\xcf" ; len=6
|           0000:6364     5e             pop si
|           0000:6365     5a             pop dx
\           0000:6366     c3             ret
            ; CALL XREF from fcn.00000100 @ 0x512c(x)
/ 16: fcn.00006367 ();
|           0000:6367     e8e4fe         call fcn.0000624e
|           0000:636a     e8ce01         call fcn.0000653b
|           0000:636d     e8f502         call fcn.00006665
|           0000:6370     e86601         call fcn.000064d9
|           0000:6373     e8c0ec         call fcn.00005036
\           0000:6376     c3             ret
            ;-- str.PSQRVWR:
            ; CALL XREF from fcn.0000633a @ 0x6344(x)
/ 86: fcn.00006377 (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:6377    .string "PSQRVWR\xba" ; len=8                 ; arg1
|           0000:637f     c403           les ax, [bp + di]
|           0000:6381     b002           mov al, 2
|           0000:6383     ee             out dx, al
|           0000:6384     42             inc dx
|           0000:6385     b00a           mov al, 0xa
|           0000:6387     ee             out dx, al
|           0000:6388     5a             pop dx
|           0000:6389     bf7e63         mov di, 0x637e                ; '~c'
|           0000:638c     033e37d2       add di, word [0xd237]
|           0000:6390     b91400         mov cx, 0x14                  ; 20
|           ; CODE XREF from fcn.00006377 @ 0x63ba(x)
|           0000:6393     8a24           mov ah, byte [si]
|           0000:6395     46             inc si
|           0000:6396     81fe2305       cmp si, 0x523                 ; "PRESS SPACE"
|           0000:639a     7503           jne 0x639f
|           0000:639c     bea503         mov si, 0x3a5                 ; "* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           ; CODE XREF from fcn.00006377 @ 0x639a(x)
|           0000:639f     8a04           mov al, byte [si]
|           0000:63a1     e82900         call fcn.000063cd
|           0000:63a4     bbfdce         mov bx, 0xcefd
|           0000:63a7     b00e           mov al, 0xe                   ; 14
|           ; CODE XREF from fcn.00006377 @ 0x63b4(x)
|           0000:63a9     8a27           mov ah, byte [bx]
|           0000:63ab     43             inc bx
|           0000:63ac     268825         mov byte es:[di], ah
|           0000:63af     83c750         add di, 0x50                  ; 80
|           0000:63b2     fec8           dec al
|           0000:63b4     75f3           jne 0x63a9
|           0000:63b6     81ef5f04       sub di, 0x45f                 ; " of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:63ba     e2d7           loop 0x6393
|           0000:63bc     bac403         mov dx, 0x3c4                 ; " * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:63bf     b002           mov al, 2
|           0000:63c1     ee             out dx, al
|           0000:63c2     42             inc dx
|           0000:63c3     b00f           mov al, 0xf                   ; 15
|           0000:63c5     ee             out dx, al
|           0000:63c6    .string "_^ZY[X\xc3" ; len=7
            ;-- str.PSQRVW:
            ; CALL XREF from fcn.00006377 @ 0x63a1(x)
/ 192: fcn.000063cd (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:63cd    .string "PSQRVW\x8a" ; len=7                  ; arg1
|           0000:63d4     d8b60080       fdiv dword [bp - 0x8000]
|           0000:63d8     fc             cld
|           0000:63d9     61             popaw
|           0000:63da     7318           jae 0x63f4
|           0000:63dc     32c0           xor al, al
|           0000:63de     86c4           xchg ah, al
|           0000:63e0     2c20           sub al, 0x20                  ; 32
|           0000:63e2     8bf0           mov si, ax
|           0000:63e4     d1e6           shl si, 1
|           0000:63e6     d1e6           shl si, 1
|           0000:63e8     d1e6           shl si, 1
|           0000:63ea     29c6           sub si, ax
|           0000:63ec     d1e6           shl si, 1
|           0000:63ee     81c664c5       add si, 0xc564
|           0000:63f2     eb15           jmp 0x6409
|           ; CODE XREF from fcn.000063cd @ 0x63da(x)
|           0000:63f4     32c0           xor al, al
|           0000:63f6     86c4           xchg ah, al
|           0000:63f8     2c40           sub al, 0x40                  ; 64
|           0000:63fa     8bf0           mov si, ax
|           0000:63fc     d1e6           shl si, 1
|           0000:63fe     d1e6           shl si, 1
|           0000:6400     d1e6           shl si, 1
|           0000:6402     81c664c3       add si, 0xc364
|           0000:6406     80ce01         or dh, 1
|           ; CODE XREF from fcn.000063cd @ 0x63f2(x)
|           0000:6409     8ac3           mov al, bl
|           0000:640b     3c61           cmp al, 0x61                  ; 'a' ; 97
|           0000:640d     7316           jae 0x6425
|           0000:640f     32e4           xor ah, ah
|           0000:6411     2c20           sub al, 0x20                  ; 32
|           0000:6413     8bd8           mov bx, ax
|           0000:6415     d1e3           shl bx, 1
|           0000:6417     d1e3           shl bx, 1
|           0000:6419     d1e3           shl bx, 1
|           0000:641b     29c3           sub bx, ax
|           0000:641d     d1e3           shl bx, 1
|           0000:641f     81c364c5       add bx, 0xc564
|           0000:6423     eb13           jmp 0x6438
|           ; CODE XREF from fcn.000063cd @ 0x640d(x)
|           0000:6425     32e4           xor ah, ah
|           0000:6427     2c40           sub al, 0x40                  ; 64
|           0000:6429     8bd8           mov bx, ax
|           0000:642b     d1e3           shl bx, 1
|           0000:642d     d1e3           shl bx, 1
|           0000:642f     d1e3           shl bx, 1
|           0000:6431     81c364c3       add bx, 0xc364
|           0000:6435     80ce02         or dh, 2
|           ; CODE XREF from fcn.000063cd @ 0x6423(x)
|           0000:6438     8aca           mov cl, dl
|           0000:643a     88cd           mov ch, cl
|           0000:643c     80ed08         sub ch, 8
|           0000:643f     f6dd           neg ch
|           0000:6441     b20e           mov dl, 0xe                   ; 14
|           ; CODE XREF from fcn.000063cd @ 0x6478(x)
|           0000:6443     f6c601         test dh, 1                    ; 1
|           0000:6446     7505           jne 0x644d
|           0000:6448     8a24           mov ah, byte [si]
|           0000:644a     46             inc si
|           0000:644b     eb0a           jmp 0x6457
|           ; CODE XREF from fcn.000063cd @ 0x6446(x)
|           0000:644d     32e4           xor ah, ah
|           0000:644f     80fa09         cmp dl, 9                     ; 9
|           0000:6452     7303           jae 0x6457
|           0000:6454     8a24           mov ah, byte [si]
|           0000:6456     46             inc si
|           ; CODE XREFS from fcn.000063cd @ 0x644b(x), 0x6452(x)
|           0000:6457     d2e4           shl ah, cl
|           0000:6459     f6c602         test dh, 2                    ; 2
|           0000:645c     7505           jne 0x6463
|           0000:645e     8a07           mov al, byte [bx]
|           0000:6460     43             inc bx
|           0000:6461     eb0a           jmp 0x646d
|           ; CODE XREF from fcn.000063cd @ 0x645c(x)
|           0000:6463     32c0           xor al, al
|           ; DATA XREF from str.icon_to_be_whisked_away_to_the_next_one. @ +0xd(r)
|           0000:6465     80fa09         cmp dl, 9                     ; 9
|           0000:6468     7303           jae 0x646d
|           0000:646a     8a07           mov al, byte [bx]
|           0000:646c     43             inc bx
|           ; CODE XREFS from fcn.000063cd @ 0x6461(x), 0x6468(x)
|           0000:646d     86cd           xchg ch, cl
|           0000:646f     d2e8           shr al, cl
|           0000:6471     86cd           xchg ch, cl
|           0000:6473     0ae0           or ah, al
|           0000:6475     50             push ax
|           0000:6476     feca           dec dl
|           ;-- str.u_n:
|           0000:6478    .string "u\xc9\xbf\n\xcf\xb9\x0e" ; len=7
|           0000:647f ~   005888         add byte [bx + si - 0x78], bl
|           ; CODE XREF from fcn.000063cd @ 0x6484(x)
|           0000:6480     58             pop ax
|           0000:6481     8825           mov byte [di], ah
|           0000:6483     4f             dec di
|           0000:6484     e2fa           loop 0x6480
|           ;-- str._ZY_X:
|           0000:6486    .string "_^ZY[X\xc3" ; len=7
            ; CALL XREF from fcn.000064d9 @ 0x64eb(x)
/ 29: fcn.0000648d (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:648d ~   fe063cd2       inc byte [0xd23c]
|           ;-- str.___:
|           0000:648f    .string "<\xd2\x80><\xd2" ; len=6
|           0000:6495     037505         add si, word [di + 5]
|           0000:6498     c6063cd200     mov byte [0xd23c], 0
|           ; CODE XREF from fcn.0000648d @ 0x6496(x)
|           0000:649d     e819f1         call fcn.000055b9
|           0000:64a0     e873cd         call fcn.00003216
|           0000:64a3     e853f1         call fcn.000055f9
|           0000:64a6     e8a1f1         call fcn.0000564a
\           0000:64a9     c3             ret
            ; CALL XREF from fcn.000064d9 @ 0x64dd(x)
/ 47: fcn.000064aa (int16_t arg1);
| `- args(ax)
|           0000:64aa     50             push ax                       ; arg1
|           0000:64ab     56             push si
|           0000:64ac     be5905         mov si, 0x559
|           ; CODE XREF from fcn.000064aa @ 0x64d4(x)
|           0000:64af     833cff         cmp word [si], 0xffff
|           0000:64b2     7422           je 0x64d6
|           0000:64b4     b80100         mov ax, 1
|           0000:64b7     50             push ax
|           0000:64b8     ff34           push word [si]
|           0000:64ba     83c602         add si, 2
|           0000:64bd     ff34           push word [si]
|           0000:64bf     83c602         add si, 2
|           0000:64c2     ff34           push word [si]
|           0000:64c4     83c602         add si, 2
|           0000:64c7     ff34           push word [si]
|           0000:64c9     83c602         add si, 2
|           0000:64cc     ff34           push word [si]
|           0000:64ce     83c602         add si, 2
|           0000:64d1     e85fd4         call fcn.00003933
|           0000:64d4     ebd9           jmp 0x64af
|           ; CODE XREF from fcn.000064aa @ 0x64b2(x)
|           0000:64d6     5e             pop si
|           0000:64d7     58             pop ax
\           0000:64d8     c3             ret
            ; CALL XREF from fcn.00006367 @ 0x6370(x)
/ 45: fcn.000064d9 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:64d9     50             push ax                       ; arg1
|           0000:64da     e87ed2         call fcn.0000375b
|           0000:64dd     e8caff         call fcn.000064aa
|           0000:64e0     c7060bcfa503   mov word [0xcf0b], 0x3a5      ; [0x3a5:2]=0x202a ; "* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:64e6     c6060dcf00     mov byte [0xcf0d], 0
|           ; CODE XREFS from fcn.000064d9 @ 0x64f8(x), 0x6502(x)
|           0000:64eb     e89fff         call fcn.0000648d
|           0000:64ee     e849fe         call fcn.0000633a
|           0000:64f1     e84700         call fcn.0000653b
|           0000:64f4     b401           mov ah, 1
|           0000:64f6     cd16           int 0x16
|           0000:64f8     74f1           je 0x64eb
|           0000:64fa     b400           mov ah, 0
|           0000:64fc     cd16           int 0x16
|           0000:64fe     3c20           cmp al, 0x20                  ; 32
|           0000:6500     7402           je 0x6504
|           0000:6502     ebe7           jmp 0x64eb
|           ; CODE XREF from fcn.000064d9 @ 0x6500(x)
|           0000:6504     58             pop ax
\           0000:6505     c3             ret
            0000:6506     3100           xor word [bx + si], ax
            0000:6508 ~   e27e           loop 0x6588
            ;-- str.__P:
            0000:6509    .string "~;'P\xb8" ; len=5
|           0000:650e     1000           adc byte [bx + si], al
|           0000:6510     cd10           int 0x10
|           0000:6512     50             push ax
|           0000:6513     b800a0         mov ax, 0xa000
|           0000:6516     8ec0           mov es, ax
|           0000:6518     58             pop ax
|           0000:6519     58             pop ax
\           0000:651a     c3             ret
            ; CALL XREF from fcn.00003475 @ 0x325a(x)
            ; CALL XREFS from int.0000352f @ 0x3273(x), 0x3282(x)
            ; CALL XREF from fcn.00003cdc @ 0x3ca1(x)
/ 32: fcn.0000651b (int16_t arg1, int16_t arg2);
| `- args(ax, bx)
|           0000:651b     50             push ax                       ; arg1
|           0000:651c     53             push bx                       ; arg2
|           0000:651d     cd11           int 0x11
|           0000:651f     2430           and al, 0x30                  ; 48 ; arg1
|           0000:6521     bb0300         mov bx, 3
|           ;-- str.__t_n:
|           0000:6524    .string "< t\n\xbb" ; len=5
|           0000:6529     0100           add word [bx + si], ax
|           0000:652b     3c10           cmp al, 0x10                  ; 16
|           0000:652d     7403           je 0x6532
|           0000:652f     bb0700         mov bx, 7
|           ; CODE XREFS from fcn.0000651b @ 0x6526(x), 0x652d(x)
|           0000:6532     32e4           xor ah, ah
|           0000:6534     8ac3           mov al, bl
|           0000:6536     cd10           int 0x10
|           0000:6538     5b             pop bx
|           0000:6539     58             pop ax
\           0000:653a     c3             ret
            ; XREFS(27)
/ 26: fcn.0000653b (int16_t arg1);
| `- args(ax)
|           0000:653b     50             push ax                       ; arg1
|           0000:653c     a137d2         mov ax, word [0xd237]         ; [0xd237:2]=0xffff
|           0000:653f     e8a700         call fcn.000065e9
|           0000:6542     2d006e         sub ax, 0x6e00
|           0000:6545 ~   f7d8           neg ax
|           ;-- str.7.9:
|           0000:6546    .string "\xd8\xa37\xd2\x80.9\xd2" ; len=8
|           0000:654e     01f6           add si, si
|           0000:6550     1e             push ds
|           0000:6551     39d2           cmp dx, dx
|           0000:6553     58             pop ax
\           0000:6554     c3             ret
            ; CALL XREF from fcn.000037db @ 0x3813(x)
            ; CALL XREF from fcn.000038b7 @ 0x38d9(x)
/ 40: fcn.00006555 (int16_t arg1, int16_t arg2);
| `- args(ax, dx)
|           0000:6555     50             push ax                       ; arg1
|           0000:6556     52             push dx                       ; arg2
|           0000:6557     ba006e         mov dx, 0x6e00
|           ; CODE XREF from fcn.00006555 @ 0x656f(x)
|           0000:655a     8bc2           mov ax, dx                    ; int16_t arg1
|           0000:655c     e8aa00         call fcn.00006609
|           0000:655f     b401           mov ah, 1
|           0000:6561     cd16           int 0x16
|           0000:6563     7406           je 0x656b
|           0000:6565     b400           mov ah, 0
|           0000:6567     cd16           int 0x16
|           ; DATA XREF from str.Bad_command_line_switch.__Available_switches_are:_r_n_r_n_____Q___run_quietly__ie_disable_sound_effects_r_n_____V___skip_video_mode_auto_detect_r_n_____K_llrraa___use_alternative_control_keys_r_n_r_nSee_Paranoid.DOC_for_details._r_n_________________________________The_Bit_Bucket_Brothers_proudly_present_Paranoid___...____Chief_executive_in_charge_of_programming___Ben_North___...___Chief_executive_in_charge_of_graphics___Tom_North___...___Program_code_production___Ben_North___...___Graphics_design___Tom_North___...___Additional_programming___Ben_North___...___Additional_graphics___Tom_North_________PRESS_SPACE @ +0x140(r)
|           0000:6569     eb09           jmp 0x6574
|           ; CODE XREF from fcn.00006555 @ 0x6563(x)
|           0000:656b     81ea9001       sub dx, 0x190                 ; " file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:656f     79e9           jns 0x655a
|           0000:6571     f8             clc
|           ; DATA XREFS from str.Corrupt_or_missing_file_:_r_n_r_n_______r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_creating_high_score_table_file._r_n_r_nCheck_for_full_disk_or_write_protect._r_n_r_nReturning_to_DOS_..._r_n_r_n_Fatal_error_writing_high_score_table_file._r_n_r_nCheck_for_write_protect_on_disk._r_n_r_nReturning_to_DOS_..._r_n_r_n__r_n_r_nNot_enough_video_memory_installed___Paranoid_requires_256Kb._r_n_r_n__r_n_r_nSorry__Paranoid_requires_colour_EGA___VGA_to_run._r_n_r_n_G @ +0x14a(r), +0x172(r)
|           ; DATA XREF from str.This_handy_icon_increases_the_size_of_your_bat_by_a @ +0x10(r)
|           ; DATA XREF from str.mighty_third___very_convenient_for_those_hard_to_reach @ +0x30(r)
|           0000:6572     eb06           jmp 0x657a
|           ; DATA XREF from str.brick__and_fourth__a_brilliantly_animated_icon_might_float @ +0x23(r)
|           ; CODE XREF from fcn.00006555 @ 0x6569(x)
|           0000:6574     33c0           xor ax, ax                    ; int16_t arg1
|           0000:6576     e89000         call fcn.00006609
|           0000:6579     f9             stc
|           ; CODE XREF from fcn.00006555 @ 0x6572(x)
|           0000:657a     5a             pop dx
|           0000:657b     58             pop ax
\           0000:657c     c3             ret
            0000:657d     50             push ax
            0000:657e     33c0           xor ax, ax
            ; CODE XREF from str.7.9 @ +0x43(x)
            0000:6580     e88600         call fcn.00006609
            0000:6583     059001         add ax, 0x190                 ; " file.\r\n\r\nCheck for full disk or write protect.\r\n\r\nReturning to DOS ...\r\n\r\n$Fatal error writing high score table file.\r\n\r\nCheck for write protect on disk.\r\n\r\nReturning to DOS ...\r\n\r\n$\r\n\r\nNot enough video memory installed - Paranoid requires 256Kb.\r\n\r\n$\r\n\r\nSorry, Paranoid requires colour EGA / VGA to run.\r\n\r\n$G\x02\x8c\x02Bad command-line switch.  Available switches are:\r\n\r\n    /Q - run quietly, ie disable sound effects\r\n    /V - skip video mode auto-detect\r\n    /K llrraa - use alternative control keys\r\n\r\nSee Paranoid.DOC for details.\r\n$* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
            0000:6586     3d006e         cmp ax, 0x6e00
            0000:6589     76f5           jbe 0x6580
            0000:658b     58             pop ax
            0000:658c     c3             ret
            ;-- str.PSQR:
            ; CALL XREF from fcn.000037db @ 0x3818(x)
/ 92: fcn.0000658d (int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
| `- args(ax, dx, bx, cx)
|           0000:658d    .string "PSQR\xbb" ; len=5                    ; arg1
|           0000:6592     90             nop
|           0000:6593     0133           add word [bp + di], si
|           0000:6595 ~   d2b90700       sar byte [bx + di + 7], cl
|           ; CODE XREF from fcn.0000658d @ 0x65b5(x)
|           0000:6596     b90700         mov cx, 7
|           ; CODE XREF from fcn.0000658d @ 0x65ac(x)
|           0000:6599     03d3           add dx, bx
|           0000:659b     8bc2           mov ax, dx
|           0000:659d     e86900         call fcn.00006609
|           0000:65a0     b401           mov ah, 1
|           0000:65a2     cd16           int 0x16
|           0000:65a4     7406           je 0x65ac
|           0000:65a6     b400           mov ah, 0
|           0000:65a8     cd16           int 0x16
|           0000:65aa     eb33           jmp 0x65df
|           ; CODE XREF from fcn.0000658d @ 0x65a4(x)
|           0000:65ac     e2eb           loop 0x6599
|           0000:65ae     83eb50         sub bx, 0x50                  ; 80
|           0000:65b1     81fb70fe       cmp bx, 0xfe70
|           0000:65b5     7ddf           jge 0x6596
|           0000:65b7     bbf000         mov bx, 0xf0
|           0000:65ba     33d2           xor dx, dx
|           ; CODE XREF from fcn.0000658d @ 0x65db(x)
|           0000:65bc     b90700         mov cx, 7
|           ; CODE XREF from fcn.0000658d @ 0x65d2(x)
|           0000:65bf     03d3           add dx, bx
|           0000:65c1     8bc2           mov ax, dx
|           0000:65c3     e84300         call fcn.00006609
|           0000:65c6     b401           mov ah, 1
|           0000:65c8     cd16           int 0x16
|           0000:65ca     7406           je 0x65d2
|           0000:65cc     b400           mov ah, 0
|           0000:65ce     cd16           int 0x16
|           0000:65d0     eb0d           jmp 0x65df
|           ; CODE XREF from fcn.0000658d @ 0x65ca(x)
|           0000:65d2     e2eb           loop 0x65bf
|           0000:65d4     83eb50         sub bx, 0x50                  ; 80
|           0000:65d7     81fb10ff       cmp bx, 0xff10
|           0000:65db     7ddf           jge 0x65bc
|           0000:65dd     eb05           jmp str.ZY_X
|           ; CODE XREFS from fcn.0000658d @ 0x65aa(x), 0x65d0(x)
|           0000:65df     33c0           xor ax, ax
|           0000:65e1     e82500         call fcn.00006609
|           ;-- str.ZY_X:
|           ; CODE XREF from fcn.0000658d @ 0x65dd(x)
|           0000:65e4    .string "ZY[X\xc3" ; len=5
            ; CALL XREF from fcn.000037db @ 0x37f9(x)
            ; CALL XREF from fcn.0000653b @ 0x653f(x)
/ 32: fcn.000065e9 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:65e9     50             push ax                       ; arg1
|           0000:65ea     53             push bx                       ; arg3
|           0000:65eb     52             push dx                       ; arg2
|           0000:65ec     b00c           mov al, 0xc                   ; 12
|           0000:65ee     bad403         mov dx, 0x3d4                 ; "it Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:65f1     fa             cli
|           0000:65f2     ee             out dx, al
|           0000:65f3     42             inc dx
|           0000:65f4     86c4           xchg ah, al                   ; arg1
|           0000:65f6     ee             out dx, al
|           0000:65f7     fb             sti
|           ; CODE XREF from fcn.000065e9 @ 0x65fe(x)
|           0000:65f8     bada03         mov dx, 0x3da                 ; "ket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:65fb     ec             in al, dx
|           0000:65fc     a808           test al, 8                    ; 8
|           0000:65fe     75f8           jne 0x65f8
|           ; CODE XREF from fcn.000065e9 @ 0x6603(x)
|           0000:6600     ec             in al, dx
|           0000:6601     a808           test al, 8                    ; 8
|           0000:6603     74fb           je 0x6600
|           0000:6605     5a             pop dx
|           0000:6606     5b             pop bx
|           0000:6607     58             pop ax
\           0000:6608     c3             ret
            ; XREFS: CALL 0x0000655c  CALL 0x00006576  CALL 0x00006580  CALL 0x0000659d  CALL 0x000065c3  CALL 0x000065e1  
/ 46: fcn.00006609 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, bx)
|           0000:6609     50             push ax                       ; arg1
|           0000:660a     53             push bx                       ; arg3
|           0000:660b     52             push dx                       ; arg2
|           0000:660c     8ad8           mov bl, al                    ; arg1
|           0000:660e     b00c           mov al, 0xc                   ; 12
|           0000:6610     bad403         mov dx, 0x3d4                 ; "it Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6613     fa             cli
|           0000:6614     ee             out dx, al
|           0000:6615     42             inc dx
|           0000:6616     86c4           xchg ah, al                   ; arg1
|           0000:6618     ee             out dx, al
|           0000:6619     fb             sti
|           0000:661a     8ae3           mov ah, bl
|           0000:661c     b00d           mov al, 0xd                   ; 13
|           0000:661e     4a             dec dx
|           0000:661f     fa             cli
|           ; DATA XREF from str.second__the_brick_flashes_white_and_disappears__third__your @ +0xe(r)
|           ; DATA XREF from str.You_need_to_hit_these_twice_each___score_15_for_the @ +0x2a(r)
|           0000:6620     ee             out dx, al
|           0000:6621     42             inc dx
|           0000:6622     86c4           xchg ah, al
|           0000:6624     ee             out dx, al
|           0000:6625     fb             sti
|           ; CODE XREF from fcn.00006609 @ 0x662c(x)
|           0000:6626     bada03         mov dx, 0x3da                 ; "ket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6629     ec             in al, dx
|           0000:662a     a808           test al, 8                    ; 8
|           0000:662c     75f8           jne 0x6626
|           ; CODE XREF from fcn.00006609 @ 0x6631(x)
|           0000:662e     ec             in al, dx
|           0000:662f     a808           test al, 8                    ; 8
|           0000:6631     74fb           je 0x662e
|           0000:6633     5a             pop dx
|           0000:6634     5b             pop bx
|           0000:6635     58             pop ax
\           0000:6636     c3             ret
            ; CALL XREF from fcn.000037db @ 0x3826(x)
/ 46: fcn.00006637 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:6637    .string "PQRVW\xba" ; len=6                   ; arg1
|           0000:663d     ce             into
|           0000:663e     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:6642     42             inc dx
|           0000:6643     b011           mov al, 0x11                  ; 17
|           0000:6645     ee             out dx, al
|           0000:6646     1e             push ds
|           0000:6647     06             push es
|           0000:6648     1f             pop ds
|           0000:6649     bf006e         mov di, 0x6e00
|           0000:664c     be0000         mov si, 0
|           0000:664f     b9606d         mov cx, 0x6d60                ; '`m'
|           0000:6652     f3a4           rep movsb byte es:[di], byte [si]
|           0000:6654     1f             pop ds
|           0000:6655     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:6658     b005           mov al, 5
|           0000:665a     ee             out dx, al
|           0000:665b     42             inc dx
|           0000:665c     b010           mov al, 0x10                  ; 16
|           0000:665e     ee             out dx, al
|           0000:665f    .string "_^ZYX\xc3" ; len=6
            ;-- str.PQRVW:
            ; XREFS: CALL 0x00003b7d  CALL 0x000048a4  CALL 0x000048b5  CALL 0x00004bad  CALL 0x00004d44  CALL 0x00004daf  
            ; XREFS: CALL 0x0000636d  
/ 55: fcn.00006665 (int16_t arg1, int16_t arg2, int16_t arg3);
| `- args(ax, dx, cx)
|           0000:6665    .string "PQRVW\xba" ; len=6                   ; arg1
|           0000:666b     ce             into
|           0000:666c     03b005ee       add si, word [bx + si - 0x11fb]
|           0000:6670     42             inc dx
|           0000:6671     b011           mov al, 0x11                  ; 17
|           0000:6673     ee             out dx, al
|           0000:6674     bf006e         mov di, 0x6e00
|           0000:6677     be0000         mov si, 0
|           0000:667a     f60639d2ff     test byte [0xd239], 0xff
|           0000:667f     7502           jne 0x6683
|           0000:6681     87fe           xchg si, di
|           ; CODE XREF from fcn.00006665 @ 0x667f(x)
|           0000:6683     1e             push ds
|           0000:6684     06             push es
|           0000:6685     1f             pop ds
|           0000:6686     b9606d         mov cx, 0x6d60                ; '`m'
|           0000:6689     f3a4           rep movsb byte es:[di], byte [si]
|           0000:668b     1f             pop ds
|           0000:668c     bace03         mov dx, 0x3ce                 ; " The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         PRESS SPACE"
|           0000:668f     b005           mov al, 5
|           0000:6691     ee             out dx, al
|           0000:6692     42             inc dx
|           0000:6693     b010           mov al, 0x10                  ; 16
|           0000:6695     ee             out dx, al
|           ;-- str._ZYX:
|           0000:6696    .string "_^ZYX\xc3" ; len=6
            ; CALL XREFS from fcn.000037db @ 0x37e0(x), 0x37e9(x)
            ; CALL XREF from fcn.000038b7 @ 0x38c4(x)
            ; CALL XREF from fcn.00003fde @ 0x3feb(x)
            ; CALL XREF from fcn.00004a3a @ 0x4a46(x)
/ 17: fcn.0000669c (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:669c     50             push ax                       ; arg1
|           0000:669d     51             push cx                       ; arg2
|           0000:669e     57             push di
|           0000:669f     bf0000         mov di, 0
|           0000:66a2     b9b036         mov cx, 0x36b0
|           0000:66a5     33c0           xor ax, ax
|           0000:66a7     f3ab           rep stosw word es:[di], ax
|           0000:66a9     5f             pop di
|           0000:66aa     59             pop cx
|           0000:66ab     58             pop ax
\           0000:66ac     c3             ret
            ; CALL XREFS from fcn.000037db @ 0x37e3(x), 0x37ec(x)
            ; CALL XREF from fcn.00003fde @ 0x3ff0(x)
            ; CALL XREF from fcn.00004a3a @ 0x4a41(x)
/ 17: fcn.000066ad (int16_t arg1, int16_t arg2);
| `- args(ax, cx)
|           0000:66ad     50             push ax                       ; arg1
|           0000:66ae     51             push cx                       ; arg2
|           0000:66af     57             push di
|           0000:66b0     bf006e         mov di, 0x6e00
|           0000:66b3     b9b036         mov cx, 0x36b0
|           0000:66b6     33c0           xor ax, ax
|           0000:66b8     f3ab           rep stosw word es:[di], ax
|           0000:66ba     5f             pop di
|           0000:66bb     59             pop cx
|           0000:66bc     58             pop ax
\           0000:66bd     c3             ret
