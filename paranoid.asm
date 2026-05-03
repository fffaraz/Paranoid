                             //
                             // ram
                             // ram:0000:0100-ram:0000:66bd
                             //
             assume DF = 0x0  (Default)
       0000:0100 e9 0e 50        JMP        FUN_0000_5111                                    undefined FUN_0000_5111()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
       0000:0103 cd 10           INT        0x10
       0000:0105 2a 00           SUB        AL,byte ptr [BX + SI]
       0000:0107 36 00 39        ADD        byte ptr SS:[BX + DI],BH
       0000:010a 00 01           ADD        byte ptr [BX + DI],AL
       0000:010c 00 44 00        ADD        byte ptr [SI + 0x0],AL
       0000:010f 19 00           SBB        word ptr [BX + SI],AX
       0000:0111 ff              ??         FFh
       0000:0112 ff 7f 3a        INC        word ptr [BX + 0x3a]
       0000:0115 c2 3c 95        RET        0x953c
       0000:0118 3c c8           CMP        AL,0xc8
       0000:011a 3c b4           CMP        AL,0xb4
       0000:011c 4b              DEC        BX
       0000:011d 95              XCHG       AX,BP
       0000:011e 3c b2           CMP        AL,0xb2
       0000:0120 39 71 54        CMP        word ptr [BX + DI + 0x54],SI
       0000:0123 61              POPA
       0000:0124 76 5a           JBE        LAB_0000_017e+2
       0000:0126 61              POPA
       0000:0127 6b 60 61 ff     IMUL       SP,word ptr [BX + SI + 0x61],-0x1
       0000:012b 43              INC        BX
       0000:012c 6f              OUTSW      DX,SI
       0000:012d 72 72           JC         LAB_0000_01a0+1
       0000:012f 75 70           JNZ        LAB_0000_01a0+1
       0000:0131 74 20           JZ         LAB_0000_0151+2
       0000:0133 6f              OUTSW      DX,SI
       0000:0134 72 20           JC         LAB_0000_0156
       0000:0136 6d              INSW       ES:DI,DX
       0000:0137 69 73 73        IMUL       SI,word ptr [BP + DI + 0x73],0x6e69
                 69 6e
       0000:013c 67 20 66 69     AND        byte ptr [ESI + 0x69],AH
       0000:0140 6c              INSB       ES:DI,DX
       0000:0141 65 20 3a        AND        byte ptr GS:[BP + SI],BH
       0000:0144 0d 0a 0d        OR         AX,0xd0a
       0000:0147 0a 20           OR         AH,byte ptr [BX + SI]
       0000:0149 20 20           AND        byte ptr [BX + SI],AH
       0000:014b 20 20           AND        byte ptr [BX + SI],AH
       0000:014d 24 0d           AND        AL,0xd
       0000:014f 0a 0d           OR         CL,byte ptr [DI]
                             LAB_0000_0151+2                                 XREF[0,1]:   0000:0131(j)  
       0000:0151 0a 52 65        OR         DL,byte ptr [BP + SI + 0x65]
       0000:0154 74 75           JZ         LAB_0000_01c9+2
                             LAB_0000_0156                                   XREF[1]:     0000:0134(j)  
       0000:0156 72 6e           JC         LAB_0000_01c5+1
       0000:0158 69 6e 67        IMUL       BP,word ptr [BP + 0x67],0x7420
                 20 74
       0000:015d 6f              OUTSW      DX,SI
       0000:015e 20 44 4f        AND        byte ptr [SI + 0x4f],AL
       0000:0161 53              PUSH       BX
       0000:0162 20 2e 2e 2e     AND        byte ptr [0x2e2e],CH
       0000:0166 0d 0a 0d        OR         AX,0xd0a
       0000:0169 0a 24           OR         AH,byte ptr [SI]
       0000:016b 46              INC        SI
       0000:016c 61              POPA
       0000:016d 74 61           JZ         LAB_0000_01cf+1
       0000:016f 6c              INSB       ES:DI,DX
       0000:0170 20 65 72        AND        byte ptr [DI + 0x72],AH
       0000:0173 72 6f           JC         LAB_0000_01e4
       0000:0175 72 20           JC         LAB_0000_0194+3
       0000:0177 63 72 65        ARPL       word ptr [BP + SI + 0x65],SI
       0000:017a 61              POPA
       0000:017b 74 69           JZ         LAB_0000_01e6
       0000:017d 6e              OUTSB      DX,SI
                             LAB_0000_017e+2                                 XREF[0,1]:   0000:0124(j)  
       0000:017e 67 20 68 69     AND        byte ptr [EAX + 0x69],CH
       0000:0182 67 68 20 73     PUSH       0x7320
       0000:0186 63 6f 72        ARPL       word ptr [BX + 0x72],BP
       0000:0189 65 20 74 61     AND        byte ptr GS:[SI + 0x61],DH
       0000:018d 62 6c 65        BOUND      BP,word ptr [SI + 0x65]
       0000:0190 20 66 69        AND        byte ptr [BP + 0x69],AH
       0000:0193 6c              INSB       ES:DI,DX
                             LAB_0000_0194+3                                 XREF[0,1]:   0000:0175(j)  
       0000:0194 65 2e 0d        OR         AX,0xd0a
                 0a 0d
       0000:0199 0a 43 68        OR         AL,byte ptr [BP + DI + 0x68]
       0000:019c 65 63 6b 20     ARPL       word ptr GS:[BP + DI + 0x20],BP
                             LAB_0000_01a0+1                                 XREF[0,2]:   0000:012d(j), 0000:012f(j)  
       0000:01a0 66 6f           OUTSD      DX,SI
       0000:01a2 72 20           JC         LAB_0000_01c2+2
       0000:01a4 66 75 6c        JNZ        LAB_0000_0212+1
       0000:01a7 6c              INSB       ES:DI,DX
       0000:01a8 20 64 69        AND        byte ptr [SI + 0x69],AH
       0000:01ab 73 6b           JNC        LAB_0000_0216+2
       0000:01ad 20 6f 72        AND        byte ptr [BX + 0x72],CH
       0000:01b0 20 77 72        AND        byte ptr [BX + 0x72],DH
       0000:01b3 69 74 65        IMUL       SI,word ptr [SI + 0x65],0x7020
                 20 70
       0000:01b8 72 6f           JC         LAB_0000_0229
       0000:01ba 74 65           JZ         LAB_0000_021f+2
       0000:01bc 63 74 2e        ARPL       word ptr [SI + 0x2e],SI
       0000:01bf 0d 0a 0d        OR         AX,0xd0a
                             LAB_0000_01c2+2                                 XREF[0,1]:   0000:01a2(j)  
       0000:01c2 0a 52 65        OR         DL,byte ptr [BP + SI + 0x65]
                             LAB_0000_01c5+1                                 XREF[0,1]:   0000:0156(j)  
       0000:01c5 74 75           JZ         LAB_0000_023a+2
       0000:01c7 72 6e           JC         LAB_0000_0234+3
                             LAB_0000_01c9+2                                 XREF[0,1]:   0000:0154(j)  
       0000:01c9 69 6e 67        IMUL       BP,word ptr [BP + 0x67],0x7420
                 20 74
       0000:01ce 6f              OUTSW      DX,SI
                             LAB_0000_01cf+1                                 XREF[0,1]:   0000:016d(j)  
       0000:01cf 20 44 4f        AND        byte ptr [SI + 0x4f],AL
       0000:01d2 53              PUSH       BX
       0000:01d3 20 2e 2e 2e     AND        byte ptr [0x2e2e],CH
       0000:01d7 0d 0a 0d        OR         AX,0xd0a
       0000:01da 0a 24           OR         AH,byte ptr [SI]
       0000:01dc 46              INC        SI
       0000:01dd 61              POPA
       0000:01de 74 61           JZ         LAB_0000_023e+3
       0000:01e0 6c              INSB       ES:DI,DX
       0000:01e1 20 65 72        AND        byte ptr [DI + 0x72],AH
                             LAB_0000_01e4                                   XREF[1]:     0000:0173(j)  
       0000:01e4 72 6f           JC         LAB_0000_0254+1
                             LAB_0000_01e6                                   XREF[1]:     0000:017b(j)  
       0000:01e6 72 20           JC         LAB_0000_0204+4
       0000:01e8 77 72           JA         LAB_0000_025c
       0000:01ea 69 74 69        IMUL       SI,word ptr [SI + 0x69],0x676e
                 6e 67
       0000:01ef 20 68 69        AND        byte ptr [BX + SI + 0x69],CH
       0000:01f2 67 68 20 73     PUSH       0x7320
       0000:01f6 63 6f 72        ARPL       word ptr [BX + 0x72],BP
       0000:01f9 65 20 74 61     AND        byte ptr GS:[SI + 0x61],DH
       0000:01fd 62 6c 65        BOUND      BP,word ptr [SI + 0x65]
       0000:0200 20 66 69        AND        byte ptr [BP + 0x69],AH
       0000:0203 6c              INSB       ES:DI,DX
                             LAB_0000_0204+4                                 XREF[0,1]:   0000:01e6(j)  
       0000:0204 65 2e 0d        OR         AX,0xd0a
                 0a 0d
       0000:0209 0a 43 68        OR         AL,byte ptr [BP + DI + 0x68]
       0000:020c 65 63 6b 20     ARPL       word ptr GS:[BP + DI + 0x20],BP
       0000:0210 66 6f           OUTSD      DX,SI
                             LAB_0000_0212+1                                 XREF[0,1]:   0000:01a4(j)  
       0000:0212 72 20           JC         LAB_0000_0234
       0000:0214 77 72           JA         LAB_0000_0285+3
                             LAB_0000_0216+2                                 XREF[0,1]:   0000:01ab(j)  
       0000:0216 69 74 65        IMUL       SI,word ptr [SI + 0x65],0x7020
                 20 70
       0000:021b 72 6f           JC         LAB_0000_028c
       0000:021d 74 65           JZ         LAB_0000_0283+1
                             LAB_0000_021f+2                                 XREF[0,1]:   0000:01ba(j)  
       0000:021f 63 74 20        ARPL       word ptr [SI + 0x20],SI
       0000:0222 6f              OUTSW      DX,SI
       0000:0223 6e              OUTSB      DX,SI
       0000:0224 20 64 69        AND        byte ptr [SI + 0x69],AH
       0000:0227 73 6b           JNC        LAB_0000_0294
                             LAB_0000_0229                                   XREF[1]:     0000:01b8(j)  
       0000:0229 2e 0d 0a 0d     OR         AX,0xd0a
       0000:022d 0a 52 65        OR         DL,byte ptr [BP + SI + 0x65]
       0000:0230 74 75           JZ         LAB_0000_02a4+3
       0000:0232 72 6e           JC         LAB_0000_02a2
                             LAB_0000_0234+3                                 XREF[1,1]:   0000:0212(j), 0000:01c7(j)  
                             LAB_0000_0234
       0000:0234 69 6e 67        IMUL       BP,word ptr [BP + 0x67],0x7420
                 20 74
       0000:0239 6f              OUTSW      DX,SI
                             LAB_0000_023a+2                                 XREF[0,1]:   0000:01c5(j)  
       0000:023a 20 44 4f        AND        byte ptr [SI + 0x4f],AL
       0000:023d 53              PUSH       BX
                             LAB_0000_023e+3                                 XREF[0,1]:   0000:01de(j)  
       0000:023e 20 2e 2e 2e     AND        byte ptr [0x2e2e],CH
       0000:0242 0d 0a 0d        OR         AX,0xd0a
       0000:0245 0a 24           OR         AH,byte ptr [SI]
       0000:0247 0d 0a 0d        OR         AX,0xd0a
       0000:024a 0a 4e 6f        OR         CL,byte ptr [BP + 0x6f]
       0000:024d 74 20           JZ         LAB_0000_026e+1
       0000:024f 65 6e           OUTSB      DX,GS:SI
       0000:0251 6f              OUTSW      DX,SI
       0000:0252 75 67           JNZ        LAB_0000_02b9+2
                             LAB_0000_0254+1                                 XREF[0,1]:   0000:01e4(j)  
       0000:0254 68 20 76        PUSH       0x7620
       0000:0257 69 64 65        IMUL       SP,word ptr [SI + 0x65],0x206f
                 6f 20
                             LAB_0000_025c                                   XREF[1]:     0000:01e8(j)  
       0000:025c 6d              INSW       ES:DI,DX
       0000:025d 65 6d           INSW       ES:DI,DX
       0000:025f 6f              OUTSW      DX,SI
       0000:0260 72 79           JC         s_switch._Available_switches_are:_/_0000_02ca+17
       0000:0262 20 69 6e        AND        byte ptr [BX + DI + 0x6e],CH
       0000:0265 73 74           JNC        s_switch._Available_switches_are:_/_0000_02ca+17
       0000:0267 61              POPA
       0000:0268 6c              INSB       ES:DI,DX
       0000:0269 6c              INSB       ES:DI,DX
       0000:026a 65 64 20 2d     AND        byte ptr FS:[DI],CH
                             LAB_0000_026e+1                                 XREF[0,1]:   0000:024d(j)  
       0000:026e 20 50 61        AND        byte ptr [BX + SI + 0x61],DL
       0000:0271 72 61           JC         s_d-line_switch._Available_switche_0000_02ca+10
       0000:0273 6e              OUTSB      DX,SI
       0000:0274 6f              OUTSW      DX,SI
       0000:0275 69 64 20        IMUL       SP,word ptr [SI + 0x20],0x6572
                 72 65
       0000:027a 71 75           JNO        s_tches_are:_/Q_-_run_quietly,_ie_d_0000_02ca+39
       0000:027c 69 72 65        IMUL       SI,word ptr [BP + SI + 0x65],0x2073
                 73 20
       0000:0281 32 35           XOR        DH,byte ptr [DI]
                             LAB_0000_0283+1                                 XREF[0,1]:   0000:021d(j)  
       0000:0283 36 4b           DEC        BX
                             LAB_0000_0285+3                                 XREF[0,1]:   0000:0214(j)  
       0000:0285 62 2e 0d 0a     BOUND      BP,word ptr [0xa0d]
       0000:0289 0d 0a 24        OR         AX,0x240a
                             LAB_0000_028c                                   XREF[1]:     0000:021b(j)  
       0000:028c 0d 0a 0d        OR         AX,0xd0a
       0000:028f 0a 53 6f        OR         DL,byte ptr [BP + DI + 0x6f]
       0000:0292 72 72           JC         s_-_run_quietly,_ie_disable_sound_e_0000_02ca+60
                             LAB_0000_0294                                   XREF[1]:     0000:0227(j)  
       0000:0294 79 2c           JNS        LAB_0000_02c0+2
       0000:0296 20 50 61        AND        byte ptr [BX + SI + 0x61],DL
       0000:0299 72 61           JC         s_/Q_-_run_quietly,_ie_disable_sou_0000_02ca+50
       0000:029b 6e              OUTSB      DX,SI
       0000:029c 6f              OUTSW      DX,SI
       0000:029d 69 64 20        IMUL       SP,word ptr [SI + 0x20],0x6572
                 72 65
                             LAB_0000_02a2                                   XREF[1]:     0000:0232(j)  
       0000:02a2 71 75           JNO        s_isable_sound_effects_/V_-_skip_v_0000_02ca+79
                             LAB_0000_02a4+3                                 XREF[0,1]:   0000:0230(j)  
       0000:02a4 69 72 65        IMUL       SI,word ptr [BP + SI + 0x65],0x2073
                 73 20
       0000:02a9 63 6f 6c        ARPL       word ptr [BX + 0x6c],BP
       0000:02ac 6f              OUTSW      DX,SI
       0000:02ad 75 72           JNZ        s_ound_effects_/V_-_skip_video_mod_0000_02ca+87
       0000:02af 20 45 47        AND        byte ptr [DI + 0x47],AL
       0000:02b2 41              INC        CX
       0000:02b3 20 2f           AND        byte ptr [BX],CH
       0000:02b5 20 56 47        AND        byte ptr [BP + 0x47],DL
       0000:02b8 41              INC        CX
                             LAB_0000_02b9+2                                 XREF[0,1]:   0000:0252(j)  
       0000:02b9 20 74 6f        AND        byte ptr [SI + 0x6f],DH
       0000:02bc 20 72 75        AND        byte ptr [BP + SI + 0x75],DH
       0000:02bf 6e              OUTSB      DX,SI
                             LAB_0000_02c0+2                                 XREF[0,1]:   0000:0294(j)  
       0000:02c0 2e 0d 0a 0d     OR         AX,0xd0a
       0000:02c4 0a 24           OR         AH,byte ptr [SI]
       0000:02c6 47              INC        DI
       0000:02c7 02              ??         02h
       0000:02c8 8c 02           MOV        word ptr [BP + SI],ES
                             s_d-line_switch._Available_switche_0000_02d4    XREF[0,11]:  0000:0260(j), 0000:0265(j), 
                             s_switch._Available_switches_are:_/_0000_02db                0000:0271(j), 0000:027a(j), 
                             s_tches_are:_/Q_-_run_quietly,_ie_d_0000_02f1                0000:0292(j), 0000:0299(j), 
                             s_/Q_-_run_quietly,_ie_disable_sou_0000_02fc                 0000:02a2(j), 0000:02ad(j), 
                             s_-_run_quietly,_ie_disable_sound_e_0000_0306                FUN_0000_50e8:0000:50fe(RW), 
                             s_isable_sound_effects_/V_-_skip_v_0000_0319                 FUN_0000_50e8:0000:5103(RW), 
                             s_ound_effects_/V_-_skip_video_mod_0000_0321                 FUN_0000_50e8:0000:5108(RW)  
                             s_e_in_charge_of_programming_-_Ben_0000_0417
                             s_in_charge_of_programming_-_Ben_N_0000_0418
                             s_n_-_Ben_North_..._Graphics_desig_0000_0496
       0000:02ca 42 61 64        ds         "Bad command-line switch.  Available switches 
                 20 63 6f 
                 6d 6d 61 
       0000:052f 20 20 20        ds         "   TO START"
                 54 4f 20 
                 53 54 41 
       0000:053b 20 56 45        ds         " VERSION 1.8"
                 52 53 49 
                 4f 4e 20 
       0000:0548 b6 00           MOV        DH,0x0
       0000:054a 5a              POP        DX
       0000:054b 00 c9           ADD        CL,CL
       0000:054d 01 c5           ADD        BP,AX
       0000:054f 00 0b           ADD        byte ptr [BP + DI],CL
       0000:0551 04 0a           ADD        AL,0xa
       0000:0553 04 08           ADD        AL,0x8
       0000:0555 06              PUSH       ES
       0000:0556 0c 0d           OR         AL,0xd
       0000:0558 ff 00           INC        word ptr [BX + SI]
       0000:055a 00 02           ADD        byte ptr [BP + SI],AL
       0000:055c 00 03           ADD        byte ptr [BP + DI],AL
       0000:055e 00 24           ADD        byte ptr [SI],AH
       0000:0560 00 2c           ADD        byte ptr [SI],CH
       0000:0562 02 01           ADD        AL,byte ptr [BX + DI]
       0000:0564 00 02           ADD        byte ptr [BP + SI],AL
       0000:0566 00 03           ADD        byte ptr [BP + DI],AL
       0000:0568 00 24           ADD        byte ptr [SI],AH
       0000:056a 00 3c           ADD        byte ptr [SI],BH
       0000:056c 01 00           ADD        word ptr [BX + SI],AX
       0000:056e 00 02           ADD        byte ptr [BP + SI],AL
       0000:0570 00 03           ADD        byte ptr [BP + DI],AL
       0000:0572 00 24           ADD        byte ptr [SI],AH
       0000:0574 00 4f 00        ADD        byte ptr [BX + 0x0],CL
       0000:0577 02 00           ADD        AL,byte ptr [BX + SI]
       0000:0579 02 00           ADD        AL,byte ptr [BX + SI]
       0000:057b 03 00           ADD        AX,word ptr [BX + SI]
       0000:057d 1f              POP        DS
       0000:057e 02 2c           ADD        CH,byte ptr [SI]
       0000:0580 02 01           ADD        AL,byte ptr [BX + DI]
       0000:0582 00 02           ADD        byte ptr [BP + SI],AL
       0000:0584 00 03           ADD        byte ptr [BP + DI],AL
       0000:0586 00 1f           ADD        byte ptr [BX],BL
       0000:0588 02 3c           ADD        BH,byte ptr [SI]
       0000:058a 01 00           ADD        word ptr [BX + SI],AX
       0000:058c 00 02           ADD        byte ptr [BP + SI],AL
       0000:058e 00 03           ADD        byte ptr [BP + DI],AL
       0000:0590 00 1f           ADD        byte ptr [BX],BL
       0000:0592 02 4f 00        ADD        CL,byte ptr [BX + 0x0]
       0000:0595 ff              ??         FFh
       0000:0596 ff 14           CALL       word ptr [SI]
       0000:0598 00 07           ADD        byte ptr [BX],AL
       0000:059a 00 00           ADD        byte ptr [BX + SI],AL
       0000:059c 20 43 6f        ds         " Congratulations !!"
                 6e 67 72 
                 61 74 75 
       0000:05b0 00              ??         00h
       0000:05b1 20 20 20        ds         "   New High Score"
                 4e 65 77 
                 20 48 69 
       0000:05c4 20 43 6f        ds         " Congratulations !!"
                 6e 67 72 
                 61 74 75 
       0000:05d8 00              ??         00h
       0000:05d9 4e 61 6d        ds         "Name               Level     Score"
                 65 20 20 
                 20 20 20 
       0000:05fc 00 00           ADD        byte ptr [BX + SI],AL
                             LAB_0000_05fe+2                                 XREF[0,3]:   FUN_0000_2e2b:0000:2e34(*), 
                                                                                          FUN_0000_3863:0000:389c(*), 
                                                                                          FUN_0000_5134:0000:5185(*)  
       0000:05fe 05 00 00        ADD        AX,0x0
       0000:0601 00 ff           ADD        BH,BH
       0000:0603 00 00           ADD        byte ptr [BX + SI],AL
       0000:0605 04 05           ADD        AL,0x5
       0000:0607 00 00           ADD        byte ptr [BX + SI],AL
       0000:0609 ff 00           INC        word ptr [BX + SI]
       0000:060b 00 04           ADD        byte ptr [SI],AL
       0000:060d 00 00           ADD        byte ptr [BX + SI],AL
       0000:060f 00 ff           ADD        BH,BH
       0000:0611 00 00           ADD        byte ptr [BX + SI],AL
       0000:0613 03 05           ADD        AX,word ptr [DI]
       0000:0615 00 00           ADD        byte ptr [BX + SI],AL
       0000:0617 ff 00           INC        word ptr [BX + SI]
       0000:0619 00 03           ADD        byte ptr [BP + DI],AL
       0000:061b 00 00           ADD        byte ptr [BX + SI],AL
       0000:061d 00 ff           ADD        BH,BH
       0000:061f 00 00           ADD        byte ptr [BX + SI],AL
       0000:0621 02 05           ADD        AL,byte ptr [DI]
       0000:0623 00 00           ADD        byte ptr [BX + SI],AL
       0000:0625 ff 00           INC        word ptr [BX + SI]
       0000:0627 00 02           ADD        byte ptr [BP + SI],AL
       0000:0629 00 00           ADD        byte ptr [BX + SI],AL
       0000:062b 00 ff           ADD        BH,BH
       0000:062d 00 00           ADD        byte ptr [BX + SI],AL
       0000:062f 01 05           ADD        word ptr [DI],AX
       0000:0631 00 00           ADD        byte ptr [BX + SI],AL
       0000:0633 ff 00           INC        word ptr [BX + SI]
       0000:0635 00 01           ADD        byte ptr [BX + DI],AL
       0000:0637 00 00           ADD        byte ptr [BX + SI],AL
       0000:0639 00 ff           ADD        BH,BH
       0000:063b 00 00           ADD        byte ptr [BX + SI],AL
       0000:063d 00 05           ADD        byte ptr [DI],AL
       0000:063f 00 00           ADD        byte ptr [BX + SI],AL
       0000:0641 ff              ??         FFh
       0000:0642 54 68 65        ds         "The Bit Bucket "
                 20 42 69 
                 74 20 42 
       0000:0652 20 42 72        ds         " Brothers      "
                 6f 74 68 
                 65 72 73 
       0000:0662 54 68 65        ds         "The Bit Bucket "
                 20 42 69 
                 74 20 42 
       0000:0672 20 42 72        ds         " Brothers      "
                 6f 74 68 
                 65 72 73 
       0000:0682 54 68 65        ds         "The Bit Bucket "
                 20 42 69 
                 74 20 42 
       0000:0692 20 42 72        ds         " Brothers      "
                 6f 74 68 
                 65 72 73 
       0000:06a2 54 68 65        ds         "The Bit Bucket "
                 20 42 69 
                 74 20 42 
       0000:06b2 20 42 72        ds         " Brothers      "
                 6f 74 68 
                 65 72 73 
       0000:06c2 54 68 65        ds         "The Bit Bucket "
                 20 42 69 
                 74 20 42 
       0000:06d2 20 42 72        ds         " Brothers      "
                 6f 74 68 
                 65 72 73 
       0000:06e2 00 05           ADD        byte ptr [DI],AL
       0000:06e4 ff 00           INC        word ptr [BX + SI]
       0000:06e6 04 ff           ADD        AL,0xff
       0000:06e8 00 04           ADD        byte ptr [SI],AL
       0000:06ea ff 00           INC        word ptr [BX + SI]
       0000:06ec 04 ff           ADD        AL,0xff
       0000:06ee 00 03           ADD        byte ptr [BP + DI],AL
       0000:06f0 ff 00           INC        word ptr [BX + SI]
       0000:06f2 03 ff           ADD        DI,DI
       0000:06f4 00 02           ADD        byte ptr [BP + SI],AL
       0000:06f6 ff 00           INC        word ptr [BX + SI]
       0000:06f8 02 ff           ADD        BH,BH
       0000:06fa 00 02           ADD        byte ptr [BP + SI],AL
       0000:06fc ff 00           INC        word ptr [BX + SI]
       0000:06fe 01 ff           ADD        DI,DI
       0000:0700 00 01           ADD        byte ptr [BX + DI],AL
       0000:0702 02 03           ADD        AL,byte ptr [BP + DI]
       0000:0704 0b 00           OR         AX,word ptr [BX + SI]
       0000:0706 04 05           ADD        AL,0x5
       0000:0708 05 0b 00        ADD        AX,0xb
       0000:070b 06              PUSH       ES
       0000:070c 07              POP        ES
       0000:070d 08 09           OR         byte ptr [BX + DI],CL
       0000:070f 01 0a           ADD        word ptr [BP + SI],CX
       0000:0711 02 ff           ADD        BH,BH
       0000:0713 30 00           XOR        byte ptr [BX + SI],AL
       0000:0715 26 00 4f 02     ADD        byte ptr ES:[BX + 0x2],CL
       0000:0719 55              PUSH       BP
       0000:071a 00 98 00 70     ADD        byte ptr [BX + SI + 0x7000],BL
       0000:071e 00 e7           ADD        BH,AH
       0000:0720 01 37           ADD        word ptr [BX],SI
       0000:0722 01 00           ADD        word ptr [BX + SI],AX
       0000:0724 00 fe           ADD        DH,BH
       0000:0726 ff              ??         FFh
       0000:0727 fe              ??         FEh
       0000:0728 ff 7d 00        INC        word ptr [DI + 0x0]
       0000:072b 32 00           XOR        AL,byte ptr [BX + SI]
       0000:072d 01 00           ADD        word ptr [BX + SI],AX
       0000:072f fe              ??         FEh
       0000:0730 ff              ??         FFh
       0000:0731 fd              STD
       0000:0732 ff              ??         FFh
       0000:0733 dc 00           FADD       double ptr [BX + SI]
       0000:0735 64 00 02        ADD        byte ptr FS:[BP + SI],AL
       0000:0738 00 fe           ADD        DH,BH
       0000:073a ff              ??         FFh
       0000:073b fe              ??         FEh
       0000:073c ff 40 01        INC        word ptr [BX + SI + 0x1]
       0000:073f 0e              PUSH       CS
       0000:0740 01 00           ADD        word ptr [BX + SI],AX
       0000:0742 00 fe           ADD        DH,BH
       0000:0744 ff              ??         FFh
       0000:0745 fd              STD
       0000:0746 ff 31           PUSH       word ptr [BX + DI]
       0000:0748 01 f4           ADD        SP,SI
       0000:074a 01 01           ADD        word ptr [BX + DI],AX
       0000:074c 00 fe           ADD        DH,BH
       0000:074e ff 02           INC        word ptr [BP + SI]
       0000:0750 00 b4 00 58     ADD        byte ptr [SI + 0x5800],DH
       0000:0754 02 02           ADD        AL,byte ptr [BP + SI]
       0000:0756 00 02           ADD        byte ptr [BP + SI],AL
       0000:0758 00 03           ADD        byte ptr [BP + DI],AL
       0000:075a 00 73 00        ADD        byte ptr [BP + DI + 0x0],DH
       0000:075d 3a 02           CMP        AL,byte ptr [BP + SI]
       0000:075f 00 00           ADD        byte ptr [BX + SI],AL
       0000:0761 02 00           ADD        AL,byte ptr [BX + SI]
       0000:0763 ff              ??         FFh
       0000:0764 ff 2d           JMPF       [DI]
       0000:0766 00 62 02        ADD        byte ptr [BP + SI + 0x2],AH
       0000:0769 01 00           ADD        word ptr [BX + SI],AX
       0000:076b 02 00           ADD        AL,byte ptr [BX + SI]
       0000:076d 02 00           ADD        AL,byte ptr [BX + SI]
       0000:076f 1e              PUSH       DS
       0000:0770 00 be 00 ff     ADD        byte ptr [BP + 0xff00],BH
                             LAB_0000_0774+1                                 XREF[0,2]:   FUN_0000_3b69:0000:3b8a(*), 
                                                                                          FUN_0000_5134:0000:5199(*)  
       0000:0774 ff 02           INC        word ptr [BP + SI]
       0000:0776 05 06 09        ADD        AX,0x906
       0000:0779 0a 07           OR         AL,byte ptr [BX]
       0000:077b 04 03           ADD        AL,0x3
       0000:077d 01 08           ADD        word ptr [BX + SI],CX
       0000:077f 42 69 74        ds         "BitMaps.PAR"
                 4d 61 70 
                 73 2e 50 
       0000:078b 24 4c 65        ds         "$Levels.PAR"
                 76 65 6c 
                 73 2e 50 
       0000:0797 24 46 6f        ds         "$Fonts.PAR"
                 6e 74 73 
                 2e 50 41 
       0000:07a2 24 48 69        ds         "$HiScores.PAR"
                 53 63 6f 
                 72 65 73 
       0000:07b0 24 42 49        ds         "$BITMAPS.PAR"
                 54 4d 41 
                 50 53 2e 
       0000:07bd 24 46 4f        ds         "$FONTS.PAR"
                 4e 54 53 
                 2e 50 41 
       0000:07c8 24 ff           AND        AL,0xff
       0000:07ca 0d 0a 0d        OR         AX,0xd0a
       0000:07cd 0a 54 68        OR         DL,byte ptr [SI + 0x68]
       0000:07d0 65 20 66 6f     AND        byte ptr GS:[BP + 0x6f],AH
       0000:07d4 6c              INSB       ES:DI,DX
       0000:07d5 6c              INSB       ES:DI,DX
       0000:07d6 6f              OUTSW      DX,SI
       0000:07d7 77 69           JA         LAB_0000_083f+3
       0000:07d9 6e              OUTSB      DX,SI
       0000:07da 67 20 66 69     AND        byte ptr [ESI + 0x69],AH
       0000:07de 6c              INSB       ES:DI,DX
       0000:07df 65 73 20        JNC        LAB_0000_0802
       0000:07e2 61              POPA
       0000:07e3 72 65           JC         LAB_0000_0849+1
       0000:07e5 20 6d 69        AND        byte ptr [DI + 0x69],CH
       0000:07e8 73 73           JNC        LAB_0000_085d
       0000:07ea 69 6e 67        IMUL       BP,word ptr [BP + 0x67],0x6f20
                 20 6f
       0000:07ef 72 20           JC         LAB_0000_080f+2
       0000:07f1 63 6f 72        ARPL       word ptr [BX + 0x72],BP
       0000:07f4 72 75           JC         LAB_0000_086b
       0000:07f6 70 74           JO         LAB_0000_086b+1
       0000:07f8 20 3a           AND        byte ptr [BP + SI],BH
       0000:07fa 0d 0a 0d        OR         AX,0xd0a
       0000:07fd 0a 24           OR         AH,byte ptr [SI]
       0000:07ff 0d 0a 70        OR         AX,0x700a
                             LAB_0000_0802                                   XREF[1]:     0000:07df(j)  
       0000:0802 6c              INSB       ES:DI,DX
       0000:0803 65 61           POPA
       0000:0805 73 65           JNC        LAB_0000_086b+1
       0000:0807 20 72 65        AND        byte ptr [BP + SI + 0x65],DH
       0000:080a 2d 63 6f        SUB        AX,0x6f63
       0000:080d 70 79           JO         LAB_0000_0888
                             LAB_0000_080f+2                                 XREF[0,1]:   0000:07ef(j)  
       0000:080f 20 74 68        AND        byte ptr [SI + 0x68],DH
       0000:0812 65 6d           INSW       ES:DI,DX
       0000:0814 20 66 72        AND        byte ptr [BP + 0x72],AH
       0000:0817 6f              OUTSW      DX,SI
       0000:0818 6d              INSW       ES:DI,DX
       0000:0819 20 74 68        AND        byte ptr [SI + 0x68],DH
       0000:081c 65 20 72 65     AND        byte ptr GS:[BP + SI + 0x65],DH
       0000:0820 6c              INSB       ES:DI,DX
       0000:0821 65 61           POPA
       0000:0823 73 65           JNC        LAB_0000_088a
       0000:0825 20 64 69        AND        byte ptr [SI + 0x69],AH
       0000:0828 73 6b           JNC        LAB_0000_0895
       0000:082a 2e 0d 0a 0d     OR         AX,0xd0a
       0000:082e 0a 52 65        OR         DL,byte ptr [BP + SI + 0x65]
       0000:0831 74 75           JZ         LAB_0000_08a8
       0000:0833 72 6e           JC         LAB_0000_08a2+1
       0000:0835 69 6e 67        IMUL       BP,word ptr [BP + 0x67],0x7420
                 20 74
       0000:083a 6f              OUTSW      DX,SI
       0000:083b 20 44 4f        AND        byte ptr [SI + 0x4f],AL
       0000:083e 53              PUSH       BX
                             LAB_0000_083f+3                                 XREF[0,1]:   0000:07d7(j)  
       0000:083f 20 2e 2e 2e     AND        byte ptr [0x2e2e],CH
       0000:0843 2e 0d 0a 0d     OR         AX,0xd0a
       0000:0847 0a 24           OR         AH,byte ptr [SI]
                             LAB_0000_0849+1                                 XREF[0,1]:   0000:07e3(j)  
       0000:0849 20 20           AND        byte ptr [BX + SI],AH
       0000:084b 20 20           AND        byte ptr [BX + SI],AH
       0000:084d 20 20           AND        byte ptr [BX + SI],AH
       0000:084f 20 20           AND        byte ptr [BX + SI],AH
       0000:0851 20 24           AND        byte ptr [SI],AH
       0000:0853 0d 0a 24        OR         AX,0x240a
       0000:0856 0d 0a 43        OR         AX,0x430a
       0000:0859 61              POPA
       0000:085a 6e              OUTSB      DX,SI
       0000:085b 6e              OUTSB      DX,SI
       0000:085c 6f              OUTSW      DX,SI
                             LAB_0000_085d                                   XREF[1]:     0000:07e8(j)  
       0000:085d 74 20           JZ         LAB_0000_087c+3
       0000:085f 63 6f 6e        ARPL       word ptr [BX + 0x6e],BP
       0000:0862 74 69           JZ         s_Over_0000_08c5+8
       0000:0864 6e              OUTSB      DX,SI
       0000:0865 75 65           JNZ        s_Over_0000_08c5+7
       0000:0867 3b 20           CMP        SP,word ptr [BX + SI]
       0000:0869 74 68           JZ         s__0000_08c5+14
                             LAB_0000_086b+1                                 XREF[1,2]:   0000:07f4(j), 0000:07f6(j), 
                             LAB_0000_086b                                                0000:0805(j)  
       0000:086b 65 20 6c 65     AND        byte ptr GS:[SI + 0x65],CH
       0000:086f 76 65           JBE        LAB_0000_08d6
       0000:0871 6c              INSB       ES:DI,DX
       0000:0872 73 20           JNC        LAB_0000_0893+1
       0000:0874 64 61           POPA
       0000:0876 74 61           JZ         LAB_0000_08d8+1
       0000:0878 20 66 69        AND        byte ptr [BP + 0x69],AH
       0000:087b 6c              INSB       ES:DI,DX
                             LAB_0000_087c+3                                 XREF[0,1]:   0000:085d(j)  
       0000:087c 65 0d 0a 0d     OR         AX,0xd0a
       0000:0880 0a 20           OR         AH,byte ptr [BX + SI]
       0000:0882 20 20           AND        byte ptr [BX + SI],AH
       0000:0884 20 20           AND        byte ptr [BX + SI],AH
       0000:0886 20 20           AND        byte ptr [BX + SI],AH
                             LAB_0000_0888                                   XREF[1]:     0000:080d(j)  
       0000:0888 20 20           AND        byte ptr [BX + SI],AH
                             LAB_0000_088a                                   XREF[1]:     0000:0823(j)  
       0000:088a 20 20           AND        byte ptr [BX + SI],AH
       0000:088c 24 0d           AND        AL,0xd
       0000:088e 0a 0d           OR         CL,byte ptr [DI]
       0000:0890 0a 77 61        OR         DH,byte ptr [BX + 0x61]
                             LAB_0000_0893+1                                 XREF[0,1]:   0000:0872(j)  
       0000:0893 73 20           JNC        LAB_0000_08b5
                             LAB_0000_0895                                   XREF[1]:     0000:0828(j)  
       0000:0895 6d              INSW       ES:DI,DX
       0000:0896 69 73 73        IMUL       SI,word ptr [BP + DI + 0x73],0x6e69
                 69 6e
       0000:089b 67 20 6f 72     AND        byte ptr [EDI + 0x72],CH
       0000:089f 20 63 6f        AND        byte ptr [BP + DI + 0x6f],AH
                             LAB_0000_08a2+1                                 XREF[0,1]:   0000:0833(j)  
       0000:08a2 72 72           JC         s_ls._Register_now_for_0000_0904+18
       0000:08a4 75 70           JNZ        s_ls._Register_now_for_0000_0904+18
       0000:08a6 74 2c           JZ         s__0000_08c5+15
                             LAB_0000_08a8                                   XREF[1]:     0000:0831(j)  
       0000:08a8 20 72 65        AND        byte ptr [BP + SI + 0x65],DH
       0000:08ab 74 75           JZ         s_r_now_for_0000_0904+30
       0000:08ad 72 6e           JC         s_gister_now_for_0000_0904+25
       0000:08af 69 6e 67        IMUL       BP,word ptr [BP + 0x67],0x7420
                 20 74
       0000:08b4 6f              OUTSW      DX,SI
                             LAB_0000_08b5                                   XREF[1]:     0000:0893(j)  
       0000:08b5 20 44 4f        AND        byte ptr [SI + 0x4f],AL
       0000:08b8 53              PUSH       BX
       0000:08b9 20 2e 2e 2e     AND        byte ptr [0x2e2e],CH
       0000:08bd 0d 0a 24        OR         AX,0x240a
       0000:08c0 10 00           ADC        byte ptr [BX + SI],AL
       0000:08c2 03 00           ADD        AX,word ptr [BX + SI]
       0000:08c4 00              ??         00h
                             s_Over_0000_08cc                                XREF[0,4]:   0000:0862(j), 0000:0865(j), 
                             s_Over_0000_08cd                                             0000:0869(j), 0000:08a6(j)  
                             s__0000_08d3
                             s__0000_08d4
       0000:08c5 20 20 20        ds         "   Game  Over   "
                 47 61 6d 
                 65 20 20 
                             LAB_0000_08d6                                   XREF[1]:     0000:086f(j)  
       0000:08d6 00 2a           ADD        byte ptr [BP + SI],CH
                             LAB_0000_08d8+1                                 XREF[0,1]:   0000:0876(j)  
       0000:08d8 00 09           ADD        byte ptr [BX + DI],CL
       0000:08da 00 00           ADD        byte ptr [BX + SI],AL
       0000:08dc 20 20 20        ds         "   Congratulations - you have completed"
                 43 6f 6e 
                 67 72 61 
                             s_ls._Register_now_for_0000_0916                XREF[0,4]:   0000:08a2(j), 0000:08a4(j), 
                             s_gister_now_for_0000_091d                                   0000:08ab(j), 0000:08ad(j)  
                             s_r_now_for_0000_0922
       0000:0904 20 20 20        ds         "   all thirty levels.  Register now for"
                 61 6c 6c 
                 20 74 68 
       0000:092c 20 20 20        ds         "   another thirty plus a level designer"
                 61 6e 6f 
                 74 68 65 
       0000:0954 20 20 20        ds         "   to create your own.     See the file"
                 74 6f 20 
                 63 72 65 
       0000:097c 20 20 20        ds         "   Paranoid.DOC for more details."
                 50 61 72 
                 61 6e 6f 
       0000:099e 00              ??         00h
       0000:099f 20 20 20        ds         "   Press a key ..."
                 50 72 65 
                 73 73 20 
       0000:09b2 0e              PUSH       CS
       0000:09b3 00 03           ADD        byte ptr [BP + DI],AL
       0000:09b5 00 00           ADD        byte ptr [BX + SI],AL
       0000:09b7 20 20 20        ds         "   Level xx"
                 4c 65 76 
                 65 6c 20 
       0000:09c4 fa              CLI
       0000:09c5 01 18           ADD        word ptr [BX + SI],BX
       0000:09c7 00 75 02        ADD        byte ptr [DI + 0x2],DH
       0000:09ca 3c 00           CMP        AL,0x0
       0000:09cc fa              CLI
       0000:09cd 01 50 00        ADD        word ptr [BX + SI + 0x0],DX
       0000:09d0 75 02           JNZ        LAB_0000_09d4
       0000:09d2 74 00           JZ         LAB_0000_09d4
                             LAB_0000_09d4                                   XREF[2]:     0000:09d0(j), 0000:09d2(j)  
       0000:09d4 fa              CLI
       0000:09d5 01 88 00 75     ADD        word ptr [BX + SI + 0x7500],CX
       0000:09d9 02 c4           ADD        AL,AH
       0000:09db 00 ff           ADD        BH,BH
       0000:09dd ff 41 00        INC        word ptr [BX + DI + 0x0]
       0000:09e0 1c 00           SBB        AL,0x0
       0000:09e2 50              PUSH       AX
       0000:09e3 72 65           JC         LAB_0000_0a49+1
       0000:09e5 73 73           JNC        LAB_0000_0a5a
       0000:09e7 20 84 46 31     AND        byte ptr [SI + 0x3146],AL
       0000:09eb 80 20 66        AND        byte ptr [BX + SI],0x66
       0000:09ee 6f              OUTSW      DX,SI
       0000:09ef 72 00           JC         LAB_0000_09f1
                             LAB_0000_09f1                                   XREF[1]:     0000:09ef(j)  
       0000:09f1 41              INC        CX
       0000:09f2 00 2a           ADD        byte ptr [BP + SI],CH
       0000:09f4 00              ??         00h
                             s__0000_0a00                                    XREF[0,5]:   0000:1428(*), 0000:1478(*), 
                                                                                          0000:192b(*), 0000:192f(*), 
                                                                                          0000:1b9a(*)  
       0000:09f5 69 6e 66        ds         "information"
                 6f 72 6d 
                 61 74 69 
       0000:0a01 41              INC        CX
       0000:0a02 00 54 00        ADD        byte ptr [SI + 0x0],DL
       0000:0a05 50              PUSH       AX
       0000:0a06 72 65           JC         LAB_0000_0a6c+1
       0000:0a08 73 73           JNC        LAB_0000_0a7d
       0000:0a0a 20 84 46 31     AND        byte ptr [SI + 0x3146],AL
       0000:0a0e 30 80 20 74     XOR        byte ptr [BX + SI + 0x7420],AL
       0000:0a12 6f              OUTSW      DX,SI
       0000:0a13 00 41 00        ADD        byte ptr [BX + DI + 0x0],AL
       0000:0a16 62 00           BOUND      AX,word ptr [BX + SI]
       0000:0a18 71 75 69        ds         "quit to dos"
                 74 20 74 
                 6f 20 64 
       0000:0a24 41              INC        CX
       0000:0a25 00 8c 00 50     ADD        byte ptr [SI + LAB_0000_5000],CL
       0000:0a29 72 65           JC         LAB_0000_0a8f+1
       0000:0a2b 73 73           JNC        LAB_0000_0aa0
       0000:0a2d 20 84 73 70     AND        byte ptr [SI + 0x7073],AL
       0000:0a31 61              POPA
       0000:0a32 63 65 80        ARPL       word ptr [DI + -0x80],SP
       0000:0a35 00 41 00        ADD        byte ptr [BX + DI + 0x0],AL
       0000:0a38 9c              PUSHF
       0000:0a39 00              ??         00h
       0000:0a3a 74 6f 20        ds         "to play"
                 70 6c 61 
                 79 00
       0000:0a42 43              INC        BX
       0000:0a43 00 b1 00 81     ADD        byte ptr [BX + DI + 0x8100],DH
       0000:0a47 50              PUSH       AX
       0000:0a48 61              POPA
                             LAB_0000_0a49+1                                 XREF[0,1]:   0000:09e3(j)  
       0000:0a49 72 61           JC         LAB_0000_0aac
       0000:0a4b 6e              OUTSB      DX,SI
       0000:0a4c 6f              OUTSW      DX,SI
       0000:0a4d 69 64 80        IMUL       SP,word ptr [SI + -0x80],-0x100
                 00 ff
                             LAB_0000_0a52+1                                 XREF[0,1]:   FUN_0000_52ff:0000:536b(*)  
       0000:0a52 ff 3c           INC        word ptr [SI]
                             LAB_0000_0a54+1                                 XREF[1,2]:   FUN_0000_52ff:0000:539c(*), 
                             LAB_0000_0a54+2                                              FUN_0000_52ff:0000:53d0(*), 
                             LAB_0000_0a54                                                FUN_0000_52ff:0000:5404(*)  
       0000:0a54 00 7e 00        ADD        byte ptr [BP + 0x0],BH
                             LAB_0000_0a57+1                                 XREF[1,1]:   FUN_0000_52ff:0000:5438(*), 
                             LAB_0000_0a57                                                FUN_0000_52ff:0000:546e(*)  
       0000:0a57 ff 00           INC        word ptr [BX + SI]
       0000:0a59 1e              PUSH       DS
                             LAB_0000_0a5a                                   XREF[1]:     0000:09e5(j)  
       0000:0a5a 00 3f           ADD        byte ptr [BX],BH
       0000:0a5c 00 7f 80        ADD        byte ptr [BX + -0x80],BH
       0000:0a5f 0f 00 1f        LTR        word ptr [BX]
       0000:0a62 80 3f c0        CMP        byte ptr [BX],0xc0
       0000:0a65 07              POP        ES
       0000:0a66 80 0f c0        OR         byte ptr [BX],0xc0
       0000:0a69 1f              POP        DS
       0000:0a6a e0 03           LOOPNZ     LAB_0000_0a6f
                             LAB_0000_0a6c+1                                 XREF[0,1]:   0000:0a06(j)  
       0000:0a6c c0 07 e0        ROL        byte ptr [BX],0xe0
                             LAB_0000_0a6f                                   XREF[1]:     0000:0a6a(j)  
       0000:0a6f 0f              ??         0Fh
       0000:0a70 f0              ??         F0h
       0000:0a71 01 e0           ADD        AX,SP
       0000:0a73 03 f0           ADD        SI,AX
       0000:0a75 07              POP        ES
       0000:0a76 f8              CLC
       0000:0a77 00 f0           ADD        AL,DH
       0000:0a79 01 f8           ADD        AX,DI
       0000:0a7b 03 fc           ADD        DI,SP
                             LAB_0000_0a7d                                   XREF[1]:     0000:0a08(j)  
       0000:0a7d 00 78 00        ADD        byte ptr [BX + SI + 0x0],BH
       0000:0a80 fc              CLD
                             LAB_0000_0a81+1                                 XREF[1,1]:   FUN_0000_568c:0000:56ba(*), 
                             LAB_0000_0a81                                                FUN_0000_568c:0000:56d6(*)  
       0000:0a81 01 fe           ADD        SI,DI
       0000:0a83 3f              AAS
       0000:0a84 7f 1f           JG         LAB_0000_0aa5
       0000:0a86 3f              AAS
       0000:0a87 0f 1f 07        NOP        word ptr [BX]
       0000:0a8a 0f 03 07        LSL        AX,word ptr [BX]
       0000:0a8d 01 03           ADD        word ptr [BP + DI],AX
                             LAB_0000_0a8f+1                                 XREF[1,2]:   FUN_0000_568c:0000:572b(*), 
                             LAB_0000_0a8f                                                0000:0a29(j), 
                                                                                          FUN_0000_568c:0000:5747(*)  
       0000:0a8f 00 01           ADD        byte ptr [BX + DI],AL
       0000:0a91 00 80 80 c0     ADD        byte ptr [BX + SI + 0xc080],AL
       0000:0a95 c0 e0 e0        SHL        AL,0xe0
       0000:0a98 f0              ??         F0h
       0000:0a99 f0              ??         F0h
       0000:0a9a f8              CLC
       0000:0a9b f8              CLC
       0000:0a9c fc              CLD
       0000:0a9d fc              CLD
       0000:0a9e fe              ??         FEh
                             DAT_0000_0a9f                                   XREF[2]:     FUN_0000_5c3a:0000:5c7b(*), 
                                                                                          FUN_0000_5c3a:0000:5c87(*)  
       0000:0a9f e0              ??         E0h
                             LAB_0000_0aa0                                   XREF[3]:     0000:0a2b(j), 
                                                                                          FUN_0000_5c3a:0000:5c9b(*), 
                                                                                          FUN_0000_5c3a:0000:5ca8(*)  
       0000:0aa0 00 70 00        ADD        byte ptr [BX + SI + 0x0],DH
       0000:0aa3 38 00           CMP        byte ptr [BX + SI],AL
                             LAB_0000_0aa5                                   XREF[1]:     0000:0a84(j)  
       0000:0aa5 1c 00           SBB        AL,0x0
       0000:0aa7 0e              PUSH       CS
       0000:0aa8 00 07           ADD        byte ptr [BX],AL
       0000:0aaa 00 03           ADD        byte ptr [BP + DI],AL
                             LAB_0000_0aac                                   XREF[1]:     0000:0a49(j)  
       0000:0aac 80 01 c0        ADD        byte ptr [BX + DI],0xc0
       0000:0aaf 0c 02           OR         AL,0x2
       0000:0ab1 16              PUSH       SS
       0000:0ab2 00 62 02        ADD        byte ptr [BP + SI + 0x2],AH
       0000:0ab5 40              INC        AX
       0000:0ab6 00 0c           ADD        byte ptr [SI],CL
       0000:0ab8 02 4a 00        ADD        CL,byte ptr [BP + SI + 0x0]
       0000:0abb 62 02           BOUND      AX,word ptr [BP + SI]
       0000:0abd 74 00           JZ         LAB_0000_0abf
                             LAB_0000_0abf                                   XREF[1]:     0000:0abd(j)  
       0000:0abf 0c 02           OR         AL,0x2
       0000:0ac1 7e 00           JLE        LAB_0000_0ac3
                             LAB_0000_0ac3                                   XREF[1]:     0000:0ac1(j)  
       0000:0ac3 62 02           BOUND      AX,word ptr [BP + SI]
       0000:0ac5 a8 00           TEST       AL,0x0
       0000:0ac7 0c 02           OR         AL,0x2
       0000:0ac9 b2 00           MOV        DL,0x0
       0000:0acb 62 02           BOUND      AX,word ptr [BP + SI]
       0000:0acd dc 00           FADD       double ptr [BX + SI]
       0000:0acf ff              ??         FFh
       0000:0ad0 ff              ??         FFh
       0000:0ad1 53 43 4f        ds         "SCORE"
                 52 45 00
       0000:0ad7 4c 45 56        ds         "LEVEL"
                 45 4c 00
       0000:0add 42 41 4c        ds         "BALLS"
                 4c 53 00
       0000:0ae3 42 4f 4e        ds         "BONUS"
                 55 53 00
       0000:0ae9 25 02 19        AND        AX,0x1902
       0000:0aec 00 d1           ADD        CL,DL
       0000:0aee 0a 25           OR         AH,byte ptr [DI]
       0000:0af0 02 4d 00        ADD        CL,byte ptr [DI + 0x0]
       0000:0af3 d7              XLAT       BX
       0000:0af4 0a 25           OR         AH,byte ptr [DI]
       0000:0af6 02 81 00 dd     ADD        AL,byte ptr [BX + DI + 0xdd00]
       0000:0afa 0a 25           OR         AH,byte ptr [DI]
       0000:0afc 02 b5 00 e3     ADD        DH,byte ptr [DI + 0xe300]
       0000:0b00 0a ff           OR         BH,BH
       0000:0b02 ff 0f           DEC        word ptr [BX]
       0000:0b04 02 ee           ADD        CH,DH
       0000:0b06 00 5f 02        ADD        byte ptr [BX + 0x2],BL
       0000:0b09 04 01           ADD        AL,0x1
       0000:0b0b 07              POP        ES
       0000:0b0c 02 1e 01 67     ADD        BL,byte ptr [0x6701]
       0000:0b10 02 42 01        ADD        AL,byte ptr [BP + SI + 0x1]
       0000:0b13 ff              ??         FFh
       0000:0b14 ff 43 00        INC        word ptr [BP + DI + 0x0]
       0000:0b17 f2              ??         F2h
       0000:0b18 00              ??         00h
       0000:0b19 81              ??         81h
       0000:0b1a 50 61 72        ds         "Paranoid"
                 61 6e 6f 
                 69 64 00
       0000:0b23 42              INC        DX
       0000:0b24 00 22           ADD        byte ptr [BP + SI],AH
       0000:0b26 01              ??         01h
       0000:0b27 42 69 74        ds         "Bit Bucket"
                 20 42 75 
                 63 6b 65 
       0000:0b32 43              INC        BX
       0000:0b33 00 30           ADD        byte ptr [BX + SI],DH
       0000:0b35 01              ??         01h
       0000:0b36 42 72 6f        ds         "Brothers"
                 74 68 65 
                 72 73 00
       0000:0b3f 45              INC        BP
       0000:0b40 00 08           ADD        byte ptr [BX + SI],CL
       0000:0b42 01 80 69 73     ADD        word ptr [BX + SI + 0x7369],AX
       0000:0b46 20 61 00        AND        byte ptr [BX + DI + 0x0],AH
       0000:0b49 42              INC        DX
       0000:0b4a 00 46 01        ADD        byte ptr [BP + 0x1],AL
       0000:0b4d 70 72 6f        ds         "production"
                 64 75 63 
                 74 69 6f 
       0000:0b58 ff              ??         FFh
       0000:0b59 ff              ??         FFh
                             LAB_0000_0b5a                                   XREF[2]:     FUN_0000_2693:0000:27a5(*), 
                                                                                          FUN_0000_2ed7:0000:2faa(*)  
       0000:0b5a ff 02           INC        word ptr [BP + SI]
       0000:0b5c 01 00           ADD        word ptr [BX + SI],AX
       0000:0b5e 02 ff           ADD        BH,BH
       0000:0b60 00 01           ADD        byte ptr [BX + DI],AL
       0000:0b62 01 00           ADD        word ptr [BX + SI],AX
       0000:0b64 ff 02           INC        word ptr [BP + SI]
       0000:0b66 00 01           ADD        byte ptr [BX + DI],AL
       0000:0b68 02 ff           ADD        BH,BH
       0000:0b6a ff              ??         FFh
       0000:0b6b ff              ??         FFh
       0000:0b6c ff 01           INC        word ptr [BX + DI]
       0000:0b6e ff 02           INC        word ptr [BP + SI]
       0000:0b70 03              ??         03h
                             DAT_0000_0b71                                   XREF[1]:     FUN_0000_2858:0000:28c9(R)  
       0000:0b71 ff              undefined1 FFh
       0000:0b72 ff 03           INC        word ptr [BP + DI]
       0000:0b74 02              ??         02h
                             DAT_0000_0b75                                   XREF[1]:     FUN_0000_2858:0000:28c9(R)  
       0000:0b75 ff              undefined1 FFh
       0000:0b76 01              ??         01h
                             DAT_0000_0b77                                   XREF[1]:     FUN_0000_2858:0000:28c9(R)  
       0000:0b77 ff              undefined1 FFh
                             DAT_0000_0b78                                   XREF[1]:     FUN_0000_2858:0000:28c9(R)  
       0000:0b78 ff              undefined1 FFh
                             DAT_0000_0b79                                   XREF[1]:     FUN_0000_2858:0000:28c9(R)  
       0000:0b79 ff              undefined1 FFh
       0000:0b7a 06              PUSH       ES
       0000:0b7b 0c 14           OR         AL,0x14
       0000:0b7d 1b 21           SBB        SP,word ptr [BX + DI]
       0000:0b7f 09 12           OR         word ptr [BP + SI],DX
       0000:0b81 1c 25           SBB        AL,0x25
       0000:0b83 2e 0c 18        OR         AL,0x18
       0000:0b86 24 30           AND        AL,0x30
       0000:0b88 3c 00           CMP        AL,0x0
       0000:0b8a 14 14           ADC        AL,0x14
       0000:0b8c 14 0f           ADC        AL,0xf
       0000:0b8e 0a 0f           OR         CL,byte ptr [BX]
       0000:0b90 0a 05           OR         AL,byte ptr [DI]
       0000:0b92 0a 0a           OR         CL,byte ptr [BP + SI]
       0000:0b94 0a 0a           OR         CL,byte ptr [BP + SI]
       0000:0b96 0a 0a           OR         CL,byte ptr [BP + SI]
       0000:0b98 0f              ??         0Fh
       0000:0b99 0f              ??         0Fh
       0000:0b9a 0f              ??         0Fh
       0000:0b9b 0f              ??         0Fh
       0000:0b9c 0f 19 14        NOP        word ptr [SI]
       0000:0b9f 0f              ??         0Fh
       0000:0ba0 0a 0a           OR         CL,byte ptr [BP + SI]
       0000:0ba2 0a 0a           OR         CL,byte ptr [BP + SI]
       0000:0ba4 0a 00           OR         AL,byte ptr [BX + SI]
       0000:0ba6 14 14           ADC        AL,0x14
                             LAB_0000_0ba8+1                                 XREF[0,1]:   FUN_0000_240b:0000:2436(*)  
       0000:0ba8 14 7c           ADC        AL,0x7c
       0000:0baa e4 94           IN         AL,0x94
       0000:0bac e4 ac           IN         AL,0xac
       0000:0bae e4 c4           IN         AL,0xc4
       0000:0bb0 e4 dc           IN         AL,0xdc
       0000:0bb2 e4 f4           IN         AL,0xf4
       0000:0bb4 e4 0c           IN         AL,0xc
       0000:0bb6 e5 24           IN         AX,0x24
       0000:0bb8 e5 3c           IN         AX,0x3c
       0000:0bba e5 54           IN         AX,0x54
       0000:0bbc e5 6c           IN         AX,0x6c
       0000:0bbe e5 84           IN         AX,0x84
       0000:0bc0 e5 9c           IN         AX,0x9c
       0000:0bc2 e5 b4           IN         AX,0xb4
       0000:0bc4 e5 cc           IN         AX,0xcc
       0000:0bc6 e5 e4           IN         AX,0xe4
       0000:0bc8 e5 e4           IN         AX,0xe4
       0000:0bca e5 fc           IN         AX,0xfc
       0000:0bcc e5 fc           IN         AX,0xfc
       0000:0bce e5 14           IN         AX,0x14
       0000:0bd0 e6 14           OUT        0x14,AL
       0000:0bd2 e6 2c           OUT        0x2c,AL
       0000:0bd4 e6 2c           OUT        0x2c,AL
       0000:0bd6 e6 44           OUT        0x44,AL
       0000:0bd8 e6 44           OUT        0x44,AL
       0000:0bda e6 5c           OUT        0x5c,AL
       0000:0bdc e6 5c           OUT        0x5c,AL
       0000:0bde e6 74           OUT        0x74,AL
       0000:0be0 e6 8c           OUT        0x8c,AL
       0000:0be2 e6 a4           OUT        0xa4,AL
       0000:0be4 e6 bc           OUT        0xbc,AL
       0000:0be6 e6 d4           OUT        0xd4,AL
       0000:0be8 e6 d4           OUT        0xd4,AL
       0000:0bea e6 ec           OUT        0xec,AL
       0000:0bec e6 ec           OUT        0xec,AL
       0000:0bee e6 04           OUT        0x4,AL
       0000:0bf0 e7 04           OUT        0x4,AX
       0000:0bf2 e7 1c           OUT        0x1c,AX
       0000:0bf4 e7 34           OUT        0x34,AX
       0000:0bf6 e7 4c           OUT        0x4c,AX
       0000:0bf8 e7 64           OUT        0x64,AX
       0000:0bfa e7 7c           OUT        0x7c,AX
       0000:0bfc e7 64           OUT        0x64,AX
       0000:0bfe e7 4c           OUT        0x4c,AX
       0000:0c00 e7 34           OUT        0x34,AX
       0000:0c02 e7 94           OUT        0x94,AX
       0000:0c04 e7 ac           OUT        0xac,AX
       0000:0c06 e7 c4           OUT        0xc4,AX
       0000:0c08 e7 dc           OUT        0xdc,AX
       0000:0c0a e7 f4           OUT        0xf4,AX
       0000:0c0c e7 0c           OUT        0xc,AX
       0000:0c0e e8 24 e8        CALL       SUB_0000_f435
       0000:0c11 0c e8           OR         AL,0xe8
       0000:0c13 f4              HLT
       0000:0c14 e7 3c           OUT        0x3c,AX
       0000:0c16 e8 54 e8        CALL       SUB_0000_f46d
       0000:0c19 6c              INSB       ES:DI,DX
       0000:0c1a e8 84 e8        CALL       SUB_0000_f4a1
       0000:0c1d 6c              INSB       ES:DI,DX
       0000:0c1e e8 54 e8        CALL       SUB_0000_f475
       0000:0c21 9c              PUSHF
       0000:0c22 e8 b4 e8        CALL       SUB_0000_f4d9
       0000:0c25 cc              INT3
       0000:0c26 e8 b4 e8        CALL       SUB_0000_f4dd
       0000:0c29 9c              PUSHF
       0000:0c2a e8 e4 e8        CALL       SUB_0000_f511
       0000:0c2d fc              CLD
       0000:0c2e e8 e4 e8        CALL       SUB_0000_f515
                             LAB_0000_0c31+1                                 XREF[1,1]:   FUN_0000_22be:0000:22e8(*), 
                             LAB_0000_0c31                                                FUN_0000_22be:0000:22ea(*)  
       0000:0c31 00 08           ADD        byte ptr [BX + SI],CL
       0000:0c33 0a 12           OR         DL,byte ptr [BP + SI]
       0000:0c35 14 1c           ADC        AL,0x1c
       0000:0c37 1e              PUSH       DS
       0000:0c38 24 26           AND        AL,0x26
       0000:0c3a 2c 2e           SUB        AL,0x2e
       0000:0c3c 40              INC        AX
       0000:0c3d 42              INC        DX
       0000:0c3e 48              DEC        AX
       0000:0c3f 4a              DEC        DX
       0000:0c40 58              POP        AX
       0000:0c41 5a              POP        DX
       0000:0c42 5e              POP        SI
       0000:0c43 60              PUSHA
       0000:0c44 6a 6c           PUSH       0x6c
       0000:0c46 76 78           JBE        LAB_0000_0cc0
                             LAB_0000_0c48+1                                 XREF[0,1]:   FUN_0000_3c75:0000:3c81(*)  
       0000:0c48 86 00           XCHG       byte ptr [BX + SI],AL
       0000:0c4a 00 01           ADD        byte ptr [BX + DI],AL
       0000:0c4c f6 24           MUL        byte ptr [SI]
       0000:0c4e 16              PUSH       SS
       0000:0c4f 25 39 25        AND        AX,0x2539
       0000:0c52 3f              AAS
       0000:0c53 25 8b 25        AND        AX,0x258b
       0000:0c56 94              XCHG       AX,SP
       0000:0c57 25 9a 25        AND        AX,0x259a
       0000:0c5a ba 25 c0        MOV        DX,0xc025
       0000:0c5d 25 c6 25        AND        AX,0x25c6
       0000:0c60 0a 26 3d 26     OR         AH,byte ptr [0x263d]
                             LAB_0000_0c64                                   XREF[1]:     FUN_0000_2493:0000:24eb(*)  
       0000:0c64 f7 0c 01 0d     TEST       word ptr [SI],0xd01
       0000:0c68 08 0d           OR         byte ptr [DI],CL
       0000:0c6a 15 0d 28        ADC        AX,0x280d
       0000:0c6d 0d 2f 0d        OR         AX,0xd2f
       0000:0c70 3c 0d           CMP        AL,0xd
       0000:0c72 4f              DEC        DI
       0000:0c73 0d 5c 0d        OR         AX,0xd5c
       0000:0c76 63 0d           ARPL       word ptr [DI],CX
       0000:0c78 6d              INSW       ES:DI,DX
       0000:0c79 0d 77 0d        OR         AX,0xd77
       0000:0c7c 04 1a           ADD        AL,0x1a
       0000:0c7e 04 05           ADD        AL,0x5
       0000:0c80 00 00           ADD        byte ptr [BX + SI],AL
       0000:0c82 ff 02           INC        word ptr [BP + SI]
       0000:0c84 48              DEC        AX
       0000:0c85 03 05           ADD        AX,word ptr [DI]
       0000:0c87 00 00           ADD        byte ptr [BX + SI],AL
       0000:0c89 ff 02           INC        word ptr [BP + SI]
       0000:0c8b bc 02 05        MOV        SP,0x502
       0000:0c8e 00 00           ADD        byte ptr [BX + SI],AL
       0000:0c90 ff 03           INC        word ptr [BP + DI]
       0000:0c92 27              DAA
       0000:0c93 06              PUSH       ES
       0000:0c94 02 00           ADD        AL,byte ptr [BX + SI]
       0000:0c96 00 01           ADD        byte ptr [BX + DI],AL
       0000:0c98 0d 02 02        OR         AX,0x202
       0000:0c9b 00 00           ADD        byte ptr [BX + SI],AL
       0000:0c9d ff 03           INC        word ptr [BP + DI]
       0000:0c9f 27              DAA
       0000:0ca0 06              PUSH       ES
       0000:0ca1 02 00           ADD        AL,byte ptr [BX + SI]
       0000:0ca3 00 01           ADD        byte ptr [BX + DI],AL
       0000:0ca5 fb              STI
       0000:0ca6 00 02           ADD        byte ptr [BP + SI],AL
       0000:0ca8 00 00           ADD        byte ptr [BX + SI],AL
       0000:0caa 01 11           ADD        word ptr [BX + DI],DX
       0000:0cac 01 02           ADD        word ptr [BP + SI],AX
       0000:0cae 00 00           ADD        byte ptr [BX + SI],AL
       0000:0cb0 01 08           ADD        word ptr [BX + SI],CX
       0000:0cb2 01 02           ADD        word ptr [BP + SI],AX
       0000:0cb4 00 00           ADD        byte ptr [BX + SI],AL
       0000:0cb6 ff 04           INC        word ptr [SI]
       0000:0cb8 f4              HLT
       0000:0cb9 01 05           ADD        word ptr [DI],AX
       0000:0cbb 64 00 ff        ADD        BH,BH
       0000:0cbe 02 0d           ADD        CL,byte ptr [DI]
                             LAB_0000_0cc0                                   XREF[1]:     0000:0c46(j)  
       0000:0cc0 02 05           ADD        AL,byte ptr [DI]
       0000:0cc2 00 00           ADD        byte ptr [BX + SI],AL
       0000:0cc4 ff 0a           DEC        word ptr [BP + SI]
       0000:0cc6 d0 07           ROL        byte ptr [BX],0x1
       0000:0cc8 1e              PUSH       DS
       0000:0cc9 14 00           ADC        AL,0x0
       0000:0ccb 01 d4           ADD        SP,DX
       0000:0ccd fe 1e 14 00     INC        byte ptr [0x14]
       0000:0cd1 01 d4           ADD        SP,DX
       0000:0cd3 fe 1e 14 00     INC        byte ptr [0x14]
       0000:0cd7 01 d4           ADD        SP,DX
       0000:0cd9 fe 1e 14 00     INC        byte ptr [0x14]
       0000:0cdd ff 0b           DEC        word ptr [BP + DI]
       0000:0cdf d0 07           ROL        byte ptr [BX],0x1
       0000:0ce1 1e              PUSH       DS
       0000:0ce2 ec              IN         AL,DX
       0000:0ce3 ff 01           INC        word ptr [BX + DI]
       0000:0ce5 2c 01           SUB        AL,0x1
       0000:0ce7 1e              PUSH       DS
       0000:0ce8 ec              IN         AL,DX
       0000:0ce9 ff 01           INC        word ptr [BX + DI]
       0000:0ceb 2c 01           SUB        AL,0x1
       0000:0ced 1e              PUSH       DS
       0000:0cee ec              IN         AL,DX
       0000:0cef ff 01           INC        word ptr [BX + DI]
       0000:0cf1 2c 01           SUB        AL,0x1
       0000:0cf3 1e              PUSH       DS
       0000:0cf4 ec              IN         AL,DX
       0000:0cf5 ff              ??         FFh
       0000:0cf6 ff 08           DEC        word ptr [BX + SI]
       0000:0cf8 d0 07           ROL        byte ptr [BX],0x1
       0000:0cfa 0f ec ff        PADDSB     MM7,MM7
       0000:0cfd 0f e2 ff        PSRAD      MM7,MM7
       0000:0d00 ff 08           DEC        word ptr [BX + SI]
       0000:0d02 d0 07           ROL        byte ptr [BX],0x1
       0000:0d04 1e              PUSH       DS
       0000:0d05 14 00           ADC        AL,0x0
       0000:0d07 ff 08           DEC        word ptr [BX + SI]
       0000:0d09 d0 07           ROL        byte ptr [BX],0x1
       0000:0d0b 14 64           ADC        AL,0x64
       0000:0d0d 00 01           ADD        byte ptr [BX + DI],AL
       0000:0d0f 30 f8           XOR        AL,BH
       0000:0d11 14 64           ADC        AL,0x64
       0000:0d13 00 ff           ADD        BH,BH
       0000:0d15 08 d0           OR         AL,DL
       0000:0d17 07              POP        ES
       0000:0d18 0a 00           OR         AL,byte ptr [BX + SI]
       0000:0d1a 00 01           ADD        byte ptr [BX + DI],AL
                             LAB_0000_0d1c                                   XREF[1]:     0000:0d1c(j)  
       0000:0d1c 70 fe           JO         LAB_0000_0d1c
       0000:0d1e 0a 00           OR         AL,byte ptr [BX + SI]
       0000:0d20 00 01           ADD        byte ptr [BX + DI],AL
       0000:0d22 02 ff           ADD        BH,BH
       0000:0d24 0a 00           OR         AL,byte ptr [BX + SI]
       0000:0d26 00 ff           ADD        BH,BH
       0000:0d28 08 a0 0f 1e     OR         byte ptr [BX + SI + DAT_0000_1e0f],AH            = DFh
       0000:0d2c 9c              PUSHF
       0000:0d2d ff              ??         FFh
       0000:0d2e ff 08           DEC        word ptr [BX + SI]
       0000:0d30 d0 07           ROL        byte ptr [BX],0x1
       0000:0d32 14 ec           ADC        AL,0xec
       0000:0d34 ff 01           INC        word ptr [BX + DI]
       0000:0d36 90              NOP
       0000:0d37 01 14           ADD        word ptr [SI],DX
       0000:0d39 ec              IN         AL,DX
       0000:0d3a ff              ??         FFh
       0000:0d3b ff 08           DEC        word ptr [BX + SI]
       0000:0d3d e8 03 0f        CALL       FUN_0000_1c43                                    undefined FUN_0000_1c43()
       0000:0d40 d8 ff           FDIVR      ST0,ST7
       0000:0d42 01 c2           ADD        DX,AX
       0000:0d44 01 0f           ADD        word ptr [BX],CX
       0000:0d46 d8 ff           FDIVR      ST0,ST7
       0000:0d48 01 c2           ADD        DX,AX
       0000:0d4a 01 0f           ADD        word ptr [BX],CX
       0000:0d4c d8 ff           FDIVR      ST0,ST7
       0000:0d4e ff 08           DEC        word ptr [BX + SI]
       0000:0d50 20 03           AND        byte ptr [BP + DI],AL
       0000:0d52 0d 14 00        OR         AX,0x14
       0000:0d55 0d ec ff        OR         AX,0xffec
       0000:0d58 0d 14 00        OR         AX,0x14
       0000:0d5b ff 09           DEC        word ptr [BX + DI]
       0000:0d5d a0 0f 3c        MOV        AL,[0x3c0f]
       0000:0d60 c4              ??         C4h
       0000:0d61 ff              ??         FFh
       0000:0d62 ff 08           DEC        word ptr [BX + SI]
       0000:0d64 d0 07           ROL        byte ptr [BX],0x1
       0000:0d66 14 e2           ADC        AL,0xe2
       0000:0d68 ff 14           CALL       word ptr [SI]
       0000:0d6a 1e              PUSH       DS
       0000:0d6b 00 ff           ADD        BH,BH
       0000:0d6d 08 d0           OR         AL,DL
       0000:0d6f 07              POP        ES
       0000:0d70 14 23           ADC        AL,0x23
       0000:0d72 00 14           ADD        byte ptr [SI],DL
       0000:0d74 dd              ??         DDh
       0000:0d75 ff              ??         FFh
       0000:0d76 ff 08           DEC        word ptr [BX + SI]
       0000:0d78 a0 0f 14        MOV        AL,[0x140f]
       0000:0d7b 9c              PUSHF
       0000:0d7c ff 01           INC        word ptr [BX + DI]
       0000:0d7e d0 07           ROL        byte ptr [BX],0x1
       0000:0d80 14 9c           ADC        AL,0x9c
       0000:0d82 ff              ??         FFh
       0000:0d83 ff              ??         FFh
       0000:0d84 20 20 54        ds         "  The object of the game Paranoid is to remov
                 68 65 20 
                 6f 62 6a 
       0000:0dbe 62 72 69        ds         "bricks from the top of the screen.  To accomp
                 63 6b 73 
                 20 66 72 
       0000:0df5 6d 61 6d        ds         "mammoth task, you are equipped with a small b
                 6d 6f 74 
                 68 20 74 
       0000:0e2f 66 6f 72        ds         "formed bat with which you must hit the ball a
                 6d 65 64 
                 20 62 61 
       0000:0e6a 00              ??         00h
       0000:0e6b 20 20 57        ds         "  When the ball collides with a brick, you wi
                 68 65 6e 
                 20 74 68 
       0000:0ea8 6f 72 20        ds         "or maybe four things.  First, an annoying sou
                 6d 61 79 
                 62 65 20 
                             s_and_disappears,_third,_your_0000_0f00         XREF[0,1]:   0000:1490(*)  
       0000:0ee0 73 65 63        ds         "second, the brick flashes white and disappear
                 6f 6e 64 
                 2c 20 74 
       0000:0f1c 73 63 6f        ds         "score goes up, by different amounts for diffe
                 72 65 20 
                 67 6f 65 
       0000:0f57 62 72 69        ds         "brick, and fourth, a brilliantly animated ico
                 63 6b 2c 
                 20 61 6e 
       0000:0f92 6d 61 6a        ds         "majestically down to your awaiting bat.  If y
                 65 73 74 
                 69 63 61 
       0000:0fcf 74 68 65        ds         "these, strange and wondrous things happen...."
                 73 65 2c 
                 20 73 74 
       0000:0ffd 00              ??         00h
       0000:0ffe 20 20 54        ds         "  To control your bat, use the left and right
                 6f 20 63 
                 6f 6e 74 
       0000:103a 6d 6f 76        ds         "move left and right.  The spacebar is used to
                 65 20 6c 
                 65 66 74 
       0000:1071 73 70 65        ds         "special powers which the icons bestow on your
                 63 69 61 
                 6c 20 70 
       0000:10ad 74 68 61        ds         "that later.  If, however, you should miss a b
                 74 20 6c 
                 61 74 65 
       0000:10e8 6c 6f 73        ds         "loses any powers it might have had."
                 65 73 20 
                 61 6e 79 
       0000:110c ff              ??         FFh
       0000:110d 20 20 53        ds         "  Some of the bricks have letters written on 
                 6f 6d 65 
                 20 6f 66 
       0000:1149 79 6f 75        ds         "you hit one of these, the same letter lights 
                 20 68 69 
                 74 20 6f 
       0000:1186 70 61 6e        ds         "panel to the right of the play area.  When al
                 65 6c 20 
                 74 6f 20 
       0000:11c2 61 72 65        ds         "are lit, a bonus will be added to your score 
                 20 6c 69 
                 74 2c 20 
       0000:11fe 6d 6f 72        ds         "more points if you collect the letters in the
                 65 20 70 
                 6f 69 6e 
       0000:123b 54 68 65        ds         "The other three panels, Score, Level and Ball
                 20 6f 74 
                 68 65 72 
       0000:1273 65 78 70        ds         "explanation."
                 6c 61 6e 
                 61 74 69 
       0000:1280 00              ??         00h
       0000:1281 20 20 44        ds         "  During the game, the ball speeds up to stop
                 75 72 69 
                 6e 67 20 
       0000:12b6 62 65 63        ds         "becoming too easy.  Each ball starts off at a
                 6f 6d 69 
                 6e 67 20 
       0000:12f2 72 61 74        ds         "rate, but then gets faster the longer it stay
                 65 2c 20 
                 62 75 74 
       0000:132c 20 20 50        ds         "  Press F10 at any time to exit to Dos, and E
                 72 65 73 
                 73 20 46 
       0000:1369 74 6f 20        ds         "to the demo from a game."
                 74 68 65 
                 20 64 65 
       0000:1382 ff              ??         FFh
       0000:1383 50 61 72        ds         "Paranoid - information"
                 61 6e 6f 
                 69 64 20 
       0000:139a 50 72 65        ds         "Press a key for brick descriptions"
                 73 73 20 
                 61 20 6b 
       0000:13bd 50 72 65        ds         "Press a key for icon descriptions"
                 73 73 20 
                 61 20 6b 
       0000:13df 50 72 65        ds         "Press a key for the next page"
                 73 73 20 
                 61 20 6b 
                             s_ss_a_key_to_return_to_the_demo_0000_1400      XREF[0,2]:   0000:146f(*), 0000:1494(*)  
       0000:13fd 50 72 65        ds         "Press a key to return to the demo"
                 73 73 20 
                 61 20 6b 
       0000:141f 0a 00           OR         AL,byte ptr [BX + SI]
       0000:1421 a8 00           TEST       AL,0x0
       0000:1423 0f 00 a8        VERW       word ptr [BX + SI + 0x1400]
                 00 14
       0000:1428 00 a8 00 0a     ADD        byte ptr [BX + SI + s__0000_09f5+11],CH          = ""
       0000:142c 00 50 00        ADD        byte ptr [BX + SI + 0x0],DL
       0000:142f ff              ??         FFh
       0000:1430 ff              ??         FFh
       0000:1431 ff              ??         FFh
       0000:1432 ff 0a           DEC        word ptr [BP + SI]
       0000:1434 00 5e 00        ADD        byte ptr [BP + 0x0],BL
       0000:1437 ff              ??         FFh
       0000:1438 ff              ??         FFh
       0000:1439 ff              ??         FFh
       0000:143a ff 0a           DEC        word ptr [BP + SI]
       0000:143c 00 d4           ADD        AH,DL
       0000:143e 00 1e 00 24     ADD        byte ptr [0x2400],BL
       0000:1442 00 0a           ADD        byte ptr [BP + SI],CL
       0000:1444 00 10           ADD        byte ptr [BX + SI],DL
       0000:1446 01 0f           ADD        word ptr [BX],CX
       0000:1448 00 17           ADD        byte ptr [BX],DL
       0000:144a 01 14           ADD        word ptr [SI],DX
       0000:144c 00 1e 01 19     ADD        byte ptr [0x1901],BL
       0000:1450 00 25           ADD        byte ptr [DI],AH
       0000:1452 01 1e 00 2c     ADD        word ptr [0x2c00],BX
       0000:1456 01 1e 00 32     ADD        word ptr [0x3200],BX
       0000:145a 00 0a           ADD        byte ptr [BP + SI],CL
       0000:145c 00 32           ADD        byte ptr [BP + SI],DH
       0000:145e 00 0f           ADD        byte ptr [BX],CL
       0000:1460 00 32           ADD        byte ptr [BP + SI],DH
       0000:1462 00 14           ADD        byte ptr [SI],DL
       0000:1464 00 32           ADD        byte ptr [BP + SI],DH
       0000:1466 00 19           ADD        byte ptr [BX + DI],BL
       0000:1468 00 32           ADD        byte ptr [BP + SI],DH
       0000:146a 00 0a           ADD        byte ptr [BP + SI],CL
       0000:146c 00 7c 00        ADD        byte ptr [SI + 0x0],BH
       0000:146f 0f 00 81        SLDT       word ptr [BX + DI + s_ss_a_key_to_return_to_th   = "ss a key to return to the demo"
                 00 14
       0000:1474 00 85 00 19     ADD        byte ptr [DI + s_balls_that_hit_your_bat_in_00   = " balls that hit your bat in"
       0000:1478 00 8a 00 0a     ADD        byte ptr [BP + SI + s__0000_09f5+11],CL          = ""
       0000:147c 00 24           ADD        byte ptr [SI],AH
       0000:147e 00 0f           ADD        byte ptr [BX],CL
       0000:1480 00 24           ADD        byte ptr [SI],AH
       0000:1482 00 14           ADD        byte ptr [SI],DL
       0000:1484 00 24           ADD        byte ptr [SI],AH
       0000:1486 00 19           ADD        byte ptr [BX + DI],BL
       0000:1488 00 24           ADD        byte ptr [SI],AH
       0000:148a 00 0a           ADD        byte ptr [BP + SI],CL
       0000:148c 00 f2           ADD        DL,DH
       0000:148e 00 0a           ADD        byte ptr [BP + SI],CL
       0000:1490 00 b6 00 0f     ADD        byte ptr [BP + s_and_disappears,_third,_your_0   = "and disappears, third, your"
       0000:1494 00 b6 00 14     ADD        byte ptr [BP + s_ss_a_key_to_return_to_the_dem   = "ss a key to return to the demo"
       0000:1498 00 b6 00 24     ADD        byte ptr [BP + 0x2400],DH
       0000:149c 00 22           ADD        byte ptr [BP + SI],AH
       0000:149e 00              ??         00h
       0000:149f 54 68 65        ds         "These are normal bricks - the top"
                 73 65 20 
                 61 72 65 
       0000:14c1 24 00           AND        AL,0x0
       0000:14c3 30 00           XOR        byte ptr [BX + SI],AL
       0000:14c5 72 6f 77        ds         "row score 10 each, the rest 15."
                 20 73 63 
                 6f 72 65 
       0000:14e5 10 00           ADC        byte ptr [BX + SI],AL
       0000:14e7 4e              DEC        SI
       0000:14e8 00              ??         00h
       0000:14e9 59 6f 75        ds         "You need to hit these twice each - score 15 f
                 20 6e 65 
                 65 64 20 
       0000:151d 10 00           ADC        byte ptr [BX + SI],AL
       0000:151f 5c              POP        SP
       0000:1520 00              ??         00h
       0000:1521 66 69 72        ds         "first hit, then 10 for the second."
                 73 74 20 
                 68 69 74 
       0000:1544 1f              POP        DS
       0000:1545 00 7a 00        ADD        byte ptr [BP + SI + 0x0],BH
       0000:1548 46 6f 75        ds         "Four hits are needed to remove this"
                 72 20 68 
                 69 74 73 
       0000:156c 1f              POP        DS
       0000:156d 00              ??         00h
       0000:156e 88 00           MOV        byte ptr [BX + SI],AL
       0000:1570 74 79 70        ds         "type, scoring 70 points in total."
                 65 2c 20 
                 73 63 6f 
       0000:1592 1a 00           SBB        AL,byte ptr [BX + SI]
       0000:1594 a6              CMPSB      ES:DI,SI
       0000:1595 00              ??         00h
       0000:1596 54 68 65        ds         "The ones with pretty pictures on are worth"
                 20 6f 6e 
                 65 73 20 
       0000:15c1 1a 00           SBB        AL,byte ptr [BX + SI]
       0000:15c3 b4 00           MOV        AH,0x0
       0000:15c5 32 30 20        ds         "20 points each."
                 70 6f 69 
                 6e 74 73 
       0000:15d5 10 00           ADC        byte ptr [BX + SI],AL
       0000:15d7 d2 00           ROL        byte ptr [BX + SI],CL
       0000:15d9 54 68 69        ds         "This sort only gives you a paltry 5 points."
                 73 20 73 
                 6f 72 74 
       0000:1605 10 00           ADC        byte ptr [BX + SI],AL
       0000:1607 f0              ??         F0h
       0000:1608 00              ??         00h
       0000:1609 4e 6f 20        ds         "No amount of battering can demolish this stur
                 61 6d 6f 
                 75 6e 74 
       0000:1640 24 00           AND        AL,0x0
       0000:1642 0e              PUSH       CS
       0000:1643 01              ??         01h
       0000:1644 43 6f 6c        ds         "Collect these in the right order"
                 6c 65 63 
                 74 20 74 
       0000:1665 24 00           AND        AL,0x0
       0000:1667 1c 01           SBB        AL,0x1
       0000:1669 61 6e 64        ds         "and score 500, otherwise only 200."
                 20 73 63 
                 6f 72 65 
       0000:168c 24 00           AND        AL,0x0
       0000:168e 2a 01           SUB        AL,byte ptr [BX + DI]
       0000:1690 31 30 20        ds         "10 points for each one anyway."
                 70 6f 69 
                 6e 74 73 
       0000:16af ff              ??         FFh
       0000:16b0 ff              ??         FFh
       0000:16b1 54 68 69        ds         "This handy icon increases the size of your ba
                 73 20 68 
                 61 6e 64 
       0000:16e5 6d 69 67        ds         "mighty third - very convenient for those hard
                 68 74 79 
                 20 74 68 
       0000:171c 73 68 6f        ds         "shots."
                 74 73 2e 
                 00 00
       0000:1724 43 61 74        ds         "Catch this icon, and you will find that your 
                 63 68 20 
                 74 68 69 
       0000:1759 73 68 72        ds         "shrunk by a third.  Not a particularly useful
                 75 6e 6b 
                 20 62 79 
       0000:178d 00              ??         00h
       0000:178e 49 66 20        ds         "If you succeed in capturing this icon, your b
                 79 6f 75 
                 20 73 75 
       0000:17c3 62 65 20        ds         "be able to catch the ball.  When the ball is 
                 61 62 6c 
                 65 20 74 
       0000:17f9 79 6f 75        ds         "your bat, press the spacebar to release it."
                 72 20 62 
                 61 74 2c 
       0000:1825 00              ??         00h
       0000:1826 47 65 74        ds         "Get this icon to add an incredible 500 points
                 20 74 68 
                 69 73 20 
       0000:185c 73 63 6f        ds         "score."
                 72 65 2e 
                 00 00
       0000:1864 49 66 20        ds         "If you manage to catch this icon, you will be
                 79 6f 75 
                 20 6d 61 
       0000:189a 6f 62 6c        ds         "obliterate bricks with some heavy artillery -
                 69 74 65 
                 72 61 74 
       0000:18d0 73 70 61        ds         "spacebar to fire."
                 63 65 62 
                 61 72 20 
       0000:18e2 00              ??         00h
                             s_balls_that_hit_your_bat_in_0000_1900          XREF[0,1]:   0000:1474(*)  
       0000:18e3 54 68 69        ds         "This icon splits the next two balls that hit 
                 73 20 69 
                 63 6f 6e 
       0000:191c 74 77           JZ         s_catch_this_icon,_a_thin_line_wil_0000_198c+9
       0000:191e 6f              OUTSW      DX,SI
       0000:191f 2e 00 ff        ADD        BH,BH
       0000:1922 0a 00           OR         AL,byte ptr [BX + SI]
       0000:1924 21 00           AND        word ptr [BX + SI],AX
       0000:1926 0a 00           OR         AL,byte ptr [BX + SI]
       0000:1928 59              POP        CX
       0000:1929 00 0a           ADD        byte ptr [BP + SI],CL
       0000:192b 00 83 00 0a     ADD        byte ptr [BP + DI + s__0000_09f5+11],AL          = ""
       0000:192f 00 bb 00 0a     ADD        byte ptr [BP + DI + s__0000_09f5+11],BH          = ""
       0000:1933 00 e5           ADD        CH,AH
       0000:1935 00 0a           ADD        byte ptr [BP + SI],CL
       0000:1937 00 1d           ADD        byte ptr [DI],BL
       0000:1939 01              ??         01h
       0000:193a 54 6f 20        ds         "To increase your stock of balls, catch this i
                 69 6e 63 
                 72 65 61 
       0000:1973 77 69 6c        ds         "will gain an extra one."
                 6c 20 67 
                 61 69 6e 
                             s_catch_this_icon,_a_thin_line_wil_0000_1995    XREF[0,1]:   0000:191c(j)  
       0000:198c 57 68 65        ds         "When you catch this icon, a thin line will ap
                 6e 20 79 
                 6f 75 20 
       0000:19c5 62 6f 74        ds         "bottom of the screen.  If you miss a ball, it
                 74 6f 6d 
                 20 6f 66 
       0000:19f8 62 6f 75        ds         "bounce off this barrier - but only once."
                 6e 63 65 
                 20 6f 66 
       0000:1a21 00              ??         00h
       0000:1a22 49 66 20        ds         "If the current level is too tricky for you, c
                 74 68 65 
                 20 63 75 
       0000:1a59 69 63 6f        ds         "icon to be whisked away to the next one."
                 6e 20 74 
                 6f 20 62 
       0000:1a82 00              ??         00h
       0000:1a83 54 68 65        ds         "The ball will speed up if you are unfortunate
                 20 62 61 
                 6c 6c 20 
       0000:1abb 63 61 74        ds         "catch this icon."
                 63 68 20 
                 74 68 69 
       0000:1acc 00              ??         00h
       0000:1acd 54 68 69        ds         "This icon will slow all the balls down to the
                 73 20 69 
                 63 6f 6e 
       0000:1b06 61 6d 62        ds         "ambling pace."
                 6c 69 6e 
                 67 20 70 
       0000:1b14 00              ??         00h
       0000:1b15 41 20 76        ds         "A very potent icon - instead of bouncing off 
                 65 72 79 
                 20 70 6f 
       0000:1b4e 66 6f 72        ds         "for one hit the ball will travel straight thr
                 20 6f 6e 
                 65 20 68 
       0000:1b86 ff 0a           DEC        word ptr [BP + SI]
       0000:1b88 00 23           ADD        byte ptr [BP + DI],AH
       0000:1b8a 00 0a           ADD        byte ptr [BP + SI],CL
       0000:1b8c 00 52 00        ADD        byte ptr [BP + SI + 0x0],DL
       0000:1b8f 0a 00           OR         AL,byte ptr [BX + SI]
       0000:1b91 8f 00           POP        word ptr [BX + SI]
       0000:1b93 0a 00           OR         AL,byte ptr [BX + SI]
       0000:1b95 be 00 0a        MOV        SI,0xa00
       0000:1b98 00 ed           ADD        CH,CH
       0000:1b9a 00 0a           ADD        byte ptr [BP + SI]=>s__0000_09f5+11,CL           = ""
       0000:1b9c 00 1c           ADD        byte ptr [SI],BL
       0000:1b9e 01 df           ADD        DI,BX
       0000:1ba0 df              ??         DFh
       0000:1ba1 df              ??         DFh
       0000:1ba2 df              ??         DFh
       0000:1ba3 df              ??         DFh
       0000:1ba4 df              ??         DFh
       0000:1ba5 df              ??         DFh
       0000:1ba6 df 36 32 32     FBSTP      tword ptr [0x3232]
       0000:1baa 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bac 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bae 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bb0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bb2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bb4 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bb6 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bb8 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bba 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bbc 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bbe 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bc0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bc2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bc4 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bc6 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bc8 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bca 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bcc 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bce 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bd0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bd2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bd4 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bd6 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bd8 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bda 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bdc 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1bde 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1be0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1be2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:1be4 44              INC        SP
       0000:1be5 00 df           ADD        BH,BL
       0000:1be7 df              ??         DFh
       0000:1be8 df              ??         DFh
       0000:1be9 df              ??         DFh
       0000:1bea df              ??         DFh
       0000:1beb df              ??         DFh
       0000:1bec df              ??         DFh
       0000:1bed df 45 df        FILD       word ptr [DI + -0x21]
       0000:1bf0 df              ??         DFh
       0000:1bf1 df              ??         DFh
       0000:1bf2 df              ??         DFh
       0000:1bf3 df              ??         DFh
       0000:1bf4 df              ??         DFh
       0000:1bf5 df              ??         DFh
       0000:1bf6 df              ??         DFh
       0000:1bf7 df              ??         DFh
       0000:1bf8 df              ??         DFh
       0000:1bf9 df              ??         DFh
       0000:1bfa df              ??         DFh
       0000:1bfb df              ??         DFh
       0000:1bfc df              ??         DFh
       0000:1bfd df              ??         DFh
       0000:1bfe df              ??         DFh
       0000:1bff df              ??         DFh
       0000:1c00 df              ??         DFh
       0000:1c01 df              ??         DFh
       0000:1c02 df              ??         DFh
       0000:1c03 df              ??         DFh
       0000:1c04 df              ??         DFh
       0000:1c05 df              ??         DFh
       0000:1c06 df              ??         DFh
       0000:1c07 df              ??         DFh
       0000:1c08 df              ??         DFh
       0000:1c09 df              ??         DFh
       0000:1c0a df              ??         DFh
       0000:1c0b df              ??         DFh
       0000:1c0c df              ??         DFh
       0000:1c0d df              ??         DFh
       0000:1c0e df              ??         DFh
       0000:1c0f df              ??         DFh
       0000:1c10 df              ??         DFh
       0000:1c11 df              ??         DFh
       0000:1c12 df              ??         DFh
       0000:1c13 df              ??         DFh
       0000:1c14 df              ??         DFh
       0000:1c15 df              ??         DFh
       0000:1c16 df              ??         DFh
       0000:1c17 df              ??         DFh
       0000:1c18 df              ??         DFh
       0000:1c19 df              ??         DFh
       0000:1c1a df              ??         DFh
       0000:1c1b df              ??         DFh
       0000:1c1c df              ??         DFh
       0000:1c1d df              ??         DFh
       0000:1c1e df              ??         DFh
       0000:1c1f df              ??         DFh
       0000:1c20 df              ??         DFh
       0000:1c21 df              ??         DFh
       0000:1c22 df              ??         DFh
       0000:1c23 df              ??         DFh
       0000:1c24 df              ??         DFh
       0000:1c25 df              ??         DFh
       0000:1c26 df              ??         DFh
       0000:1c27 df              ??         DFh
       0000:1c28 df              ??         DFh
       0000:1c29 df              ??         DFh
       0000:1c2a df 45 00        FILD       word ptr [DI + 0x0]
       0000:1c2d df              ??         DFh
       0000:1c2e df              ??         DFh
       0000:1c2f df              ??         DFh
       0000:1c30 df              ??         DFh
       0000:1c31 df              ??         DFh
       0000:1c32 df 36 32 46     FBSTP      tword ptr [0x4632]
       0000:1c36 df              ??         DFh
       0000:1c37 df af 9e 8d     FILD       qword ptr [BX + 0x8d9e]
       0000:1c3b 9e              SAHF
       0000:1c3c 91              XCHG       AX,CX
       0000:1c3d 90              NOP
       0000:1c3e 96              XCHG       AX,SI
       0000:1c3f 9b              WAIT
       0000:1c40 df              ??         DFh
       0000:1c41 96              XCHG       AX,SI
       0000:1c42 8c              ??         8Ch
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_0000_1c43()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_1c43                                   XREF[1]:     0000:0d3d(c)  
       0000:1c43 df 8c 97 9e     FISTTP     word ptr [SI + 0x9e97]
       0000:1c47 8d 9a 88 9e     LEA        BX,[BP + SI + 0x9e88]
       0000:1c4b 8d 9a d1 df     LEA        BX,[BP + SI + 0xdfd1]
       0000:1c4f df b6 99 df     FBSTP      tword ptr [BP + 0xdf99]
       0000:1c53 86 90 8a df     XCHG       byte ptr [BX + SI + 0xdf8a],DL
       0000:1c57 9c              PUSHF
       0000:1c58 90              NOP
       0000:1c59 91              XCHG       AX,CX
       0000:1c5a 8b 96 91 8a     MOV        DX,word ptr [BP + 0x8a91]
       0000:1c5e 9a df 8b        CALLF      SUB_e000_84df
                 90 df
       0000:1c63 8f              ??         8Fh
       0000:1c64 93              XCHG       AX,BX
       0000:1c65 9e              SAHF
       0000:1c66 86 df           XCHG       BH,BL
       0000:1c68 af              SCASW      ES:DI
       0000:1c69 9e              SAHF
       0000:1c6a 8d 9e 91 90     LEA        BX,[BP + 0x9091]
       0000:1c6e 96              XCHG       AX,SI
       0000:1c6f 9b              WAIT
       0000:1c70 df              ??         DFh
       0000:1c71 df 33           FBSTP      tword ptr [BP + DI]
       0000:1c73 32 44 00        XOR        AL,byte ptr [SI + 0x0]
       0000:1c76 df              ??         DFh
       0000:1c77 df              ??         DFh
       0000:1c78 df              ??         DFh
       0000:1c79 df              ??         DFh
       0000:1c7a df              ??         DFh
       0000:1c7b df 45 df        FILD       word ptr [DI + -0x21]
       0000:1c7e 45              INC        BP
       0000:1c7f df              ??         DFh
       0000:1c80 df 99 90 8d     FISTP      word ptr [BX + DI + 0x8d90]
       0000:1c84 df 92 90 8d     FIST       word ptr [BP + SI + 0x8d90]
       0000:1c88 9a df 8b        CALLF      SUB_a000_754f
                 97 9e
       0000:1c8d 91              XCHG       AX,CX
       0000:1c8e df 96 8b 8c     FIST       word ptr [BP + 0x8c8b]
       0000:1c92 df 8b 8d 96     FISTTP     word ptr [BP + DI + 0x968d]
       0000:1c96 9e              SAHF
       0000:1c97 93              XCHG       AX,BX
       0000:1c98 df 8f 9a 8d     FISTTP     word ptr [BX + 0x8d9a]
       0000:1c9c 96              XCHG       AX,SI
       0000:1c9d 90              NOP
       0000:1c9e 9b              WAIT
       0000:1c9f df 90 99 df     FIST       word ptr [BX + SI + 0xdf99]
       0000:1ca3 90              NOP
       0000:1ca4 91              XCHG       AX,CX
       0000:1ca5 9a df 92        CALLF      SUB_9000_abdf
                 90 91
       0000:1caa 8b 97 d3 df     MOV        DX,word ptr [BX + 0xdfd3]
       0000:1cae 86 90 8a df     XCHG       byte ptr [BX + SI + 0xdf8a],DL
       0000:1cb2 92              XCHG       AX,DX
       0000:1cb3 8a 8c 8b df     MOV        CL,byte ptr [SI + 0xdf8b]
       0000:1cb7 df              ??         DFh
       0000:1cb8 df              ??         DFh
       0000:1cb9 df              ??         DFh
       0000:1cba df 45 df        FILD       word ptr [DI + -0x21]
       0000:1cbd 45              INC        BP
       0000:1cbe 00 df           ADD        BH,BL
       0000:1cc0 df              ??         DFh
       0000:1cc1 df              ??         DFh
       0000:1cc2 df 36 32 46     FBSTP      tword ptr [0x4632]
       0000:1cc6 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1cc9 df 8f 9e 86     FISTTP     word ptr [BX + 0x869e]
       0000:1ccd df 9e df 63     FISTP      word ptr [BP + 0x63df]
       0000:1cd1 ce              INTO
       0000:1cd2 cf              IRET
       0000:1cd3 df 8d 9a 98     FISTTP     word ptr [DI + 0x989a]
       0000:1cd7 96              XCHG       AX,SI
       0000:1cd8 8c 8b 8d 9e     MOV        word ptr [BP + DI + 0x9e8d],CS
       0000:1cdc 8b 96 90 91     MOV        DX,word ptr [BP + 0x9190]
       0000:1ce0 df 99 9a 9a     FISTP      word ptr [BX + DI + 0x9a9a]
       0000:1ce4 d1 df           RCR        DI,0x1
       0000:1ce6 df ab 97 96     FILD       qword ptr [BP + DI + 0x9697]
       0000:1cea 8c df           MOV        DI,DS
       0000:1cec 9c              PUSHF
       0000:1ced 9e              SAHF
       0000:1cee 91              XCHG       AX,CX
       0000:1cef df 9d 9a df     FISTP      word ptr [DI + 0xdf9a]
       0000:1cf3 96              XCHG       AX,SI
       0000:1cf4 91              XCHG       AX,CX
       0000:1cf5 df 8b 97 9a     FISTTP     word ptr [BP + DI + 0x9a97]
       0000:1cf9 df 99 90 8d     FISTP      word ptr [BX + DI + 0x8d90]
       0000:1cfd 92              XCHG       AX,DX
       0000:1cfe df 90 99 df     FIST       word ptr [BX + SI + 0xdf99]
       0000:1d02 df              ??         DFh
       0000:1d03 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1d06 33 32           XOR        SI,word ptr [BP + SI]
       0000:1d08 44              INC        SP
       0000:1d09 00 df           ADD        BH,BL
       0000:1d0b df              ??         DFh
       0000:1d0c df              ??         DFh
       0000:1d0d df 45 df        FILD       word ptr [DI + -0x21]
       0000:1d10 45              INC        BP
       0000:1d11 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1d14 df 9e df 9c     FISTP      word ptr [BP + 0x9cdf]
       0000:1d18 97              XCHG       AX,DI
       0000:1d19 9a 8e 8a        CALLF      SUB_e000_842e
                 9a df
       0000:1d1e 90              NOP
       0000:1d1f 8d              ??         8Dh
       0000:1d20 df af 90 8c     FILD       qword ptr [BX + 0x8c90]
       0000:1d24 8b 9e 93 df     MOV        BX,word ptr [BP + 0xdf93]
       0000:1d28 b0 8d           MOV        AL,0x8d
       0000:1d2a 9b              WAIT
       0000:1d2b 9a 8d df        CALLF      SUB_a000_c8ad
                 92 9e
       0000:1d30 9b              WAIT
       0000:1d31 9a df 8f        CALLF      SUB_8000_f9bf
                 9e 86
       0000:1d36 9e              SAHF
       0000:1d37 9d              POPF
       0000:1d38 93              XCHG       AX,BX
       0000:1d39 9a df 8b        CALLF      SUB_e000_84df
                 90 df
       0000:1d3e bd 9a 91        MOV        BP,0x919a
       0000:1d41 df b1 90 8d     FBSTP      tword ptr [BX + DI + 0x8d90]
       0000:1d45 8b 97 c4 df     MOV        DX,word ptr [BX + 0xdfc4]
       0000:1d49 91              XCHG       AX,CX
       0000:1d4a 90              NOP
       0000:1d4b df              ??         DFh
       0000:1d4c df              ??         DFh
       0000:1d4d df              ??         DFh
       0000:1d4e df 45 df        FILD       word ptr [DI + -0x21]
       0000:1d51 45              INC        BP
       0000:1d52 df 45 00        FILD       word ptr [DI + 0x0]
       0000:1d55 df              ??         DFh
       0000:1d56 df 36 32 46     FBSTP      tword ptr [0x4632]
       0000:1d5a df 45 df        FILD       word ptr [DI + -0x21]
       0000:1d5d 45              INC        BP
       0000:1d5e df              ??         DFh
       0000:1d5f df 9c 9e 8c     FISTP      word ptr [SI + 0x8c9e]
       0000:1d63 97              XCHG       AX,DI
       0000:1d64 d3 df           RCR        DI,CL
       0000:1d66 8f              ??         8Fh
       0000:1d67 90              NOP
       0000:1d68 8c 8b 9e 98     MOV        word ptr [BP + DI + 0x989e],CS
       0000:1d6c 9a df 8c        CALLF      SUB_a000_758f
                 8b 9e
       0000:1d71 92              XCHG       AX,DX
       0000:1d72 8f              ??         8Fh
       0000:1d73 8c d3           MOV        BX,SS
       0000:1d75 df 90 8d df     FIST       word ptr [BX + SI + 0xdf8d]
       0000:1d79 9c              PUSHF
       0000:1d7a 8d 9a 9b 96     LEA        BX,[BP + SI + 0x969b]
       0000:1d7e 8b df           MOV        BX,DI
       0000:1d80 9c              PUSHF
       0000:1d81 9e              SAHF
       0000:1d82 8d 9b 8c df     LEA        BX,[BP + DI + 0xdf8c]
       0000:1d86 8f              ??         8Fh
       0000:1d87 93              XCHG       AX,BX
       0000:1d88 9a 9e 8c        CALLF      SUB_d000_a63e
                 9a d1
       0000:1d8d df              ??         DFh
       0000:1d8e df ab 97 9a     FILD       qword ptr [BP + DI + 0x9a97]
       0000:1d92 df bd 96 8b     FISTP      qword ptr [DI + 0x8b96]
       0000:1d96 df              ??         DFh
       0000:1d97 df              ??         DFh
       0000:1d98 df              ??         DFh
       0000:1d99 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1d9c 45              INC        BP
       0000:1d9d df 33           FBSTP      tword ptr [BP + DI]
       0000:1d9f 32 44 00        XOR        AL,byte ptr [SI + 0x0]
       0000:1da2 df              ??         DFh
       0000:1da3 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1da6 45              INC        BP
       0000:1da7 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1daa 45              INC        BP
       0000:1dab df              ??         DFh
       0000:1dac df bd 8a 9c     FISTP      qword ptr [DI + 0x9c8a]
       0000:1db0 94              XCHG       AX,SP
       0000:1db1 9a 8b df        CALLF      SUB_9000_bb5b
                 bd 8d
       0000:1db6 90              NOP
       0000:1db7 8b 97 9a 8d     MOV        DX,word ptr [BX + 0x8d9a]
       0000:1dbb 8c df           MOV        DI,DS
       0000:1dbd 9c              PUSHF
       0000:1dbe 9e              SAHF
       0000:1dbf 91              XCHG       AX,CX
       0000:1dc0 df 9d 9a df     FISTP      word ptr [DI + 0xdf9a]
       0000:1dc4 9c              PUSHF
       0000:1dc5 90              NOP
       0000:1dc6 91              XCHG       AX,CX
       0000:1dc7 8b 9e 9c 8b     MOV        BX,word ptr [BP + 0x8b9c]
       0000:1dcb 9a 9b df        CALLF      SUB_9000_997b
                 9e 8b
       0000:1dd0 df              ??         DFh
       0000:1dd1 df              ??         DFh
       0000:1dd2 df              ??         DFh
       0000:1dd3 df              ??         DFh
       0000:1dd4 df              ??         DFh
       0000:1dd5 df              ??         DFh
       0000:1dd6 df              ??         DFh
       0000:1dd7 df              ??         DFh
       0000:1dd8 df              ??         DFh
       0000:1dd9 df              ??         DFh
       0000:1dda df              ??         DFh
       0000:1ddb df              ??         DFh
       0000:1ddc df              ??         DFh
       0000:1ddd df              ??         DFh
       0000:1dde df              ??         DFh
       0000:1ddf df              ??         DFh
       0000:1de0 df              ??         DFh
       0000:1de1 df              ??         DFh
       0000:1de2 df              ??         DFh
       0000:1de3 df              ??         DFh
       0000:1de4 df              ??         DFh
       0000:1de5 df              ??         DFh
       0000:1de6 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1de9 45              INC        BP
       0000:1dea df 45 df        FILD       word ptr [DI + -0x21]
       0000:1ded 45              INC        BP
       0000:1dee 00 36 32 46     ADD        byte ptr [0x4632],DH
       0000:1df2 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1df5 45              INC        BP
       0000:1df6 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1df9 df              ??         DFh
       0000:1dfa df              ??         DFh
       0000:1dfb df              ??         DFh
       0000:1dfc df              ??         DFh
       0000:1dfd df              ??         DFh
       0000:1dfe df              ??         DFh
       0000:1dff df              ??         DFh
       0000:1e00 df              ??         DFh
       0000:1e01 df              ??         DFh
       0000:1e02 df              ??         DFh
       0000:1e03 df              ??         DFh
       0000:1e04 df              ??         DFh
       0000:1e05 df              ??         DFh
       0000:1e06 df              ??         DFh
       0000:1e07 df              ??         DFh
       0000:1e08 df              ??         DFh
       0000:1e09 df              ??         DFh
       0000:1e0a df              ??         DFh
       0000:1e0b df              ??         DFh
       0000:1e0c df              ??         DFh
       0000:1e0d df              ??         DFh
       0000:1e0e df              ??         DFh
                             DAT_0000_1e0f                                   XREF[1]:     0000:0d28(*)  
       0000:1e0f df              ??         DFh
       0000:1e10 df              ??         DFh
       0000:1e11 df              ??         DFh
       0000:1e12 df              ??         DFh
       0000:1e13 df              ??         DFh
       0000:1e14 df              ??         DFh
       0000:1e15 df              ??         DFh
       0000:1e16 df              ??         DFh
       0000:1e17 df              ??         DFh
       0000:1e18 df              ??         DFh
       0000:1e19 df              ??         DFh
       0000:1e1a df              ??         DFh
       0000:1e1b df              ??         DFh
       0000:1e1c df              ??         DFh
       0000:1e1d df              ??         DFh
       0000:1e1e df              ??         DFh
       0000:1e1f df              ??         DFh
       0000:1e20 df              ??         DFh
       0000:1e21 df              ??         DFh
       0000:1e22 df              ??         DFh
       0000:1e23 df              ??         DFh
       0000:1e24 df              ??         DFh
       0000:1e25 df              ??         DFh
       0000:1e26 df              ??         DFh
       0000:1e27 df              ??         DFh
       0000:1e28 df              ??         DFh
       0000:1e29 df              ??         DFh
       0000:1e2a df              ??         DFh
       0000:1e2b df              ??         DFh
       0000:1e2c df              ??         DFh
       0000:1e2d df              ??         DFh
       0000:1e2e df              ??         DFh
       0000:1e2f df              ??         DFh
       0000:1e30 df              ??         DFh
       0000:1e31 df              ??         DFh
       0000:1e32 df              ??         DFh
       0000:1e33 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e36 45              INC        BP
       0000:1e37 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e3a 33 32           XOR        SI,word ptr [BP + SI]
       0000:1e3c 44              INC        SP
       0000:1e3d 00 45 df        ADD        byte ptr [DI + -0x21],AL
       0000:1e40 45              INC        BP
       0000:1e41 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e44 45              INC        BP
       0000:1e45 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e48 df              ??         DFh
       0000:1e49 df              ??         DFh
       0000:1e4a df              ??         DFh
       0000:1e4b df              ??         DFh
       0000:1e4c df              ??         DFh
       0000:1e4d df              ??         DFh
       0000:1e4e df              ??         DFh
       0000:1e4f df              ??         DFh
       0000:1e50 df              ??         DFh
       0000:1e51 df              ??         DFh
       0000:1e52 df              ??         DFh
       0000:1e53 df ab 97 9a     FILD       qword ptr [BP + DI + 0x9a97]
       0000:1e57 df bd 96 8b     FISTP      qword ptr [DI + 0x8b96]
       0000:1e5b df bd 8a 9c     FISTP      qword ptr [DI + 0x9c8a]
       0000:1e5f 94              XCHG       AX,SP
       0000:1e60 9a 8b df        CALLF      SUB_9000_bb5b
                 bd 8d
       0000:1e65 90              NOP
       0000:1e66 8b 97 9a 8d     MOV        DX,word ptr [BX + 0x8d9a]
       0000:1e6a 8c d3           MOV        BX,SS
       0000:1e6c df              ??         DFh
       0000:1e6d df              ??         DFh
       0000:1e6e df              ??         DFh
       0000:1e6f df              ??         DFh
       0000:1e70 df              ??         DFh
       0000:1e71 df              ??         DFh
       0000:1e72 df              ??         DFh
       0000:1e73 df              ??         DFh
       0000:1e74 df              ??         DFh
       0000:1e75 df              ??         DFh
       0000:1e76 df              ??         DFh
       0000:1e77 df              ??         DFh
       0000:1e78 df              ??         DFh
       0000:1e79 df              ??         DFh
       0000:1e7a df              ??         DFh
       0000:1e7b df              ??         DFh
       0000:1e7c df              ??         DFh
       0000:1e7d df              ??         DFh
       0000:1e7e df              ??         DFh
       0000:1e7f df              ??         DFh
       0000:1e80 df              ??         DFh
       0000:1e81 df              ??         DFh
       0000:1e82 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e85 45              INC        BP
       0000:1e86 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e89 45              INC        BP
       0000:1e8a df 45 00        FILD       word ptr [DI + 0x0]
       0000:1e8d 45              INC        BP
       0000:1e8e df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e91 45              INC        BP
       0000:1e92 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1e95 45              INC        BP
       0000:1e96 df              ??         DFh
       0000:1e97 df              ??         DFh
       0000:1e98 df              ??         DFh
       0000:1e99 df              ??         DFh
       0000:1e9a df              ??         DFh
       0000:1e9b df              ??         DFh
       0000:1e9c df              ??         DFh
       0000:1e9d df              ??         DFh
       0000:1e9e df              ??         DFh
       0000:1e9f df              ??         DFh
       0000:1ea0 df              ??         DFh
       0000:1ea1 df              ??         DFh
       0000:1ea2 df              ??         DFh
       0000:1ea3 dd be 92 9e     FNSTSW     word ptr [BP + 0x9e92]
       0000:1ea7 8d 90 90 dd     LEA        DX,[BX + SI + 0xdd90]
       0000:1eab d3 df           RCR        DI,CL
       0000:1ead a8 9a           TEST       AL,0x9a
       0000:1eaf 96              XCHG       AX,SI
       0000:1eb0 8d              ??         8Dh
       0000:1eb1 df b3 9e 91     FBSTP      tword ptr [BP + DI + 0x919e]
       0000:1eb5 9a d3 df        CALLF      SUB_a000_cb43
                 b7 9e
       0000:1eba 91              XCHG       AX,CX
       0000:1ebb 88 90 90 9b     MOV        byte ptr [BX + SI + 0x9b90],DL
       0000:1ebf d3 df           RCR        DI,CL
       0000:1ec1 df              ??         DFh
       0000:1ec2 df              ??         DFh
       0000:1ec3 df              ??         DFh
       0000:1ec4 df              ??         DFh
       0000:1ec5 df              ??         DFh
       0000:1ec6 df              ??         DFh
       0000:1ec7 df              ??         DFh
       0000:1ec8 df              ??         DFh
       0000:1ec9 df              ??         DFh
       0000:1eca df              ??         DFh
       0000:1ecb df              ??         DFh
       0000:1ecc df              ??         DFh
       0000:1ecd df              ??         DFh
       0000:1ece df              ??         DFh
       0000:1ecf df              ??         DFh
       0000:1ed0 df              ??         DFh
       0000:1ed1 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1ed4 45              INC        BP
       0000:1ed5 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1ed8 45              INC        BP
       0000:1ed9 df 45 00        FILD       word ptr [DI + 0x0]
       0000:1edc 45              INC        BP
       0000:1edd df 45 df        FILD       word ptr [DI + -0x21]
       0000:1ee0 45              INC        BP
       0000:1ee1 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1ee4 45              INC        BP
       0000:1ee5 df              ??         DFh
       0000:1ee6 df              ??         DFh
       0000:1ee7 df              ??         DFh
       0000:1ee8 df              ??         DFh
       0000:1ee9 df              ??         DFh
       0000:1eea df              ??         DFh
       0000:1eeb df              ??         DFh
       0000:1eec df              ??         DFh
       0000:1eed df              ??         DFh
       0000:1eee df              ??         DFh
       0000:1eef df              ??         DFh
       0000:1ef0 df              ??         DFh
       0000:1ef1 df ac 97 8d     FILD       qword ptr [SI + 0x8d97]
       0000:1ef5 9a 88 8c        CALLF      SUB_9000_3658
                 9d 8a
       0000:1efa 8d 86 d3 df     LEA        AX,[BP + 0xdfd3]
       0000:1efe ac              LODSB      SI
       0000:1eff 97              XCHG       AX,DI
       0000:1f00 8d 90 8f 8c     LEA        DX,[BX + SI + 0x8c8f]
       0000:1f04 97              XCHG       AX,DI
       0000:1f05 96              XCHG       AX,SI
       0000:1f06 8d 9a d1 df     LEA        BX,[BP + SI + 0xdfd1]
       0000:1f0a df ac a6 ca     FILD       qword ptr [SI + 0xcaa6]
       0000:1f0e df c7           FFREEP     ST7
       0000:1f10 b5 a6           MOV        CH,0xa6
       0000:1f12 d1 df           RCR        DI,0x1
       0000:1f14 df              ??         DFh
       0000:1f15 df              ??         DFh
       0000:1f16 df              ??         DFh
       0000:1f17 df              ??         DFh
       0000:1f18 df              ??         DFh
       0000:1f19 df              ??         DFh
       0000:1f1a df              ??         DFh
       0000:1f1b df              ??         DFh
       0000:1f1c df              ??         DFh
       0000:1f1d df              ??         DFh
       0000:1f1e df              ??         DFh
       0000:1f1f df              ??         DFh
       0000:1f20 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f23 45              INC        BP
       0000:1f24 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f27 45              INC        BP
       0000:1f28 df 45 00        FILD       word ptr [DI + 0x0]
       0000:1f2b 37              AAA
       0000:1f2c 32 46 df        XOR        AL,byte ptr [BP + -0x21]
       0000:1f2f 45              INC        BP
       0000:1f30 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f33 45              INC        BP
       0000:1f34 df              ??         DFh
       0000:1f35 df              ??         DFh
       0000:1f36 df              ??         DFh
       0000:1f37 df              ??         DFh
       0000:1f38 df              ??         DFh
       0000:1f39 df              ??         DFh
       0000:1f3a df              ??         DFh
       0000:1f3b df              ??         DFh
       0000:1f3c df              ??         DFh
       0000:1f3d df              ??         DFh
       0000:1f3e df              ??         DFh
       0000:1f3f df              ??         DFh
       0000:1f40 df              ??         DFh
       0000:1f41 df              ??         DFh
       0000:1f42 df              ??         DFh
       0000:1f43 df              ??         DFh
       0000:1f44 df              ??         DFh
       0000:1f45 df              ??         DFh
       0000:1f46 df              ??         DFh
       0000:1f47 df              ??         DFh
       0000:1f48 df              ??         DFh
       0000:1f49 df              ??         DFh
       0000:1f4a df              ??         DFh
       0000:1f4b df              ??         DFh
       0000:1f4c df              ??         DFh
       0000:1f4d df              ??         DFh
       0000:1f4e df              ??         DFh
       0000:1f4f df              ??         DFh
       0000:1f50 df              ??         DFh
       0000:1f51 df              ??         DFh
       0000:1f52 df              ??         DFh
       0000:1f53 df              ??         DFh
       0000:1f54 df              ??         DFh
       0000:1f55 df              ??         DFh
       0000:1f56 df              ??         DFh
       0000:1f57 df              ??         DFh
       0000:1f58 df              ??         DFh
       0000:1f59 df              ??         DFh
       0000:1f5a df              ??         DFh
       0000:1f5b df              ??         DFh
       0000:1f5c df              ??         DFh
       0000:1f5d df              ??         DFh
       0000:1f5e df              ??         DFh
       0000:1f5f df              ??         DFh
       0000:1f60 df              ??         DFh
       0000:1f61 df              ??         DFh
       0000:1f62 df              ??         DFh
       0000:1f63 df              ??         DFh
       0000:1f64 df              ??         DFh
       0000:1f65 df              ??         DFh
       0000:1f66 df              ??         DFh
       0000:1f67 df              ??         DFh
       0000:1f68 df              ??         DFh
       0000:1f69 df              ??         DFh
       0000:1f6a df              ??         DFh
       0000:1f6b df              ??         DFh
       0000:1f6c df              ??         DFh
       0000:1f6d df              ??         DFh
       0000:1f6e df              ??         DFh
       0000:1f6f df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f72 45              INC        BP
       0000:1f73 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f76 33 32           XOR        SI,word ptr [BP + SI]
       0000:1f78 43              INC        BX
       0000:1f79 00 df           ADD        BH,BL
       0000:1f7b df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f7e 45              INC        BP
       0000:1f7f df 45 df        FILD       word ptr [DI + -0x21]
       0000:1f82 45              INC        BP
       0000:1f83 df              ??         DFh
       0000:1f84 df af 93 9a     FILD       qword ptr [BX + 0x9a93]
       0000:1f88 9e              SAHF
       0000:1f89 8c 9a df 92     MOV        word ptr [BP + SI + 0x92df],DS
       0000:1f8d 9e              SAHF
       0000:1f8e 8d 94 df 8b     LEA        DX,[SI + 0x8bdf]
       0000:1f92 97              XCHG       AX,DI
       0000:1f93 9a df 9a        CALLF      SUB_9000_33ef
                 91 89
       0000:1f98 9a 93 90        CALLF      SUB_a000_3983
                 8f 9a
       0000:1f9d df              ??         DFh
       0000:1f9e dd              ??         DDh
       0000:1f9f af              SCASW      ES:DI
       0000:1fa0 9e              SAHF
       0000:1fa1 8d 9e 91 90     LEA        BX,[BP + 0x9091]
       0000:1fa5 96              XCHG       AX,SI
       0000:1fa6 9b              WAIT
       0000:1fa7 dd d1           FST        ST1
       0000:1fa9 df              ??         DFh
       0000:1faa df              ??         DFh
       0000:1fab df              ??         DFh
       0000:1fac df              ??         DFh
       0000:1fad df              ??         DFh
       0000:1fae df              ??         DFh
       0000:1faf df              ??         DFh
       0000:1fb0 df              ??         DFh
       0000:1fb1 df              ??         DFh
       0000:1fb2 df              ??         DFh
       0000:1fb3 df              ??         DFh
       0000:1fb4 df              ??         DFh
       0000:1fb5 df              ??         DFh
       0000:1fb6 df              ??         DFh
       0000:1fb7 df              ??         DFh
       0000:1fb8 df              ??         DFh
       0000:1fb9 df              ??         DFh
       0000:1fba df              ??         DFh
       0000:1fbb df              ??         DFh
       0000:1fbc df              ??         DFh
       0000:1fbd df              ??         DFh
       0000:1fbe df 45 df        FILD       word ptr [DI + -0x21]
       0000:1fc1 45              INC        BP
       0000:1fc2 df 45 df        FILD       word ptr [DI + -0x21]
       0000:1fc5 45              INC        BP
       0000:1fc6 00 df           ADD        BH,BL
       0000:1fc8 df 37           FBSTP      tword ptr [BX]
       0000:1fca 32 46 df        XOR        AL,byte ptr [BP + -0x21]
       0000:1fcd 45              INC        BP
       0000:1fce df 45 df        FILD       word ptr [DI + -0x21]
       0000:1fd1 df              ??         DFh
       0000:1fd2 df              ??         DFh
       0000:1fd3 df              ??         DFh
       0000:1fd4 df              ??         DFh
       0000:1fd5 df              ??         DFh
       0000:1fd6 df              ??         DFh
       0000:1fd7 df              ??         DFh
       0000:1fd8 df              ??         DFh
       0000:1fd9 df              ??         DFh
       0000:1fda df              ??         DFh
       0000:1fdb df              ??         DFh
       0000:1fdc df              ??         DFh
       0000:1fdd df              ??         DFh
       0000:1fde df              ??         DFh
       0000:1fdf df              ??         DFh
       0000:1fe0 df              ??         DFh
       0000:1fe1 df              ??         DFh
       0000:1fe2 df              ??         DFh
       0000:1fe3 df              ??         DFh
       0000:1fe4 df              ??         DFh
       0000:1fe5 df              ??         DFh
       0000:1fe6 df              ??         DFh
       0000:1fe7 df              ??         DFh
       0000:1fe8 df              ??         DFh
       0000:1fe9 df              ??         DFh
       0000:1fea df              ??         DFh
       0000:1feb df              ??         DFh
       0000:1fec df              ??         DFh
       0000:1fed df              ??         DFh
       0000:1fee df              ??         DFh
       0000:1fef df              ??         DFh
       0000:1ff0 df              ??         DFh
       0000:1ff1 df              ??         DFh
       0000:1ff2 df              ??         DFh
       0000:1ff3 df              ??         DFh
       0000:1ff4 df              ??         DFh
       0000:1ff5 df              ??         DFh
       0000:1ff6 df              ??         DFh
       0000:1ff7 df              ??         DFh
       0000:1ff8 df              ??         DFh
       0000:1ff9 df              ??         DFh
       0000:1ffa df              ??         DFh
       0000:1ffb df              ??         DFh
       0000:1ffc df              ??         DFh
       0000:1ffd df              ??         DFh
       0000:1ffe df              ??         DFh
       0000:1fff df              ??         DFh
       0000:2000 df              ??         DFh
       0000:2001 df              ??         DFh
       0000:2002 df              ??         DFh
       0000:2003 df              ??         DFh
       0000:2004 df              ??         DFh
       0000:2005 df              ??         DFh
       0000:2006 df              ??         DFh
       0000:2007 df              ??         DFh
       0000:2008 df              ??         DFh
       0000:2009 df              ??         DFh
       0000:200a df              ??         DFh
       0000:200b df 45 df        FILD       word ptr [DI + -0x21]
       0000:200e 45              INC        BP
       0000:200f df 33           FBSTP      tword ptr [BP + DI]
       0000:2011 32 43 00        XOR        AL,byte ptr [BP + DI + 0x0]
       0000:2014 df              ??         DFh
       0000:2015 df              ??         DFh
       0000:2016 df              ??         DFh
       0000:2017 df 45 df        FILD       word ptr [DI + -0x21]
       0000:201a 45              INC        BP
       0000:201b df 45 df        FILD       word ptr [DI + -0x21]
       0000:201e df a8 97 9a     FILD       qword ptr [BX + SI + 0x9a97]
       0000:2022 91              XCHG       AX,CX
       0000:2023 df 86 90 8a     FILD       word ptr [BP + 0x8a90]
       0000:2027 df 8d 9a 98     FISTTP     word ptr [DI + 0x989a]
       0000:202b 96              XCHG       AX,SI
       0000:202c 8c 8b 9a 8d     MOV        word ptr [BP + DI + 0x8d9a],CS
       0000:2030 df 8b 97 96     FISTTP     word ptr [BP + DI + 0x9697]
       0000:2034 8c df           MOV        DI,DS
       0000:2036 98              CBW
       0000:2037 9e              SAHF
       0000:2038 92              XCHG       AX,DX
       0000:2039 9a d3 df        CALLF      SUB_9000_e8e3
                 91 90
       0000:203e 8b df           MOV        BX,DI
       0000:2040 90              NOP
       0000:2041 91              XCHG       AX,CX
       0000:2042 93              XCHG       AX,BX
       0000:2043 86 df           XCHG       BH,BL
       0000:2045 88 96 93 93     MOV        byte ptr [BP + 0x9393],DL
       0000:2049 df 86 90 8a     FILD       word ptr [BP + 0x8a90]
       0000:204d df 9d 9a df     FISTP      word ptr [DI + 0xdf9a]
       0000:2051 99              CWD
       0000:2052 8d 9a 9a df     LEA        BX,[BP + SI + 0xdf9a]
       0000:2056 df              ??         DFh
       0000:2057 df              ??         DFh
       0000:2058 df 45 df        FILD       word ptr [DI + -0x21]
       0000:205b 45              INC        BP
       0000:205c df 45 00        FILD       word ptr [DI + 0x0]
       0000:205f df              ??         DFh
       0000:2060 df              ??         DFh
       0000:2061 df              ??         DFh
       0000:2062 df 37           FBSTP      tword ptr [BX]
       0000:2064 32 46 df        XOR        AL,byte ptr [BP + -0x21]
       0000:2067 45              INC        BP
       0000:2068 df              ??         DFh
       0000:2069 df 99 8d 90     FISTP      word ptr [BX + DI + 0x908d]
       0000:206d 92              XCHG       AX,DX
       0000:206e df 98 8a 96     FISTP      word ptr [BX + SI + 0x968a]
       0000:2072 93              XCHG       AX,BX
       0000:2073 8b d3           MOV        DX,BX
       0000:2075 df 86 90 8a     FILD       word ptr [BP + 0x8a90]
       0000:2079 df 88 96 93     FISTTP     word ptr [BX + SI + 0x9396]
       0000:207d 93              XCHG       AX,BX
       0000:207e df 8d 9a 9c     FISTTP     word ptr [DI + 0x9c9a]
       0000:2082 9a 96 89        CALLF      SUB_e000_8336
                 9a df
       0000:2087 9e              SAHF
       0000:2088 df 8d 9a 98     FISTTP     word ptr [DI + 0x989a]
       0000:208c 96              XCHG       AX,SI
       0000:208d 8c 8b 9a 8d     MOV        word ptr [BP + DI + 0x8d9a],CS
       0000:2091 9a 9b df        CALLF      SUB_9000_e95b
                 9c 90
       0000:2096 8f 86 df 90     POP        word ptr [BP + 0x90df]
       0000:209a 99              CWD
       0000:209b df 8b 97 9a     FISTTP     word ptr [BP + DI + 0x9a97]
       0000:209f df              ??         DFh
       0000:20a0 df              ??         DFh
       0000:20a1 df              ??         DFh
       0000:20a2 df              ??         DFh
       0000:20a3 df 45 df        FILD       word ptr [DI + -0x21]
       0000:20a6 33 32           XOR        SI,word ptr [BP + SI]
       0000:20a8 43              INC        BX
       0000:20a9 00 df           ADD        BH,BL
       0000:20ab df              ??         DFh
       0000:20ac df              ??         DFh
       0000:20ad df              ??         DFh
       0000:20ae df              ??         DFh
       0000:20af df 45 df        FILD       word ptr [DI + -0x21]
       0000:20b2 45              INC        BP
       0000:20b3 df              ??         DFh
       0000:20b4 df 98 9e 92     FISTP      word ptr [BX + SI + 0x929e]
       0000:20b8 9a d3 df        CALLF      SUB_9000_f9b3
                 9e 91
       0000:20bd 90              NOP
       0000:20be 8b 97 9a 8d     MOV        DX,word ptr [BX + 0x8d9a]
       0000:20c2 df 8b 97 96     FISTTP     word ptr [BP + DI + 0x9697]
       0000:20c6 8d 8b 86 df     LEA        CX,[BP + DI + 0xdf86]
       0000:20ca 93              XCHG       AX,BX
       0000:20cb 9a 89 9a        CALLF      SUB_9000_63b9
                 93 8c
       0000:20d0 df 90 99 df     FIST       word ptr [BX + SI + 0xdf99]
       0000:20d4 9d              POPF
       0000:20d5 9e              SAHF
       0000:20d6 93              XCHG       AX,BX
       0000:20d7 93              XCHG       AX,BX
       0000:20d8 d2 9d 90 8a     RCR        byte ptr [DI + 0x8a90],CL
       0000:20dc 91              XCHG       AX,CX
       0000:20dd 9c              PUSHF
       0000:20de 96              XCHG       AX,SI
       0000:20df 91              XCHG       AX,CX
       0000:20e0 98              CBW
       0000:20e1 df 99 8a 91     FISTP      word ptr [BX + DI + 0x918a]
       0000:20e5 d3 df           RCR        DI,CL
       0000:20e7 9e              SAHF
       0000:20e8 df              ??         DFh
       0000:20e9 df              ??         DFh
       0000:20ea df              ??         DFh
       0000:20eb df              ??         DFh
       0000:20ec df              ??         DFh
       0000:20ed df              ??         DFh
       0000:20ee df 45 df        FILD       word ptr [DI + -0x21]
       0000:20f1 45              INC        BP
       0000:20f2 00 df           ADD        BH,BL
       0000:20f4 df              ??         DFh
       0000:20f5 df              ??         DFh
       0000:20f6 df              ??         DFh
       0000:20f7 df              ??         DFh
       0000:20f8 df 37           FBSTP      tword ptr [BX]
       0000:20fa 32 46 df        XOR        AL,byte ptr [BP + -0x21]
       0000:20fd df 93 9a 89     FIST       word ptr [BP + DI + 0x899a]
       0000:2101 9a 93 df        CALLF      SUB_a000_8943
                 9b 9a
       0000:2106 8c 96 98 91     MOV        word ptr [BP + 0x9198],SS
       0000:210a 9a 8d d3        CALLF      SUB_a000_c17d
                 df 9e
       0000:210f 91              XCHG       AX,CX
       0000:2110 9b              WAIT
       0000:2111 df 9c 8a 8b     FISTP      word ptr [SI + 0x8b8a]
       0000:2115 d2 8f 8d 96     ROR        byte ptr [BX + 0x968d],CL
       0000:2119 9c              PUSHF
       0000:211a 9a df 8a        CALLF      SUB_a000_43cf
                 8f 9b
       0000:211f 9e              SAHF
       0000:2120 8b 9a 8c df     MOV        BX,word ptr [BP + SI + 0xdf8c]
       0000:2124 88 97 9a 91     MOV        byte ptr [BX + 0x919a],DL
       0000:2128 df 9e 89 9e     FISTP      word ptr [BP + 0x9e89]
       0000:212c 96              XCHG       AX,SI
       0000:212d 93              XCHG       AX,BX
       0000:212e 9e              SAHF
       0000:212f 9d              POPF
       0000:2130 93              XCHG       AX,BX
       0000:2131 9a d1 df        CALLF      SUB_e000_ddc1
                 df df
       0000:2136 df              ??         DFh
       0000:2137 df 33           FBSTP      tword ptr [BP + DI]
       0000:2139 32 43 00        XOR        AL,byte ptr [BP + DI + 0x0]
       0000:213c df              ??         DFh
       0000:213d df              ??         DFh
       0000:213e df              ??         DFh
       0000:213f df              ??         DFh
       0000:2140 df              ??         DFh
       0000:2141 df              ??         DFh
       0000:2142 df              ??         DFh
       0000:2143 df 45 df        FILD       word ptr [DI + -0x21]
       0000:2146 df              ??         DFh
       0000:2147 df              ??         DFh
       0000:2148 df              ??         DFh
       0000:2149 df              ??         DFh
       0000:214a df              ??         DFh
       0000:214b df              ??         DFh
       0000:214c df              ??         DFh
       0000:214d df              ??         DFh
       0000:214e df              ??         DFh
       0000:214f df              ??         DFh
       0000:2150 df              ??         DFh
       0000:2151 df              ??         DFh
       0000:2152 df              ??         DFh
       0000:2153 df              ??         DFh
       0000:2154 df              ??         DFh
       0000:2155 df              ??         DFh
       0000:2156 df              ??         DFh
       0000:2157 df              ??         DFh
       0000:2158 df              ??         DFh
       0000:2159 df              ??         DFh
       0000:215a df              ??         DFh
       0000:215b df              ??         DFh
       0000:215c df              ??         DFh
       0000:215d df              ??         DFh
       0000:215e df              ??         DFh
       0000:215f df              ??         DFh
       0000:2160 df              ??         DFh
       0000:2161 df              ??         DFh
       0000:2162 df              ??         DFh
       0000:2163 df              ??         DFh
       0000:2164 df              ??         DFh
       0000:2165 df              ??         DFh
       0000:2166 df              ??         DFh
       0000:2167 df              ??         DFh
       0000:2168 df              ??         DFh
       0000:2169 df              ??         DFh
       0000:216a df              ??         DFh
       0000:216b df              ??         DFh
       0000:216c df              ??         DFh
       0000:216d df              ??         DFh
       0000:216e df              ??         DFh
       0000:216f df              ??         DFh
       0000:2170 df              ??         DFh
       0000:2171 df              ??         DFh
       0000:2172 df              ??         DFh
       0000:2173 df              ??         DFh
       0000:2174 df              ??         DFh
       0000:2175 df              ??         DFh
       0000:2176 df              ??         DFh
       0000:2177 df              ??         DFh
       0000:2178 df              ??         DFh
       0000:2179 df              ??         DFh
       0000:217a df              ??         DFh
       0000:217b df              ??         DFh
       0000:217c df              ??         DFh
       0000:217d df              ??         DFh
       0000:217e df              ??         DFh
       0000:217f df              ??         DFh
       0000:2180 df 45 00        FILD       word ptr [DI + 0x0]
       0000:2183 df              ??         DFh
       0000:2184 df              ??         DFh
       0000:2185 df              ??         DFh
       0000:2186 df              ??         DFh
       0000:2187 df              ??         DFh
       0000:2188 df              ??         DFh
       0000:2189 df              ??         DFh
       0000:218a df 37           FBSTP      tword ptr [BX]
       0000:218c 32 32           XOR        DH,byte ptr [BP + SI]
       0000:218e 32 32           XOR        DH,byte ptr [BP + SI]
       0000:2190 32 32           XOR        DH,byte ptr [BP + SI]
       0000:2192 32 32           XOR        DH,byte ptr [BP + SI]
       0000:2194 32 32           XOR        DH,byte ptr [BP + SI]
       0000:2196 32 32           XOR        DH,byte ptr [BP + SI]
       0000:2198 32 32           XOR        DH,byte ptr [BP + SI]
       0000:219a 32 32           XOR        DH,byte ptr [BP + SI]
       0000:219c 32 32           XOR        DH,byte ptr [BP + SI]
       0000:219e 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21a0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21a2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21a4 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21a6 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21a8 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21aa 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21ac 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21ae 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21b0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21b2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21b4 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21b6 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21b8 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21ba 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21bc 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21be 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21c0 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21c2 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21c4 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21c6 32 32           XOR        DH,byte ptr [BP + SI]
       0000:21c8 43              INC        BX
       0000:21c9 00 00           ADD        byte ptr [BX + SI],AL
       0000:21cb 00 af 8d 9a     ADD        byte ptr [BX + 0x9a8d],CH
       0000:21cf 8c 8c df 9e     MOV        word ptr [SI + 0x9edf],CS
       0000:21d3 df 94 9a 86     FIST       word ptr [SI + 0x869a]
       0000:21d7 d1 00           ROL        word ptr [BX + SI],0x1
       0000:21d9 ff 31           PUSH       word ptr [BX + DI]
       0000:21db 00 e2           ADD        DL,AH
       0000:21dd 7e 3b           JLE        LAB_0000_221a
       0000:21df 27              DAA
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_21e0()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_21e0                                   XREF[1]:     FUN_0000_220a:0000:221c(c)  
       0000:21e0 57              PUSH       DI
       0000:21e1 bf 0e c3        MOV        DI,0xc30e
                             LAB_0000_21e4                                   XREF[1]:     0000:21f2(j)  
       0000:21e4 f7 45 04        TEST       word ptr [DI + 0x4],0xffff
                 ff ff
       0000:21e9 74 0b           JZ         LAB_0000_21f6
       0000:21eb 83 c7 10        ADD        DI,0x10
       0000:21ee 81 ff 4e c3     CMP        DI,0xc34e
       0000:21f2 72 f0           JC         LAB_0000_21e4
       0000:21f4 eb 12           JMP        LAB_0000_2208
                             LAB_0000_21f6                                   XREF[1]:     0000:21e9(j)  
       0000:21f6 89 05           MOV        word ptr [DI],AX
       0000:21f8 c7 45 02        MOV        word ptr [DI + 0x2],0x140
                 40 01
       0000:21fd c7 45 04        MOV        word ptr [DI + 0x4],0x1
                 01 00
       0000:2202 bf b7 0c        MOV        DI,0xcb7
       0000:2205 e8 d7 30        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
                             LAB_0000_2208                                   XREF[1]:     0000:21f4(j)  
       0000:2208 5f              POP        DI
       0000:2209 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_220a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_220a                                   XREF[1]:     0000:3a97(c)  
       0000:220a 50              PUSH       AX
       0000:220b 52              PUSH       DX
       0000:220c a1 47 d2        MOV        AX,[0xd247]
       0000:220f 8a 16 49 d2     MOV        DL,byte ptr [0xd249]
       0000:2213 32 f6           XOR        DH,DH
       0000:2215 d1 e2           SHL        DX,0x1
       0000:2217 d1 e2           SHL        DX,0x1
       0000:2219 4a              DEC        DX
                             LAB_0000_221a                                   XREF[1]:     0000:21dd(j)  
       0000:221a 01 d0           ADD        AX,DX
       0000:221c e8 c1 ff        CALL       FUN_0000_21e0                                    undefined FUN_0000_21e0()
       0000:221f 5a              POP        DX
       0000:2220 58              POP        AX
       0000:2221 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2222()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2222                                   XREF[1]:     0000:22aa(c)  
       0000:2222 50              PUSH       AX
       0000:2223 53              PUSH       BX
       0000:2224 51              PUSH       CX
       0000:2225 52              PUSH       DX
       0000:2226 56              PUSH       SI
       0000:2227 32 f6           XOR        DH,DH
       0000:2229 b1 04           MOV        CL,0x4
       0000:222b d3 e2           SHL        DX,CL
       0000:222d be 0e c3        MOV        SI,0xc30e
       0000:2230 03 f2           ADD        SI,DX
       0000:2232 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       0000:2235 2d 03 00        SUB        AX,0x3
       0000:2238 89 44 02        MOV        word ptr [SI + 0x2],AX
       0000:223b 3d 08 00        CMP        AX,0x8
       0000:223e 76 0a           JBE        LAB_0000_224a
       0000:2240 8b 04           MOV        AX,word ptr [SI]
       0000:2242 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:2245 e8 0d 00        CALL       FUN_0000_2255                                    undefined FUN_0000_2255()
       0000:2248 73 05           JNC        LAB_0000_224f
                             LAB_0000_224a                                   XREF[1]:     0000:223e(j)  
       0000:224a c7 44 04        MOV        word ptr [SI + 0x4],0x0
                 00 00
                             LAB_0000_224f                                   XREF[1]:     0000:2248(j)  
       0000:224f 5e              POP        SI
       0000:2250 5a              POP        DX
       0000:2251 59              POP        CX
       0000:2252 5b              POP        BX
       0000:2253 58              POP        AX
       0000:2254 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2255()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2255                                   XREF[1]:     FUN_0000_2222:0000:2245(c)  
       0000:2255 50              PUSH       AX
       0000:2256 53              PUSH       BX
       0000:2257 51              PUSH       CX
       0000:2258 57              PUSH       DI
       0000:2259 89 c1           MOV        CX,AX
       0000:225b 8b c3           MOV        AX,BX
       0000:225d b3 0c           MOV        BL,0xc
       0000:225f f6 f3           DIV        BL
       0000:2261 32 e4           XOR        AH,AH
       0000:2263 48              DEC        AX
       0000:2264 50              PUSH       AX
       0000:2265 89 c8           MOV        AX,CX
       0000:2267 2d 0f 00        SUB        AX,0xf
       0000:226a d1 e8           SHR        AX,0x1
       0000:226c d1 e8           SHR        AX,0x1
       0000:226e d1 e8           SHR        AX,0x1
       0000:2270 d1 e8           SHR        AX,0x1
       0000:2272 d1 e8           SHR        AX,0x1
       0000:2274 5b              POP        BX
       0000:2275 3d 0d 00        CMP        AX,0xd
       0000:2278 77 18           JA         LAB_0000_2292
       0000:227a 83 fb 12        CMP        BX,0x12
       0000:227d 77 13           JA         LAB_0000_2292
       0000:227f e8 78 07        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:2282 84 c9           TEST       CL,CL
       0000:2284 74 0c           JZ         LAB_0000_2292
       0000:2286 e8 ea 07        CALL       FUN_0000_2a73                                    undefined FUN_0000_2a73()
       0000:2289 bf 9e 0c        MOV        DI,0xc9e
       0000:228c e8 50 30        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:228f f9              STC
       0000:2290 eb 01           JMP        LAB_0000_2293
                             LAB_0000_2292                                   XREF[3]:     0000:2278(j), 0000:227d(j), 
                                                                                          0000:2284(j)  
       0000:2292 f8              CLC
                             LAB_0000_2293                                   XREF[1]:     0000:2290(j)  
       0000:2293 5f              POP        DI
       0000:2294 59              POP        CX
       0000:2295 5b              POP        BX
       0000:2296 58              POP        AX
       0000:2297 c3              RET
       0000:2298 51              PUSH       CX
       0000:2299 52              PUSH       DX
       0000:229a 56              PUSH       SI
       0000:229b b2 00           MOV        DL,0x0
       0000:229d b9 04 00        MOV        CX,0x4
       0000:22a0 be 0e c3        MOV        SI,0xc30e
                             LAB_0000_22a3                                   XREF[1]:     0000:22b2(j)  
       0000:22a3 f7 44 04        TEST       word ptr [SI + 0x4],0x1
                 01 00
       0000:22a8 74 03           JZ         LAB_0000_22ad
       0000:22aa e8 75 ff        CALL       FUN_0000_2222                                    undefined FUN_0000_2222()
                             LAB_0000_22ad                                   XREF[1]:     0000:22a8(j)  
       0000:22ad fe c2           INC        DL
       0000:22af 83 c6 10        ADD        SI,0x10
       0000:22b2 e2 ef           LOOP       LAB_0000_22a3
       0000:22b4 5e              POP        SI
       0000:22b5 5a              POP        DX
       0000:22b6 59              POP        CX
       0000:22b7 c3              RET
       0000:22b8 31 00           XOR        word ptr [BX + SI],AX
       0000:22ba e2 7e           LOOP       LAB_0000_233a
       0000:22bc 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_22be()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_22be                                   XREF[1]:     FUN_0000_22fe:0000:2333(c)  
       0000:22be 50              PUSH       AX
       0000:22bf 56              PUSH       SI
       0000:22c0 57              PUSH       DI
       0000:22c1 bf cd c2        MOV        DI,0xc2cd
                             LAB_0000_22c4                                   XREF[1]:     0000:22d1(j)  
       0000:22c4 f6 45 08 ff     TEST       byte ptr [DI + 0x8],0xff
       0000:22c8 74 0b           JZ         LAB_0000_22d5
       0000:22ca 83 c7 09        ADD        DI,0x9
       0000:22cd 81 ff fa c2     CMP        DI,0xc2fa
       0000:22d1 72 f1           JC         LAB_0000_22c4
       0000:22d3 eb 25           JMP        LAB_0000_22fa
                             LAB_0000_22d5                                   XREF[1]:     0000:22c8(j)  
       0000:22d5 89 05           MOV        word ptr [DI],AX
       0000:22d7 89 5d 02        MOV        word ptr [DI + 0x2],BX
       0000:22da 88 55 04        MOV        byte ptr [DI + 0x4],DL
       0000:22dd be 31 0c        MOV        SI,0xc31
       0000:22e0 8a c2           MOV        AL,DL
       0000:22e2 32 e4           XOR        AH,AH
       0000:22e4 d1 e0           SHL        AX,0x1
       0000:22e6 01 c6           ADD        SI,AX
       0000:22e8 8a 04           MOV        AL,byte ptr [SI]=>LAB_0000_0c31
       0000:22ea 8a 64 01        MOV        AH,byte ptr [SI + 0x1]=>LAB_0000_0c31+1
       0000:22ed 88 45 05        MOV        byte ptr [DI + 0x5],AL
       0000:22f0 88 45 06        MOV        byte ptr [DI + 0x6],AL
       0000:22f3 88 65 07        MOV        byte ptr [DI + 0x7],AH
       0000:22f6 c6 45 08 01     MOV        byte ptr [DI + 0x8],0x1
                             LAB_0000_22fa                                   XREF[1]:     0000:22d3(j)  
       0000:22fa 5f              POP        DI
       0000:22fb 5e              POP        SI
       0000:22fc 58              POP        AX
       0000:22fd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_22fe()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_22fe                                   XREF[1]:     FUN_0000_2a73:0000:2a7a(c)  
       0000:22fe 50              PUSH       AX
       0000:22ff 53              PUSH       BX
       0000:2300 52              PUSH       DX
       0000:2301 57              PUSH       DI
       0000:2302 8b f8           MOV        DI,AX
       0000:2304 d1 e7           SHL        DI,0x1
       0000:2306 d1 e7           SHL        DI,0x1
       0000:2308 d1 e7           SHL        DI,0x1
       0000:230a 01 c7           ADD        DI,AX
       0000:230c d1 e7           SHL        DI,0x1
       0000:230e 01 c7           ADD        DI,AX
       0000:2310 03 fb           ADD        DI,BX
       0000:2312 8a 95 0a 82     MOV        DL,byte ptr [DI + 0x820a]
       0000:2316 84 d2           TEST       DL,DL
       0000:2318 78 1c           JS         LAB_0000_2336
       0000:231a c6 85 0a        MOV        byte ptr [DI + 0x820a],0xff
                 82 ff
       0000:231f d1 e0           SHL        AX,0x1
       0000:2321 d1 e0           SHL        AX,0x1
       0000:2323 05 03 00        ADD        AX,0x3
       0000:2326 89 df           MOV        DI,BX
       0000:2328 d1 e3           SHL        BX,0x1
       0000:232a 03 df           ADD        BX,DI
       0000:232c d1 e3           SHL        BX,0x1
       0000:232e d1 e3           SHL        BX,0x1
       0000:2330 83 c3 0c        ADD        BX,0xc
       0000:2333 e8 88 ff        CALL       FUN_0000_22be                                    undefined FUN_0000_22be()
                             LAB_0000_2336                                   XREF[1]:     0000:2318(j)  
       0000:2336 5f              POP        DI
       0000:2337 5a              POP        DX
       0000:2338 5b              POP        BX
       0000:2339 58              POP        AX
                             LAB_0000_233a                                   XREF[1]:     0000:22ba(j)  
       0000:233a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_233b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_233b                                   XREF[2]:     FUN_0000_3658:0000:367f(c), 
                                                                                          FUN_0000_3bbd:0000:3bde(c)  
       0000:233b 50              PUSH       AX
       0000:233c 51              PUSH       CX
       0000:233d 57              PUSH       DI
       0000:233e 8a 0e 3b d2     MOV        CL,byte ptr [0xd23b]
       0000:2342 84 c9           TEST       CL,CL
       0000:2344 74 06           JZ         LAB_0000_234c
       0000:2346 fe 0e 3b d2     DEC        byte ptr [0xd23b]
       0000:234a eb 2e           JMP        LAB_0000_237a
                             LAB_0000_234c                                   XREF[1]:     0000:2344(j)  
       0000:234c c6 06 3b        MOV        byte ptr [0xd23b],0x1
                 d2 01
       0000:2351 bf cd c2        MOV        DI,0xc2cd
       0000:2354 b9 05 00        MOV        CX,0x5
                             LAB_0000_2357                                   XREF[1]:     0000:2378(j)  
       0000:2357 f6 45 08 ff     TEST       byte ptr [DI + 0x8],0xff
       0000:235b 74 18           JZ         LAB_0000_2375
       0000:235d e8 33 01        CALL       FUN_0000_2493                                    undefined FUN_0000_2493()
       0000:2360 c6 06 54        MOV        byte ptr [0xd254],0x0
                 d2 00
       0000:2365 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       0000:2368 40              INC        AX
       0000:2369 89 45 02        MOV        word ptr [DI + 0x2],AX
       0000:236c 3d 51 01        CMP        AX,0x151
       0000:236f 76 04           JBE        LAB_0000_2375
       0000:2371 c6 45 08 00     MOV        byte ptr [DI + 0x8],0x0
                             LAB_0000_2375                                   XREF[2]:     0000:235b(j), 0000:236f(j)  
       0000:2375 83 c7 09        ADD        DI,0x9
       0000:2378 e2 dd           LOOP       LAB_0000_2357
                             LAB_0000_237a                                   XREF[1]:     0000:234a(j)  
       0000:237a 5f              POP        DI
       0000:237b 59              POP        CX
       0000:237c 58              POP        AX
       0000:237d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_237e()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_237e                                   XREF[3]:     0000:3697(c), 
                                                                                          FUN_0000_36fd:0000:373c(c), 
                                                                                          FUN_0000_3bbd:0000:3bed(c)  
       0000:237e 50              PUSH       AX
       0000:237f 53              PUSH       BX
       0000:2380 51              PUSH       CX
       0000:2381 52              PUSH       DX
       0000:2382 56              PUSH       SI
       0000:2383 57              PUSH       DI
       0000:2384 ba ce 03        MOV        DX,0x3ce
       0000:2387 b0 05           MOV        AL,0x5
       0000:2389 ee              OUT        DX,AL
       0000:238a 42              INC        DX
       0000:238b b0 11           MOV        AL,0x11
       0000:238d ee              OUT        DX,AL
       0000:238e be fa c2        MOV        SI,0xc2fa
       0000:2391 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:2396 74 03           JZ         LAB_0000_239b
       0000:2398 83 c6 0a        ADD        SI,0xa
                             LAB_0000_239b                                   XREF[1]:     0000:2396(j)  
       0000:239b bf cd c2        MOV        DI,0xc2cd
       0000:239e 32 d2           XOR        DL,DL
       0000:23a0 b9 05 00        MOV        CX,0x5
                             LAB_0000_23a3                                   XREF[1]:     0000:23bd(j)  
       0000:23a3 c7 04 ff ff     MOV        word ptr [SI],0xffff
       0000:23a7 f6 45 08 ff     TEST       byte ptr [DI + 0x8],0xff
       0000:23ab 74 08           JZ         LAB_0000_23b5
       0000:23ad 8b 05           MOV        AX,word ptr [DI]
       0000:23af 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       0000:23b2 e8 ac 35        CALL       FUN_0000_5961                                    undefined FUN_0000_5961()
                             LAB_0000_23b5                                   XREF[1]:     0000:23ab(j)  
       0000:23b5 83 c6 02        ADD        SI,0x2
       0000:23b8 83 c7 09        ADD        DI,0x9
       0000:23bb fe c2           INC        DL
       0000:23bd e2 e4           LOOP       LAB_0000_23a3
       0000:23bf ba ce 03        MOV        DX,0x3ce
       0000:23c2 b0 05           MOV        AL,0x5
       0000:23c4 ee              OUT        DX,AL
       0000:23c5 42              INC        DX
       0000:23c6 b0 10           MOV        AL,0x10
       0000:23c8 ee              OUT        DX,AL
       0000:23c9 5f              POP        DI
       0000:23ca 5e              POP        SI
       0000:23cb 5a              POP        DX
       0000:23cc 59              POP        CX
       0000:23cd 5b              POP        BX
       0000:23ce 58              POP        AX
       0000:23cf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_23d0()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_23d0                                   XREF[2]:     FUN_0000_3658:0000:3688(c), 
                                                                                          FUN_0000_3bbd:0000:3be7(c)  
       0000:23d0 50              PUSH       AX
       0000:23d1 51              PUSH       CX
       0000:23d2 56              PUSH       SI
       0000:23d3 8a 0e 3a d2     MOV        CL,byte ptr [0xd23a]
       0000:23d7 84 c9           TEST       CL,CL
       0000:23d9 74 06           JZ         LAB_0000_23e1
       0000:23db fe 0e 3a d2     DEC        byte ptr [0xd23a]
       0000:23df eb 26           JMP        LAB_0000_2407
                             LAB_0000_23e1                                   XREF[1]:     0000:23d9(j)  
       0000:23e1 c6 06 3a        MOV        byte ptr [0xd23a],0x4
                 d2 04
       0000:23e6 be cd c2        MOV        SI,0xc2cd
       0000:23e9 b9 05 00        MOV        CX,0x5
                             LAB_0000_23ec                                   XREF[1]:     0000:2405(j)  
       0000:23ec f6 44 08 ff     TEST       byte ptr [SI + 0x8],0xff
       0000:23f0 74 10           JZ         LAB_0000_2402
       0000:23f2 8a 44 05        MOV        AL,byte ptr [SI + 0x5]
       0000:23f5 04 02           ADD        AL,0x2
       0000:23f7 3a 44 07        CMP        AL,byte ptr [SI + 0x7]
       0000:23fa 76 03           JBE        LAB_0000_23ff
       0000:23fc 8a 44 06        MOV        AL,byte ptr [SI + 0x6]
                             LAB_0000_23ff                                   XREF[1]:     0000:23fa(j)  
       0000:23ff 88 44 05        MOV        byte ptr [SI + 0x5],AL
                             LAB_0000_2402                                   XREF[1]:     0000:23f0(j)  
       0000:2402 83 c6 09        ADD        SI,0x9
       0000:2405 e2 e5           LOOP       LAB_0000_23ec
                             LAB_0000_2407                                   XREF[1]:     0000:23df(j)  
       0000:2407 5e              POP        SI
       0000:2408 59              POP        CX
       0000:2409 58              POP        AX
       0000:240a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_240b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_240b                                   XREF[4]:     FUN_0000_3610:0000:364a(c), 
                                                                                          0000:36a3(c), 
                                                                                          FUN_0000_36fd:0000:373f(c), 
                                                                                          FUN_0000_3bbd:0000:3bf6(c)  
       0000:240b 50              PUSH       AX
       0000:240c 53              PUSH       BX
       0000:240d 51              PUSH       CX
       0000:240e 52              PUSH       DX
       0000:240f 56              PUSH       SI
       0000:2410 57              PUSH       DI
       0000:2411 ba ce 03        MOV        DX,0x3ce
       0000:2414 b0 05           MOV        AL,0x5
       0000:2416 ee              OUT        DX,AL
       0000:2417 42              INC        DX
       0000:2418 b0 11           MOV        AL,0x11
       0000:241a ee              OUT        DX,AL
       0000:241b bf cd c2        MOV        DI,0xc2cd
       0000:241e b9 05 00        MOV        CX,0x5
                             LAB_0000_2421                                   XREF[1]:     0000:243e(j)  
       0000:2421 f6 45 08 ff     TEST       byte ptr [DI + 0x8],0xff
       0000:2425 74 14           JZ         LAB_0000_243b
       0000:2427 8b 05           MOV        AX,word ptr [DI]
       0000:2429 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       0000:242c be a9 0b        MOV        SI,0xba9
       0000:242f 8a 55 05        MOV        DL,byte ptr [DI + 0x5]
       0000:2432 32 f6           XOR        DH,DH
       0000:2434 03 f2           ADD        SI,DX
       0000:2436 8b 34           MOV        SI,word ptr [SI]=>LAB_0000_0ba8+1
       0000:2438 e8 de 34        CALL       FUN_0000_5919                                    undefined FUN_0000_5919()
                             LAB_0000_243b                                   XREF[1]:     0000:2425(j)  
       0000:243b 83 c7 09        ADD        DI,0x9
       0000:243e e2 e1           LOOP       LAB_0000_2421
       0000:2440 ba ce 03        MOV        DX,0x3ce
       0000:2443 b0 05           MOV        AL,0x5
       0000:2445 ee              OUT        DX,AL
       0000:2446 42              INC        DX
       0000:2447 b0 10           MOV        AL,0x10
       0000:2449 ee              OUT        DX,AL
       0000:244a 5f              POP        DI
       0000:244b 5e              POP        SI
       0000:244c 5a              POP        DX
       0000:244d 59              POP        CX
       0000:244e 5b              POP        BX
       0000:244f 58              POP        AX
       0000:2450 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2451()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2451                                   XREF[7]:     FUN_0000_3610:0000:363b(c), 
                                                                                          FUN_0000_3658:0000:3676(c), 
                                                                                          FUN_0000_36fd:0000:370a(c), 
                                                                                          FUN_0000_36fd:0000:371c(c), 
                                                                                          FUN_0000_3ab5:0000:3ab7(c), 
                                                                                          FUN_0000_3ab5:0000:3abd(c), 
                                                                                          FUN_0000_3bbd:0000:3bd8(c)  
       0000:2451 50              PUSH       AX
       0000:2452 53              PUSH       BX
       0000:2453 51              PUSH       CX
       0000:2454 52              PUSH       DX
       0000:2455 56              PUSH       SI
       0000:2456 57              PUSH       DI
       0000:2457 ba ce 03        MOV        DX,0x3ce
       0000:245a b0 05           MOV        AL,0x5
       0000:245c ee              OUT        DX,AL
       0000:245d 42              INC        DX
       0000:245e b0 11           MOV        AL,0x11
       0000:2460 ee              OUT        DX,AL
       0000:2461 b2 00           MOV        DL,0x0
       0000:2463 be fa c2        MOV        SI,0xc2fa
       0000:2466 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:246b 74 03           JZ         LAB_0000_2470
       0000:246d 83 c6 0a        ADD        SI,0xa
                             LAB_0000_2470                                   XREF[1]:     0000:246b(j)  
       0000:2470 b9 05 00        MOV        CX,0x5
                             LAB_0000_2473                                   XREF[1]:     0000:2480(j)  
       0000:2473 83 3c ff        CMP        word ptr [SI],-0x1
       0000:2476 74 03           JZ         LAB_0000_247b
       0000:2478 e8 50 35        CALL       FUN_0000_59cb                                    undefined FUN_0000_59cb()
                             LAB_0000_247b                                   XREF[1]:     0000:2476(j)  
       0000:247b fe c2           INC        DL
       0000:247d 83 c6 02        ADD        SI,0x2
       0000:2480 e2 f1           LOOP       LAB_0000_2473
       0000:2482 ba ce 03        MOV        DX,0x3ce
       0000:2485 b0 05           MOV        AL,0x5
       0000:2487 ee              OUT        DX,AL
       0000:2488 42              INC        DX
       0000:2489 b0 10           MOV        AL,0x10
       0000:248b ee              OUT        DX,AL
       0000:248c 5f              POP        DI
       0000:248d 5e              POP        SI
       0000:248e 5a              POP        DX
       0000:248f 59              POP        CX
       0000:2490 5b              POP        BX
       0000:2491 58              POP        AX
       0000:2492 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2493()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2493                                   XREF[1]:     FUN_0000_233b:0000:235d(c)  
       0000:2493 50              PUSH       AX
       0000:2494 53              PUSH       BX
       0000:2495 52              PUSH       DX
       0000:2496 56              PUSH       SI
       0000:2497 57              PUSH       DI
       0000:2498 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       0000:249b 3d 3d 01        CMP        AX,0x13d
       0000:249e 76 50           JBE        LAB_0000_24f0
       0000:24a0 3d 4e 01        CMP        AX,0x14e
       0000:24a3 73 4b           JNC        LAB_0000_24f0
       0000:24a5 8b 05           MOV        AX,word ptr [DI]
       0000:24a7 d1 e0           SHL        AX,0x1
       0000:24a9 d1 e0           SHL        AX,0x1
       0000:24ab d1 e0           SHL        AX,0x1
       0000:24ad 05 10 00        ADD        AX,0x10
       0000:24b0 3b 06 47 d2     CMP        AX,word ptr [0xd247]
       0000:24b4 76 3a           JBE        LAB_0000_24f0
       0000:24b6 8a 1e 49 d2     MOV        BL,byte ptr [0xd249]
       0000:24ba d0 e3           SHL        BL,0x1
       0000:24bc d0 e3           SHL        BL,0x1
       0000:24be d0 e3           SHL        BL,0x1
       0000:24c0 32 ff           XOR        BH,BH
       0000:24c2 03 1e 47 d2     ADD        BX,word ptr [0xd247]
       0000:24c6 2d 10 00        SUB        AX,0x10
       0000:24c9 39 d8           CMP        AX,BX
       0000:24cb 73 23           JNC        LAB_0000_24f0
       0000:24cd c6 45 08 00     MOV        byte ptr [DI + 0x8],0x0
       0000:24d1 f6 06 d0        TEST       byte ptr [0xced0],0xff
                 ce ff
       0000:24d6 75 18           JNZ        LAB_0000_24f0
       0000:24d8 8a 55 04        MOV        DL,byte ptr [DI + 0x4]
       0000:24db d0 e2           SHL        DL,0x1
       0000:24dd 32 f6           XOR        DH,DH
       0000:24df be 4c 0c        MOV        SI,0xc4c
       0000:24e2 03 f2           ADD        SI,DX
       0000:24e4 ff 14           CALL       word ptr [SI]
       0000:24e6 be 64 0c        MOV        SI,0xc64
       0000:24e9 03 f2           ADD        SI,DX
       0000:24eb 8b 3c           MOV        DI,word ptr [SI]=>LAB_0000_0c64
       0000:24ed e8 ef 2d        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
                             LAB_0000_24f0                                   XREF[5]:     0000:249e(j), 0000:24a3(j), 
                                                                                          0000:24b4(j), 0000:24cb(j), 
                                                                                          0000:24d6(j)  
       0000:24f0 5f              POP        DI
       0000:24f1 5e              POP        SI
       0000:24f2 5a              POP        DX
       0000:24f3 5b              POP        BX
       0000:24f4 58              POP        AX
       0000:24f5 c3              RET
       0000:24f6 50              PUSH       AX
       0000:24f7 80 3e 49        CMP        byte ptr [0xd249],0x8
                 d2 08
       0000:24fc 74 16           JZ         LAB_0000_2514
       0000:24fe fe 06 49 d2     INC        byte ptr [0xd249]
       0000:2502 fe 06 49 d2     INC        byte ptr [0xd249]
       0000:2506 a1 4a d2        MOV        AX,[0xd24a]
       0000:2509 2d 10 00        SUB        AX,0x10
       0000:250c a3 4a d2        MOV        [0xd24a],AX
       0000:250f 83 2e 47        SUB        word ptr [0xd247],0x8
                 d2 08
                             LAB_0000_2514                                   XREF[1]:     0000:24fc(j)  
       0000:2514 58              POP        AX
       0000:2515 c3              RET
       0000:2516 50              PUSH       AX
       0000:2517 80 3e 49        CMP        byte ptr [0xd249],0x4
                 d2 04
       0000:251c 74 19           JZ         LAB_0000_2537
       0000:251e fe 0e 49 d2     DEC        byte ptr [0xd249]
       0000:2522 fe 0e 49 d2     DEC        byte ptr [0xd249]
       0000:2526 a1 4a d2        MOV        AX,[0xd24a]
       0000:2529 05 10 00        ADD        AX,0x10
       0000:252c a3 4a d2        MOV        [0xd24a],AX
       0000:252f 83 06 47        ADD        word ptr [0xd247],0x8
                 d2 08
       0000:2534 e8 0c 01        CALL       FUN_0000_2643                                    undefined FUN_0000_2643()
                             LAB_0000_2537                                   XREF[1]:     0000:251c(j)  
       0000:2537 58              POP        AX
       0000:2538 c3              RET
       0000:2539 c6 06 4c        MOV        byte ptr [0xd24c],0x1
                 d2 01
       0000:253e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_253f()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_253f                                   XREF[1]:     FUN_0000_3ad1:0000:3b24(c)  
       0000:253f 52              PUSH       DX
       0000:2540 80 06 9e        ADD        byte ptr [0xd39e],0x5
                 d3 05
       0000:2545 80 3e 9e        CMP        byte ptr [0xd39e],0xa
                 d3 0a
       0000:254a 72 35           JC         LAB_0000_2581
       0000:254c 80 2e 9e        SUB        byte ptr [0xd39e],0xa
                 d3 0a
       0000:2551 fe 06 9d d3     INC        byte ptr [0xd39d]
       0000:2555 80 3e 9d        CMP        byte ptr [0xd39d],0xa
                 d3 0a
       0000:255a 72 25           JC         LAB_0000_2581
       0000:255c c6 06 9d        MOV        byte ptr [0xd39d],0x0
                 d3 00
       0000:2561 fe 06 9c d3     INC        byte ptr [0xd39c]
       0000:2565 80 3e 9c        CMP        byte ptr [0xd39c],0xa
                 d3 0a
       0000:256a 72 15           JC         LAB_0000_2581
       0000:256c c6 06 9c        MOV        byte ptr [0xd39c],0x0
                 d3 00
       0000:2571 fe 06 9b d3     INC        byte ptr [0xd39b]
       0000:2575 80 3e 9b        CMP        byte ptr [0xd39b],0xa
                 d3 0a
       0000:257a 72 05           JC         LAB_0000_2581
       0000:257c c6 06 9b        MOV        byte ptr [0xd39b],0x0
                 d3 00
                             LAB_0000_2581                                   XREF[4]:     0000:254a(j), 0000:255a(j), 
                                                                                          0000:256a(j), 0000:257a(j)  
       0000:2581 b2 01           MOV        DL,0x1
       0000:2583 e8 3d 3a        CALL       FUN_0000_5fc3                                    undefined FUN_0000_5fc3()
       0000:2586 e8 f0 39        CALL       FUN_0000_5f79                                    undefined FUN_0000_5f79()
       0000:2589 5a              POP        DX
       0000:258a c3              RET
       0000:258b c6 06 4c        MOV        byte ptr [0xd24c],0x2
                 d2 02
       0000:2590 e8 08 15        CALL       FUN_0000_3a9b                                    undefined FUN_0000_3a9b()
       0000:2593 c3              RET
       0000:2594 80 06 55        ADD        byte ptr [0xd255],0x2
                 d2 02
       0000:2599 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_259a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_259a                                   XREF[1]:     FUN_0000_5f79:0000:5f86(c)  
       0000:259a 52              PUSH       DX
       0000:259b fe 06 50 d2     INC        byte ptr [0xd250]
       0000:259f fe 06 ac d3     INC        byte ptr [0xd3ac]
       0000:25a3 80 3e ac        CMP        byte ptr [0xd3ac],0xa
                 d3 0a
       0000:25a8 72 09           JC         LAB_0000_25b3
       0000:25aa c6 06 ac        MOV        byte ptr [0xd3ac],0x0
                 d3 00
       0000:25af fe 06 ab d3     INC        byte ptr [0xd3ab]
                             LAB_0000_25b3                                   XREF[1]:     0000:25a8(j)  
       0000:25b3 b2 01           MOV        DL,0x1
       0000:25b5 e8 31 3a        CALL       FUN_0000_5fe9                                    undefined FUN_0000_5fe9()
       0000:25b8 5a              POP        DX
       0000:25b9 c3              RET
       0000:25ba c6 06 57        MOV        byte ptr [0xd257],0x1
                 d2 01
       0000:25bf c3              RET
       0000:25c0 c6 06 64        MOV        byte ptr [0xd264],0x1
                 d2 01
       0000:25c5 c3              RET
       0000:25c6 50              PUSH       AX
       0000:25c7 51              PUSH       CX
       0000:25c8 57              PUSH       DI
       0000:25c9 bf 6d c1        MOV        DI,0xc16d
       0000:25cc b9 10 00        MOV        CX,0x10
                             LAB_0000_25cf                                   XREF[1]:     0000:2604(j)  
       0000:25cf f6 45 08 01     TEST       byte ptr [DI + 0x8],0x1
       0000:25d3 74 2c           JZ         LAB_0000_2601
       0000:25d5 ff 45 09        INC        word ptr [DI + 0x9]
       0000:25d8 83 7d 09 03     CMP        word ptr [DI + 0x9],0x3
       0000:25dc 75 23           JNZ        LAB_0000_2601
       0000:25de c7 45 09        MOV        word ptr [DI + 0x9],0x0
                 00 00
       0000:25e3 8b 45 06        MOV        AX,word ptr [DI + 0x6]
       0000:25e6 85 c0           TEST       AX,AX
       0000:25e8 78 0b           JS         LAB_0000_25f5
       0000:25ea 40              INC        AX
       0000:25eb 3d 06 00        CMP        AX,0x6
       0000:25ee 76 03           JBE        LAB_0000_25f3
       0000:25f0 b8 06 00        MOV        AX,0x6
                             LAB_0000_25f3                                   XREF[1]:     0000:25ee(j)  
       0000:25f3 eb 09           JMP        LAB_0000_25fe
                             LAB_0000_25f5                                   XREF[1]:     0000:25e8(j)  
       0000:25f5 48              DEC        AX
       0000:25f6 3d fa ff        CMP        AX,0xfffa
       0000:25f9 7d 03           JGE        LAB_0000_25fe
       0000:25fb b8 fa ff        MOV        AX,0xfffa
                             LAB_0000_25fe                                   XREF[2]:     0000:25f3(j), 0000:25f9(j)  
       0000:25fe 89 45 06        MOV        word ptr [DI + 0x6],AX
                             LAB_0000_2601                                   XREF[2]:     0000:25d3(j), 0000:25dc(j)  
       0000:2601 83 c7 10        ADD        DI,0x10
       0000:2604 e2 c9           LOOP       LAB_0000_25cf
       0000:2606 5f              POP        DI
       0000:2607 59              POP        CX
       0000:2608 58              POP        AX
       0000:2609 c3              RET
       0000:260a 50              PUSH       AX
       0000:260b 51              PUSH       CX
       0000:260c 57              PUSH       DI
       0000:260d bf 6d c1        MOV        DI,0xc16d
       0000:2610 b9 10 00        MOV        CX,0x10
                             LAB_0000_2613                                   XREF[1]:     0000:2631(j)  
       0000:2613 f6 45 08 01     TEST       byte ptr [DI + 0x8],0x1
       0000:2617 74 15           JZ         LAB_0000_262e
       0000:2619 c7 45 09        MOV        word ptr [DI + 0x9],0x0
                 00 00
       0000:261e b8 02 00        MOV        AX,0x2
       0000:2621 f7 45 06        TEST       word ptr [DI + 0x6],0xffff
                 ff ff
       0000:2626 79 03           JNS        LAB_0000_262b
       0000:2628 b8 fe ff        MOV        AX,0xfffe
                             LAB_0000_262b                                   XREF[1]:     0000:2626(j)  
       0000:262b 89 45 06        MOV        word ptr [DI + 0x6],AX
                             LAB_0000_262e                                   XREF[1]:     0000:2617(j)  
       0000:262e 83 c7 10        ADD        DI,0x10
       0000:2631 e2 e0           LOOP       LAB_0000_2613
       0000:2633 c7 06 3d        MOV        word ptr [0xd23d],0x600
                 d2 00 06
       0000:2639 5f              POP        DI
       0000:263a 59              POP        CX
       0000:263b 58              POP        AX
       0000:263c c3              RET
       0000:263d c6 06 56        MOV        byte ptr [0xd256],0x1
                 d2 01
       0000:2642 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2643()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2643                                   XREF[1]:     0000:2534(c)  
       0000:2643 50              PUSH       AX
       0000:2644 53              PUSH       BX
       0000:2645 51              PUSH       CX
       0000:2646 52              PUSH       DX
       0000:2647 56              PUSH       SI
       0000:2648 be 6d c1        MOV        SI,0xc16d
       0000:264b b9 10 00        MOV        CX,0x10
                             LAB_0000_264e                                   XREF[1]:     0000:2685(j)  
       0000:264e f6 44 08 01     TEST       byte ptr [SI + 0x8],0x1
       0000:2652 74 2e           JZ         LAB_0000_2682
       0000:2654 f6 44 08 08     TEST       byte ptr [SI + 0x8],0x8
       0000:2658 74 28           JZ         LAB_0000_2682
       0000:265a 8b 04           MOV        AX,word ptr [SI]
       0000:265c 8b 1e 47 d2     MOV        BX,word ptr [0xd247]
       0000:2660 83 eb 07        SUB        BX,0x7
       0000:2663 39 d8           CMP        AX,BX
       0000:2665 73 04           JNC        LAB_0000_266b
       0000:2667 89 1c           MOV        word ptr [SI],BX
       0000:2669 eb 17           JMP        LAB_0000_2682
                             LAB_0000_266b                                   XREF[1]:     0000:2665(j)  
       0000:266b 83 c3 04        ADD        BX,0x4
       0000:266e 8a 16 49 d2     MOV        DL,byte ptr [0xd249]
       0000:2672 d0 e2           SHL        DL,0x1
       0000:2674 d0 e2           SHL        DL,0x1
       0000:2676 d0 e2           SHL        DL,0x1
       0000:2678 32 f6           XOR        DH,DH
       0000:267a 03 da           ADD        BX,DX
       0000:267c 39 d8           CMP        AX,BX
       0000:267e 76 02           JBE        LAB_0000_2682
       0000:2680 89 1c           MOV        word ptr [SI],BX
                             LAB_0000_2682                                   XREF[4]:     0000:2652(j), 0000:2658(j), 
                                                                                          0000:2669(j), 0000:267e(j)  
       0000:2682 83 c6 10        ADD        SI,0x10
       0000:2685 e2 c7           LOOP       LAB_0000_264e
       0000:2687 5e              POP        SI
       0000:2688 5a              POP        DX
       0000:2689 59              POP        CX
       0000:268a 5b              POP        BX
       0000:268b 58              POP        AX
       0000:268c c3              RET
       0000:268d 31 00           XOR        word ptr [BX + SI],AX
       0000:268f e2 7e           LOOP       LAB_0000_270d+2
       0000:2691 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2693()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2693                                   XREF[1]:     FUN_0000_2d3e:0000:2da2(c)  
       0000:2693 50              PUSH       AX
       0000:2694 53              PUSH       BX
       0000:2695 51              PUSH       CX
       0000:2696 52              PUSH       DX
       0000:2697 88 16 7c d3     MOV        byte ptr [0xd37c],DL
       0000:269b 88 d3           MOV        BL,DL
       0000:269d 32 ff           XOR        BH,BH
       0000:269f b1 04           MOV        CL,0x4
       0000:26a1 d3 e3           SHL        BX,CL
       0000:26a3 8b 87 6d c1     MOV        AX,word ptr [BX + 0xc16d]
       0000:26a7 a3 80 d3        MOV        [0xd380],AX
       0000:26aa 8b 87 6f c1     MOV        AX,word ptr [BX + 0xc16f]
       0000:26ae a3 82 d3        MOV        [0xd382],AX
       0000:26b1 8b 87 71 c1     MOV        AX,word ptr [BX + 0xc171]
       0000:26b5 a3 84 d3        MOV        [0xd384],AX
       0000:26b8 8b 87 73 c1     MOV        AX,word ptr [BX + 0xc173]
       0000:26bc a3 86 d3        MOV        [0xd386],AX
       0000:26bf a1 80 d3        MOV        AX,[0xd380]
       0000:26c2 8b 1e 82 d3     MOV        BX,word ptr [0xd382]
       0000:26c6 e8 8f 01        CALL       FUN_0000_2858                                    undefined FUN_0000_2858()
       0000:26c9 80 f9 00        CMP        CL,0x0
       0000:26cc 75 03           JNZ        LAB_0000_26d1
       0000:26ce e9 82 01        JMP        LAB_0000_2853
                             LAB_0000_26d1                                   XREF[1]:     0000:26cc(j)  
       0000:26d1 80 f9 03        CMP        CL,0x3
       0000:26d4 75 0d           JNZ        LAB_0000_26e3
       0000:26d6 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:26da e8 2e 04        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:26dd e8 69 04        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
       0000:26e0 e9 70 01        JMP        LAB_0000_2853
                             LAB_0000_26e3                                   XREF[1]:     0000:26d4(j)  
       0000:26e3 80 f9 02        CMP        CL,0x2
       0000:26e6 75 1b           JNZ        LAB_0000_2703
       0000:26e8 f6 c5 01        TEST       CH,0x1
       0000:26eb 74 07           JZ         LAB_0000_26f4
       0000:26ed 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:26f1 e8 55 04        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
                             LAB_0000_26f4                                   XREF[1]:     0000:26eb(j)  
       0000:26f4 f6 c5 02        TEST       CH,0x2
       0000:26f7 74 07           JZ         LAB_0000_2700
       0000:26f9 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:26fd e8 0b 04        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
                             LAB_0000_2700                                   XREF[1]:     0000:26f7(j)  
       0000:2700 e9 50 01        JMP        LAB_0000_2853
                             LAB_0000_2703                                   XREF[1]:     0000:26e6(j)  
       0000:2703 c6 06 7e        MOV        byte ptr [0xd37e],0x0
                 d3 00
       0000:2708 c6 06 7f        MOV        byte ptr [0xd37f],0x0
                 d3 00
                             LAB_0000_270d+2                                 XREF[0,1]:   0000:268f(j)  
       0000:270d 3b 06 80 d3     CMP        AX,word ptr [0xd380]
       0000:2711 77 11           JA         LAB_0000_2724
       0000:2713 fe 06 7e d3     INC        byte ptr [0xd37e]
       0000:2717 05 18 00        ADD        AX,0x18
       0000:271a 3b 06 80 d3     CMP        AX,word ptr [0xd380]
       0000:271e 77 04           JA         LAB_0000_2724
       0000:2720 fe 06 7e d3     INC        byte ptr [0xd37e]
                             LAB_0000_2724                                   XREF[2]:     0000:2711(j), 0000:271e(j)  
       0000:2724 3b 1e 82 d3     CMP        BX,word ptr [0xd382]
       0000:2728 77 11           JA         LAB_0000_273b
       0000:272a fe 06 7f d3     INC        byte ptr [0xd37f]
       0000:272e 83 c3 06        ADD        BX,0x6
       0000:2731 3b 1e 82 d3     CMP        BX,word ptr [0xd382]
       0000:2735 77 04           JA         LAB_0000_273b
       0000:2737 fe 06 7f d3     INC        byte ptr [0xd37f]
                             LAB_0000_273b                                   XREF[2]:     0000:2728(j), 0000:2735(j)  
       0000:273b 80 3e 7e        CMP        byte ptr [0xd37e],0x1
                 d3 01
       0000:2740 75 0a           JNZ        LAB_0000_274c
       0000:2742 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2746 e8 00 04        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
       0000:2749 e9 07 01        JMP        LAB_0000_2853
                             LAB_0000_274c                                   XREF[1]:     0000:2740(j)  
       0000:274c 80 3e 7f        CMP        byte ptr [0xd37f],0x1
                 d3 01
       0000:2751 75 0a           JNZ        LAB_0000_275d
       0000:2753 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2757 e8 b1 03        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:275a e9 f6 00        JMP        LAB_0000_2853
                             LAB_0000_275d                                   XREF[1]:     0000:2751(j)  
       0000:275d c6 06 88        MOV        byte ptr [0xd388],0x0
                 d3 00
       0000:2762 f6 06 7e        TEST       byte ptr [0xd37e],0xff
                 d3 ff
       0000:2767 75 05           JNZ        LAB_0000_276e
       0000:2769 80 06 88        ADD        byte ptr [0xd388],0x2
                 d3 02
                             LAB_0000_276e                                   XREF[1]:     0000:2767(j)  
       0000:276e f6 06 7f        TEST       byte ptr [0xd37f],0xff
                 d3 ff
       0000:2773 75 04           JNZ        LAB_0000_2779
       0000:2775 fe 06 88 d3     INC        byte ptr [0xd388]
                             LAB_0000_2779                                   XREF[1]:     0000:2773(j)  
       0000:2779 c6 06 89        MOV        byte ptr [0xd389],0x0
                 d3 00
       0000:277e f7 06 84        TEST       word ptr [0xd384],0xffff
                 d3 ff ff
       0000:2784 79 05           JNS        LAB_0000_278b
       0000:2786 80 06 89        ADD        byte ptr [0xd389],0x2
                 d3 02
                             LAB_0000_278b                                   XREF[1]:     0000:2784(j)  
       0000:278b f7 06 86        TEST       word ptr [0xd386],0xffff
                 d3 ff ff
       0000:2791 79 04           JNS        LAB_0000_2797
       0000:2793 fe 06 89 d3     INC        byte ptr [0xd389]
                             LAB_0000_2797                                   XREF[1]:     0000:2791(j)  
       0000:2797 a0 88 d3        MOV        AL,[0xd388]
       0000:279a d0 e0           SHL        AL,0x1
       0000:279c d0 e0           SHL        AL,0x1
       0000:279e 02 06 89 d3     ADD        AL,byte ptr [0xd389]
       0000:27a2 bb 5a 0b        MOV        BX,0xb5a
       0000:27a5 d7              XLAT       BX=>LAB_0000_0b5a
       0000:27a6 3c 01           CMP        AL,0x1
       0000:27a8 75 0a           JNZ        LAB_0000_27b4
       0000:27aa 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:27ae e8 5a 03        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:27b1 e9 9f 00        JMP        LAB_0000_2853
                             LAB_0000_27b4                                   XREF[1]:     0000:27a8(j)  
       0000:27b4 3c 02           CMP        AL,0x2
       0000:27b6 75 0a           JNZ        LAB_0000_27c2
       0000:27b8 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:27bc e8 8a 03        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
       0000:27bf e9 91 00        JMP        LAB_0000_2853
                             LAB_0000_27c2                                   XREF[1]:     0000:27b6(j)  
       0000:27c2 a1 82 d3        MOV        AX,[0xd382]
       0000:27c5 b3 06           MOV        BL,0x6
       0000:27c7 f6 f3           DIV        BL
       0000:27c9 8a dc           MOV        BL,AH
       0000:27cb a1 80 d3        MOV        AX,[0xd380]
       0000:27ce 24 07           AND        AL,0x7
       0000:27d0 80 fb 02        CMP        BL,0x2
       0000:27d3 72 02           JC         LAB_0000_27d7
       0000:27d5 fe c3           INC        BL
                             LAB_0000_27d7                                   XREF[1]:     0000:27d3(j)  
       0000:27d7 80 fb 05        CMP        BL,0x5
       0000:27da 72 02           JC         LAB_0000_27de
       0000:27dc fe c3           INC        BL
                             LAB_0000_27de                                   XREF[1]:     0000:27da(j)  
       0000:27de 8a 0e 88 d3     MOV        CL,byte ptr [0xd388]
       0000:27e2 80 f9 00        CMP        CL,0x0
       0000:27e5 75 18           JNZ        LAB_0000_27ff
       0000:27e7 38 d8           CMP        AL,BL
       0000:27e9 73 0a           JNC        LAB_0000_27f5
       0000:27eb 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:27ef e8 57 03        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
       0000:27f2 e9 5e 00        JMP        LAB_0000_2853
                             LAB_0000_27f5                                   XREF[1]:     0000:27e9(j)  
       0000:27f5 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:27f9 e8 0f 03        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:27fc e9 54 00        JMP        LAB_0000_2853
                             LAB_0000_27ff                                   XREF[1]:     0000:27e5(j)  
       0000:27ff 80 f9 01        CMP        CL,0x1
       0000:2802 75 1c           JNZ        LAB_0000_2820
       0000:2804 2c 07           SUB        AL,0x7
       0000:2806 f6 d8           NEG        AL
       0000:2808 38 d8           CMP        AL,BL
       0000:280a 77 0a           JA         LAB_0000_2816
       0000:280c 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2810 e8 f8 02        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:2813 e9 3d 00        JMP        LAB_0000_2853
                             LAB_0000_2816                                   XREF[1]:     0000:280a(j)  
       0000:2816 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:281a e8 2c 03        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
       0000:281d e9 33 00        JMP        LAB_0000_2853
                             LAB_0000_2820                                   XREF[1]:     0000:2802(j)  
       0000:2820 80 f9 02        CMP        CL,0x2
       0000:2823 75 1a           JNZ        LAB_0000_283f
       0000:2825 2c 07           SUB        AL,0x7
       0000:2827 f6 d8           NEG        AL
       0000:2829 38 d8           CMP        AL,BL
       0000:282b 77 09           JA         LAB_0000_2836
       0000:282d 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2831 e8 15 03        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
       0000:2834 eb 1d           JMP        LAB_0000_2853
                             LAB_0000_2836                                   XREF[1]:     0000:282b(j)  
       0000:2836 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:283a e8 ce 02        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:283d eb 14           JMP        LAB_0000_2853
                             LAB_0000_283f                                   XREF[1]:     0000:2823(j)  
       0000:283f 38 d8           CMP        AL,BL
       0000:2841 73 09           JNC        LAB_0000_284c
       0000:2843 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2847 e8 c1 02        CALL       FUN_0000_2b0b                                    undefined FUN_0000_2b0b()
       0000:284a eb 07           JMP        LAB_0000_2853
                             LAB_0000_284c                                   XREF[1]:     0000:2841(j)  
       0000:284c 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2850 e8 f6 02        CALL       FUN_0000_2b49                                    undefined FUN_0000_2b49()
                             LAB_0000_2853                                   XREF[14]:    0000:26ce(j), 0000:26e0(j), 
                                                                                          0000:2700(j), 0000:2749(j), 
                                                                                          0000:275a(j), 0000:27b1(j), 
                                                                                          0000:27bf(j), 0000:27f2(j), 
                                                                                          0000:27fc(j), 0000:2813(j), 
                                                                                          0000:281d(j), 0000:2834(j), 
                                                                                          0000:283d(j), 0000:284a(j)  
       0000:2853 5a              POP        DX
       0000:2854 59              POP        CX
       0000:2855 5b              POP        BX
       0000:2856 58              POP        AX
       0000:2857 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2858()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2858                                   XREF[1]:     FUN_0000_2693:0000:26c6(c)  
       0000:2858 a3 90 d3        MOV        [0xd390],AX
       0000:285b 89 1e 92 d3     MOV        word ptr [0xd392],BX
       0000:285f e8 ab 00        CALL       FUN_0000_290d                                    undefined FUN_0000_290d()
       0000:2862 e8 c0 01        CALL       FUN_0000_2a25                                    undefined FUN_0000_2a25()
       0000:2865 32 c9           XOR        CL,CL
       0000:2867 f6 06 8a        TEST       byte ptr [0xd38a],0xff
                 d3 ff
       0000:286c 74 02           JZ         LAB_0000_2870
       0000:286e fe c1           INC        CL
                             LAB_0000_2870                                   XREF[1]:     0000:286c(j)  
       0000:2870 f6 06 8b        TEST       byte ptr [0xd38b],0xff
                 d3 ff
       0000:2875 74 02           JZ         LAB_0000_2879
       0000:2877 fe c1           INC        CL
                             LAB_0000_2879                                   XREF[1]:     0000:2875(j)  
       0000:2879 f6 06 8c        TEST       byte ptr [0xd38c],0xff
                 d3 ff
       0000:287e 74 02           JZ         LAB_0000_2882
       0000:2880 fe c1           INC        CL
                             LAB_0000_2882                                   XREF[1]:     0000:287e(j)  
       0000:2882 f6 06 8d        TEST       byte ptr [0xd38d],0xff
                 d3 ff
       0000:2887 74 02           JZ         LAB_0000_288b
       0000:2889 fe c1           INC        CL
                             LAB_0000_288b                                   XREF[1]:     0000:2887(j)  
       0000:288b 80 f9 00        CMP        CL,0x0
       0000:288e 74 7c           JZ         LAB_0000_290c
       0000:2890 80 f9 03        CMP        CL,0x3
       0000:2893 74 77           JZ         LAB_0000_290c
       0000:2895 80 f9 01        CMP        CL,0x1
       0000:2898 74 34           JZ         LAB_0000_28ce
       0000:289a 32 c0           XOR        AL,AL
       0000:289c f6 06 8a        TEST       byte ptr [0xd38a],0xff
                 d3 ff
       0000:28a1 74 02           JZ         LAB_0000_28a5
       0000:28a3 fe c0           INC        AL
                             LAB_0000_28a5                                   XREF[1]:     0000:28a1(j)  
       0000:28a5 d0 e0           SHL        AL,0x1
       0000:28a7 f6 06 8b        TEST       byte ptr [0xd38b],0xff
                 d3 ff
       0000:28ac 74 02           JZ         LAB_0000_28b0
       0000:28ae fe c0           INC        AL
                             LAB_0000_28b0                                   XREF[1]:     0000:28ac(j)  
       0000:28b0 d0 e0           SHL        AL,0x1
       0000:28b2 f6 06 8c        TEST       byte ptr [0xd38c],0xff
                 d3 ff
       0000:28b7 74 02           JZ         LAB_0000_28bb
       0000:28b9 fe c0           INC        AL
                             LAB_0000_28bb                                   XREF[1]:     0000:28b7(j)  
       0000:28bb d0 e0           SHL        AL,0x1
       0000:28bd f6 06 8d        TEST       byte ptr [0xd38d],0xff
                 d3 ff
       0000:28c2 74 02           JZ         LAB_0000_28c6
       0000:28c4 fe c0           INC        AL
                             LAB_0000_28c6                                   XREF[1]:     0000:28c2(j)  
       0000:28c6 bb 6a 0b        MOV        BX,0xb6a
       0000:28c9 d7              XLAT       BX=>DAT_0000_0b79                                = FFh
       0000:28ca 88 c5           MOV        CH,AL
       0000:28cc eb 3e           JMP        LAB_0000_290c
                             LAB_0000_28ce                                   XREF[1]:     0000:2898(j)  
       0000:28ce a1 92 d3        MOV        AX,[0xd392]
       0000:28d1 b3 0c           MOV        BL,0xc
       0000:28d3 f6 f3           DIV        BL
       0000:28d5 32 e4           XOR        AH,AH
       0000:28d7 f6 e3           MUL        BL
       0000:28d9 8b d8           MOV        BX,AX
       0000:28db a1 90 d3        MOV        AX,[0xd390]
       0000:28de 2d 10 00        SUB        AX,0x10
       0000:28e1 25 e0 ff        AND        AX,0xffe0
       0000:28e4 05 10 00        ADD        AX,0x10
       0000:28e7 80 3e 8a        CMP        byte ptr [0xd38a],0x0
                 d3 00
       0000:28ec 75 1e           JNZ        LAB_0000_290c
       0000:28ee 80 3e 8b        CMP        byte ptr [0xd38b],0x0
                 d3 00
       0000:28f3 74 05           JZ         LAB_0000_28fa
       0000:28f5 05 20 00        ADD        AX,0x20
       0000:28f8 eb 12           JMP        LAB_0000_290c
                             LAB_0000_28fa                                   XREF[1]:     0000:28f3(j)  
       0000:28fa 80 3e 8c        CMP        byte ptr [0xd38c],0x0
                 d3 00
       0000:28ff 74 05           JZ         LAB_0000_2906
       0000:2901 83 c3 0c        ADD        BX,0xc
       0000:2904 eb 06           JMP        LAB_0000_290c
                             LAB_0000_2906                                   XREF[1]:     0000:28ff(j)  
       0000:2906 05 20 00        ADD        AX,0x20
       0000:2909 83 c3 0c        ADD        BX,0xc
                             LAB_0000_290c                                   XREF[6]:     0000:288e(j), 0000:2893(j), 
                                                                                          0000:28cc(j), 0000:28ec(j), 
                                                                                          0000:28f8(j), 0000:2904(j)  
       0000:290c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_290d()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_290d                                   XREF[1]:     FUN_0000_2858:0000:285f(c)  
       0000:290d 50              PUSH       AX
       0000:290e 53              PUSH       BX
       0000:290f 51              PUSH       CX
       0000:2910 50              PUSH       AX
       0000:2911 53              PUSH       BX
       0000:2912 c6 06 8a        MOV        byte ptr [0xd38a],0x0
                 d3 00
       0000:2917 c6 06 8b        MOV        byte ptr [0xd38b],0x0
                 d3 00
       0000:291c c6 06 8c        MOV        byte ptr [0xd38c],0x0
                 d3 00
       0000:2921 c6 06 8d        MOV        byte ptr [0xd38d],0x0
                 d3 00
       0000:2926 89 c1           MOV        CX,AX
       0000:2928 8b c3           MOV        AX,BX
       0000:292a b3 0c           MOV        BL,0xc
       0000:292c f6 f3           DIV        BL
       0000:292e 32 e4           XOR        AH,AH
       0000:2930 48              DEC        AX
       0000:2931 a3 96 d3        MOV        [0xd396],AX
       0000:2934 89 c8           MOV        AX,CX
       0000:2936 2d 10 00        SUB        AX,0x10
       0000:2939 d1 e8           SHR        AX,0x1
       0000:293b d1 e8           SHR        AX,0x1
       0000:293d d1 e8           SHR        AX,0x1
       0000:293f d1 e8           SHR        AX,0x1
       0000:2941 d1 e8           SHR        AX,0x1
       0000:2943 a3 94 d3        MOV        [0xd394],AX
       0000:2946 8b 1e 96 d3     MOV        BX,word ptr [0xd396]
       0000:294a 3d 0e 00        CMP        AX,0xe
       0000:294d 72 03           JC         LAB_0000_2952
       0000:294f e9 a4 00        JMP        LAB_0000_29f6
                             LAB_0000_2952                                   XREF[1]:     0000:294d(j)  
       0000:2952 85 c0           TEST       AX,AX
       0000:2954 79 03           JNS        LAB_0000_2959
       0000:2956 e9 9d 00        JMP        LAB_0000_29f6
                             LAB_0000_2959                                   XREF[1]:     0000:2954(j)  
       0000:2959 83 fb 13        CMP        BX,0x13
       0000:295c 72 03           JC         LAB_0000_2961
       0000:295e e9 95 00        JMP        LAB_0000_29f6
                             LAB_0000_2961                                   XREF[1]:     0000:295c(j)  
       0000:2961 85 db           TEST       BX,BX
       0000:2963 79 03           JNS        LAB_0000_2968
       0000:2965 e9 8e 00        JMP        LAB_0000_29f6
                             LAB_0000_2968                                   XREF[1]:     0000:2963(j)  
       0000:2968 e8 8f 00        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:296b 88 0e 8a d3     MOV        byte ptr [0xd38a],CL
       0000:296f 58              POP        AX
       0000:2970 b3 0c           MOV        BL,0xc
       0000:2972 f6 f3           DIV        BL
       0000:2974 88 e0           MOV        AL,AH
       0000:2976 32 e4           XOR        AH,AH
       0000:2978 8b d8           MOV        BX,AX
       0000:297a 58              POP        AX
       0000:297b 2d 10 00        SUB        AX,0x10
       0000:297e 25 1f 00        AND        AX,0x1f
       0000:2981 3c 18           CMP        AL,0x18
       0000:2983 76 02           JBE        LAB_0000_2987
       0000:2985 b4 01           MOV        AH,0x1
                             LAB_0000_2987                                   XREF[1]:     0000:2983(j)  
       0000:2987 80 fb 06        CMP        BL,0x6
       0000:298a 76 02           JBE        LAB_0000_298e
       0000:298c b7 01           MOV        BH,0x1
                             LAB_0000_298e                                   XREF[1]:     0000:298a(j)  
       0000:298e 88 26 8e d3     MOV        byte ptr [0xd38e],AH
       0000:2992 88 3e 8f d3     MOV        byte ptr [0xd38f],BH
       0000:2996 80 fc 01        CMP        AH,0x1
       0000:2999 75 14           JNZ        LAB_0000_29af
       0000:299b a1 94 d3        MOV        AX,[0xd394]
       0000:299e 40              INC        AX
       0000:299f 3d 0e 00        CMP        AX,0xe
       0000:29a2 74 0b           JZ         LAB_0000_29af
       0000:29a4 8b 1e 96 d3     MOV        BX,word ptr [0xd396]
       0000:29a8 e8 4f 00        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:29ab 88 0e 8b d3     MOV        byte ptr [0xd38b],CL
                             LAB_0000_29af                                   XREF[2]:     0000:2999(j), 0000:29a2(j)  
       0000:29af 80 3e 8f        CMP        byte ptr [0xd38f],0x1
                 d3 01
       0000:29b4 75 14           JNZ        LAB_0000_29ca
       0000:29b6 a1 94 d3        MOV        AX,[0xd394]
       0000:29b9 8b 1e 96 d3     MOV        BX,word ptr [0xd396]
       0000:29bd 43              INC        BX
       0000:29be 83 fb 13        CMP        BX,0x13
       0000:29c1 74 07           JZ         LAB_0000_29ca
       0000:29c3 e8 34 00        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:29c6 88 0e 8c d3     MOV        byte ptr [0xd38c],CL
                             LAB_0000_29ca                                   XREF[2]:     0000:29b4(j), 0000:29c1(j)  
       0000:29ca 80 3e 8e        CMP        byte ptr [0xd38e],0x1
                 d3 01
       0000:29cf 75 21           JNZ        LAB_0000_29f2
       0000:29d1 80 3e 8f        CMP        byte ptr [0xd38f],0x1
                 d3 01
       0000:29d6 75 1a           JNZ        LAB_0000_29f2
       0000:29d8 a1 94 d3        MOV        AX,[0xd394]
       0000:29db 8b 1e 96 d3     MOV        BX,word ptr [0xd396]
       0000:29df 40              INC        AX
       0000:29e0 3d 0e 00        CMP        AX,0xe
       0000:29e3 74 0d           JZ         LAB_0000_29f2
       0000:29e5 43              INC        BX
       0000:29e6 83 fb 13        CMP        BX,0x13
       0000:29e9 74 07           JZ         LAB_0000_29f2
       0000:29eb e8 0c 00        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:29ee 88 0e 8d d3     MOV        byte ptr [0xd38d],CL
                             LAB_0000_29f2                                   XREF[5]:     0000:29cf(j), 0000:29d6(j), 
                                                                                          0000:29e3(j), 0000:29e9(j), 
                                                                                          0000:29f8(j)  
       0000:29f2 59              POP        CX
       0000:29f3 5b              POP        BX
       0000:29f4 58              POP        AX
       0000:29f5 c3              RET
                             LAB_0000_29f6                                   XREF[4]:     0000:294f(j), 0000:2956(j), 
                                                                                          0000:295e(j), 0000:2965(j)  
       0000:29f6 5b              POP        BX
       0000:29f7 58              POP        AX
       0000:29f8 eb f8           JMP        LAB_0000_29f2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_29fa()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x6]:1  local_6                                 XREF[1]:     0000:2a0b(*)  
                             FUN_0000_29fa                                   XREF[7]:     FUN_0000_2255:0000:227f(c), 
                                                                                          FUN_0000_290d:0000:2968(c), 
                                                                                          FUN_0000_290d:0000:29a8(c), 
                                                                                          FUN_0000_290d:0000:29c3(c), 
                                                                                          FUN_0000_290d:0000:29eb(c), 
                                                                                          FUN_0000_2a73:0000:2a7d(c), 
                                                                                          FUN_0000_5b26:0000:5b75(c)  
       0000:29fa 50              PUSH       AX
       0000:29fb 53              PUSH       BX
       0000:29fc 51              PUSH       CX
       0000:29fd 52              PUSH       DX
       0000:29fe 55              PUSH       BP
       0000:29ff 89 e5           MOV        BP,SP
       0000:2a01 b2 13           MOV        DL,0x13
       0000:2a03 f6 e2           MUL        DL
       0000:2a05 01 c3           ADD        BX,AX
       0000:2a07 8a 8f 00 81     MOV        CL,byte ptr [BX + 0x8100]
       0000:2a0b 88 4e 04        MOV        byte ptr [BP + local_6],CL
       0000:2a0e 5d              POP        BP
       0000:2a0f 5a              POP        DX
       0000:2a10 59              POP        CX
       0000:2a11 5b              POP        BX
       0000:2a12 58              POP        AX
       0000:2a13 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2a14()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2a14                                   XREF[2]:     FUN_0000_2a73:0000:2ac1(c), 
                                                                                          FUN_0000_2a73:0000:2af8(c)  
       0000:2a14 50              PUSH       AX
       0000:2a15 53              PUSH       BX
       0000:2a16 52              PUSH       DX
       0000:2a17 b2 13           MOV        DL,0x13
       0000:2a19 f6 e2           MUL        DL
       0000:2a1b 01 c3           ADD        BX,AX
       0000:2a1d 88 8f 00 81     MOV        byte ptr [BX + 0x8100],CL
       0000:2a21 5a              POP        DX
       0000:2a22 5b              POP        BX
       0000:2a23 58              POP        AX
       0000:2a24 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2a25()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2a25                                   XREF[1]:     FUN_0000_2858:0000:2862(c)  
       0000:2a25 50              PUSH       AX
       0000:2a26 53              PUSH       BX
       0000:2a27 51              PUSH       CX
       0000:2a28 89 c1           MOV        CX,AX
       0000:2a2a 8b c3           MOV        AX,BX
       0000:2a2c b3 0c           MOV        BL,0xc
       0000:2a2e f6 f3           DIV        BL
       0000:2a30 32 e4           XOR        AH,AH
       0000:2a32 48              DEC        AX
       0000:2a33 8b d8           MOV        BX,AX
       0000:2a35 89 c8           MOV        AX,CX
       0000:2a37 2d 10 00        SUB        AX,0x10
       0000:2a3a d1 e8           SHR        AX,0x1
       0000:2a3c d1 e8           SHR        AX,0x1
       0000:2a3e d1 e8           SHR        AX,0x1
       0000:2a40 d1 e8           SHR        AX,0x1
       0000:2a42 d1 e8           SHR        AX,0x1
       0000:2a44 80 3e 8a        CMP        byte ptr [0xd38a],0x0
                 d3 00
       0000:2a49 74 03           JZ         LAB_0000_2a4e
       0000:2a4b e8 25 00        CALL       FUN_0000_2a73                                    undefined FUN_0000_2a73()
                             LAB_0000_2a4e                                   XREF[1]:     0000:2a49(j)  
       0000:2a4e 40              INC        AX
       0000:2a4f 80 3e 8b        CMP        byte ptr [0xd38b],0x0
                 d3 00
       0000:2a54 74 03           JZ         LAB_0000_2a59
       0000:2a56 e8 1a 00        CALL       FUN_0000_2a73                                    undefined FUN_0000_2a73()
                             LAB_0000_2a59                                   XREF[1]:     0000:2a54(j)  
       0000:2a59 43              INC        BX
       0000:2a5a 80 3e 8d        CMP        byte ptr [0xd38d],0x0
                 d3 00
       0000:2a5f 74 03           JZ         LAB_0000_2a64
       0000:2a61 e8 0f 00        CALL       FUN_0000_2a73                                    undefined FUN_0000_2a73()
                             LAB_0000_2a64                                   XREF[1]:     0000:2a5f(j)  
       0000:2a64 48              DEC        AX
       0000:2a65 80 3e 8c        CMP        byte ptr [0xd38c],0x0
                 d3 00
       0000:2a6a 74 03           JZ         LAB_0000_2a6f
       0000:2a6c e8 04 00        CALL       FUN_0000_2a73                                    undefined FUN_0000_2a73()
                             LAB_0000_2a6f                                   XREF[1]:     0000:2a6a(j)  
       0000:2a6f 59              POP        CX
       0000:2a70 5b              POP        BX
       0000:2a71 58              POP        AX
       0000:2a72 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2a73()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[2]:     0000:2ab9(*), 
                                                                                                   0000:2af2(*)  
             undefined2        Stack[-0x4]:2  local_4                                 XREF[2]:     0000:2abc(*), 
                                                                                                   0000:2af5(*)  
                             FUN_0000_2a73                                   XREF[5]:     FUN_0000_2255:0000:2286(c), 
                                                                                          FUN_0000_2a25:0000:2a4b(c), 
                                                                                          FUN_0000_2a25:0000:2a56(c), 
                                                                                          FUN_0000_2a25:0000:2a61(c), 
                                                                                          FUN_0000_2a25:0000:2a6c(c)  
       0000:2a73 50              PUSH       AX
       0000:2a74 53              PUSH       BX
       0000:2a75 51              PUSH       CX
       0000:2a76 52              PUSH       DX
       0000:2a77 55              PUSH       BP
       0000:2a78 89 e5           MOV        BP,SP
       0000:2a7a e8 81 f8        CALL       FUN_0000_22fe                                    undefined FUN_0000_22fe()
       0000:2a7d e8 7a ff        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:2a80 51              PUSH       CX
       0000:2a81 84 c9           TEST       CL,CL
       0000:2a83 74 7f           JZ         LAB_0000_2b04
       0000:2a85 80 f9 1c        CMP        CL,0x1c
       0000:2a88 74 7a           JZ         LAB_0000_2b04
       0000:2a8a 88 c8           MOV        AL,CL
       0000:2a8c bb 89 0b        MOV        BX,0xb89
       0000:2a8f d7              XLAT       BX
       0000:2a90 32 e4           XOR        AH,AH
       0000:2a92 01 06 99 d3     ADD        word ptr [0xd399],AX
       0000:2a96 80 f9 04        CMP        CL,0x4
       0000:2a99 74 54           JZ         LAB_0000_2aef
       0000:2a9b 80 f9 06        CMP        CL,0x6
       0000:2a9e 74 4f           JZ         LAB_0000_2aef
       0000:2aa0 80 f9 14        CMP        CL,0x14
       0000:2aa3 74 4a           JZ         LAB_0000_2aef
       0000:2aa5 80 f9 15        CMP        CL,0x15
       0000:2aa8 74 45           JZ         LAB_0000_2aef
       0000:2aaa 80 f9 16        CMP        CL,0x16
       0000:2aad 74 40           JZ         LAB_0000_2aef
       0000:2aaf 80 f9 0a        CMP        CL,0xa
       0000:2ab2 72 05           JC         LAB_0000_2ab9
       0000:2ab4 80 f9 0e        CMP        CL,0xe
       0000:2ab7 76 18           JBE        LAB_0000_2ad1
                             LAB_0000_2ab9                                   XREF[2]:     0000:2ab2(j), 0000:2aed(j)  
       0000:2ab9 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:2abc 8b 5e 06        MOV        BX,word ptr [BP + local_4]
       0000:2abf 32 c9           XOR        CL,CL
       0000:2ac1 e8 50 ff        CALL       FUN_0000_2a14                                    undefined FUN_0000_2a14()
       0000:2ac4 88 c4           MOV        AH,AL
       0000:2ac6 8a c3           MOV        AL,BL
       0000:2ac8 e8 f2 30        CALL       FUN_0000_5bbd                                    undefined FUN_0000_5bbd()
       0000:2acb ff 0e 52 d2     DEC        word ptr [0xd252]
       0000:2acf eb 33           JMP        LAB_0000_2b04
                             LAB_0000_2ad1                                   XREF[1]:     0000:2ab7(j)  
       0000:2ad1 80 e9 0a        SUB        CL,0xa
       0000:2ad4 b0 01           MOV        AL,0x1
       0000:2ad6 d2 e0           SHL        AL,CL
       0000:2ad8 08 06 59 d2     OR         byte ptr [0xd259],AL
       0000:2adc 3a 06 62 d2     CMP        AL,byte ptr [0xd262]
       0000:2ae0 75 04           JNZ        LAB_0000_2ae6
       0000:2ae2 d0 26 62 d2     SHL        byte ptr [0xd262],0x1
                             LAB_0000_2ae6                                   XREF[1]:     0000:2ae0(j)  
       0000:2ae6 74 05           JZ         LAB_0000_2aed
       0000:2ae8 c6 06 63        MOV        byte ptr [0xd263],0x0
                 d2 00
                             LAB_0000_2aed                                   XREF[1]:     0000:2ae6(j)  
       0000:2aed eb ca           JMP        LAB_0000_2ab9
                             LAB_0000_2aef                                   XREF[5]:     0000:2a99(j), 0000:2a9e(j), 
                                                                                          0000:2aa3(j), 0000:2aa8(j), 
                                                                                          0000:2aad(j)  
       0000:2aef 59              POP        CX
       0000:2af0 fe c1           INC        CL
       0000:2af2 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:2af5 8b 5e 06        MOV        BX,word ptr [BP + local_4]
       0000:2af8 e8 19 ff        CALL       FUN_0000_2a14                                    undefined FUN_0000_2a14()
       0000:2afb 88 c4           MOV        AH,AL
       0000:2afd 8a c3           MOV        AL,BL
       0000:2aff e8 bb 30        CALL       FUN_0000_5bbd                                    undefined FUN_0000_5bbd()
       0000:2b02 eb 01           JMP        LAB_0000_2b05
                             LAB_0000_2b04                                   XREF[3]:     0000:2a83(j), 0000:2a88(j), 
                                                                                          0000:2acf(j)  
       0000:2b04 59              POP        CX
                             LAB_0000_2b05                                   XREF[1]:     0000:2b02(j)  
       0000:2b05 5d              POP        BP
       0000:2b06 5a              POP        DX
       0000:2b07 59              POP        CX
       0000:2b08 5b              POP        BX
       0000:2b09 58              POP        AX
       0000:2b0a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2b0b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2b0b                                   XREF[8]:     FUN_0000_2693:0000:26da(c), 
                                                                                          FUN_0000_2693:0000:26fd(c), 
                                                                                          FUN_0000_2693:0000:2757(c), 
                                                                                          FUN_0000_2693:0000:27ae(c), 
                                                                                          FUN_0000_2693:0000:27f9(c), 
                                                                                          FUN_0000_2693:0000:2810(c), 
                                                                                          FUN_0000_2693:0000:283a(c), 
                                                                                          FUN_0000_2693:0000:2847(c)  
       0000:2b0b 50              PUSH       AX
       0000:2b0c 53              PUSH       BX
       0000:2b0d 51              PUSH       CX
       0000:2b0e 52              PUSH       DX
       0000:2b0f 57              PUSH       DI
       0000:2b10 bf 91 0c        MOV        DI,0xc91
       0000:2b13 e8 c9 27        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:2b16 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2b1a 88 d3           MOV        BL,DL
       0000:2b1c 32 ff           XOR        BH,BH
       0000:2b1e b1 04           MOV        CL,0x4
       0000:2b20 d3 e3           SHL        BX,CL
       0000:2b22 f6 87 75        TEST       byte ptr [BX + 0xc175],0x2
                 c1 02
       0000:2b27 75 1a           JNZ        LAB_0000_2b43
       0000:2b29 f7 9f 71 c1     NEG        word ptr [BX + 0xc171]
       0000:2b2d 8b 87 6d c1     MOV        AX,word ptr [BX + 0xc16d]
       0000:2b31 25 f8 ff        AND        AX,0xfff8
       0000:2b34 f7 87 71        TEST       word ptr [BX + 0xc171],0xffff
                 c1 ff ff
       0000:2b3a 78 03           JS         LAB_0000_2b3f
       0000:2b3c 05 08 00        ADD        AX,0x8
                             LAB_0000_2b3f                                   XREF[1]:     0000:2b3a(j)  
       0000:2b3f 89 87 6d c1     MOV        word ptr [BX + 0xc16d],AX
                             LAB_0000_2b43                                   XREF[1]:     0000:2b27(j)  
       0000:2b43 5f              POP        DI
       0000:2b44 5a              POP        DX
       0000:2b45 59              POP        CX
       0000:2b46 5b              POP        BX
       0000:2b47 58              POP        AX
       0000:2b48 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2b49()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2b49                                   XREF[8]:     FUN_0000_2693:0000:26dd(c), 
                                                                                          FUN_0000_2693:0000:26f1(c), 
                                                                                          FUN_0000_2693:0000:2746(c), 
                                                                                          FUN_0000_2693:0000:27bc(c), 
                                                                                          FUN_0000_2693:0000:27ef(c), 
                                                                                          FUN_0000_2693:0000:281a(c), 
                                                                                          FUN_0000_2693:0000:2831(c), 
                                                                                          FUN_0000_2693:0000:2850(c)  
       0000:2b49 50              PUSH       AX
       0000:2b4a 53              PUSH       BX
       0000:2b4b 51              PUSH       CX
       0000:2b4c 52              PUSH       DX
       0000:2b4d 57              PUSH       DI
       0000:2b4e bf 91 0c        MOV        DI,0xc91
       0000:2b51 e8 8b 27        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:2b54 8a 16 7c d3     MOV        DL,byte ptr [0xd37c]
       0000:2b58 88 d3           MOV        BL,DL
       0000:2b5a 32 ff           XOR        BH,BH
       0000:2b5c b1 04           MOV        CL,0x4
       0000:2b5e d3 e3           SHL        BX,CL
       0000:2b60 f6 87 75        TEST       byte ptr [BX + 0xc175],0x2
                 c1 02
       0000:2b65 75 1f           JNZ        LAB_0000_2b86
       0000:2b67 f7 9f 73 c1     NEG        word ptr [BX + 0xc173]
       0000:2b6b 8b 87 6f c1     MOV        AX,word ptr [BX + 0xc16f]
       0000:2b6f b2 06           MOV        DL,0x6
       0000:2b71 f6 f2           DIV        DL
       0000:2b73 32 e4           XOR        AH,AH
       0000:2b75 f6 e2           MUL        DL
       0000:2b77 f7 87 73        TEST       word ptr [BX + 0xc173],0xffff
                 c1 ff ff
       0000:2b7d 78 03           JS         LAB_0000_2b82
       0000:2b7f 05 06 00        ADD        AX,0x6
                             LAB_0000_2b82                                   XREF[1]:     0000:2b7d(j)  
       0000:2b82 89 87 6f c1     MOV        word ptr [BX + 0xc16f],AX
                             LAB_0000_2b86                                   XREF[1]:     0000:2b65(j)  
       0000:2b86 5f              POP        DI
       0000:2b87 5a              POP        DX
       0000:2b88 59              POP        CX
       0000:2b89 5b              POP        BX
       0000:2b8a 58              POP        AX
       0000:2b8b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2b8c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2b8c                                   XREF[1]:     FUN_0000_2d3e:0000:2d9f(c)  
       0000:2b8c 50              PUSH       AX
       0000:2b8d 53              PUSH       BX
       0000:2b8e 51              PUSH       CX
       0000:2b8f 52              PUSH       DX
       0000:2b90 57              PUSH       DI
       0000:2b91 88 d3           MOV        BL,DL
       0000:2b93 32 ff           XOR        BH,BH
       0000:2b95 b1 04           MOV        CL,0x4
       0000:2b97 d3 e3           SHL        BX,CL
       0000:2b99 81 c3 6d c1     ADD        BX,0xc16d
       0000:2b9d 8b 07           MOV        AX,word ptr [BX]
       0000:2b9f 3d 10 00        CMP        AX,0x10
       0000:2ba2 73 12           JNC        LAB_0000_2bb6
       0000:2ba4 bf 83 0c        MOV        DI,0xc83
       0000:2ba7 e8 35 27        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:2baa b8 10 00        MOV        AX,0x10
       0000:2bad f6 47 08 08     TEST       byte ptr [BX + 0x8],0x8
       0000:2bb1 75 03           JNZ        LAB_0000_2bb6
       0000:2bb3 f7 5f 04        NEG        word ptr [BX + 0x4]
                             LAB_0000_2bb6                                   XREF[2]:     0000:2ba2(j), 0000:2bb1(j)  
       0000:2bb6 3d c8 01        CMP        AX,0x1c8
       0000:2bb9 76 12           JBE        LAB_0000_2bcd
       0000:2bbb bf 83 0c        MOV        DI,0xc83
       0000:2bbe e8 1e 27        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:2bc1 b8 c8 01        MOV        AX,0x1c8
       0000:2bc4 f6 47 08 08     TEST       byte ptr [BX + 0x8],0x8
       0000:2bc8 75 03           JNZ        LAB_0000_2bcd
       0000:2bca f7 5f 04        NEG        word ptr [BX + 0x4]
                             LAB_0000_2bcd                                   XREF[2]:     0000:2bb9(j), 0000:2bc8(j)  
       0000:2bcd 89 07           MOV        word ptr [BX],AX
       0000:2bcf 8b 47 02        MOV        AX,word ptr [BX + 0x2]
       0000:2bd2 3d 0c 00        CMP        AX,0xc
       0000:2bd5 73 0c           JNC        LAB_0000_2be3
       0000:2bd7 bf 8a 0c        MOV        DI,0xc8a
       0000:2bda e8 02 27        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:2bdd b8 0c 00        MOV        AX,0xc
       0000:2be0 f7 5f 06        NEG        word ptr [BX + 0x6]
                             LAB_0000_2be3                                   XREF[1]:     0000:2bd5(j)  
       0000:2be3 89 47 02        MOV        word ptr [BX + 0x2],AX
       0000:2be6 5f              POP        DI
       0000:2be7 5a              POP        DX
       0000:2be8 59              POP        CX
       0000:2be9 5b              POP        BX
       0000:2bea 58              POP        AX
       0000:2beb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2bec()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:2cc5(*)  
                             FUN_0000_2bec                                   XREF[1]:     FUN_0000_2d3e:0000:2daf(c)  
       0000:2bec 50              PUSH       AX
       0000:2bed 53              PUSH       BX
       0000:2bee 51              PUSH       CX
       0000:2bef 52              PUSH       DX
       0000:2bf0 56              PUSH       SI
       0000:2bf1 57              PUSH       DI
       0000:2bf2 55              PUSH       BP
       0000:2bf3 89 e5           MOV        BP,SP
       0000:2bf5 88 d3           MOV        BL,DL
       0000:2bf7 32 ff           XOR        BH,BH
       0000:2bf9 b1 04           MOV        CL,0x4
       0000:2bfb d3 e3           SHL        BX,CL
       0000:2bfd 81 c3 6d c1     ADD        BX,0xc16d
       0000:2c01 8b 47 02        MOV        AX,word ptr [BX + 0x2]
       0000:2c04 3d 43 01        CMP        AX,0x143
       0000:2c07 73 03           JNC        LAB_0000_2c0c
       0000:2c09 e9 bf 00        JMP        LAB_0000_2ccb
                             LAB_0000_2c0c                                   XREF[1]:     0000:2c07(j)  
       0000:2c0c 8b 07           MOV        AX,word ptr [BX]
       0000:2c0e 8b 16 47 d2     MOV        DX,word ptr [0xd247]
       0000:2c12 83 ea 07        SUB        DX,0x7
       0000:2c15 39 d0           CMP        AX,DX
       0000:2c17 73 03           JNC        LAB_0000_2c1c
       0000:2c19 e9 af 00        JMP        LAB_0000_2ccb
                             LAB_0000_2c1c                                   XREF[1]:     0000:2c17(j)  
       0000:2c1c 83 c2 07        ADD        DX,0x7
       0000:2c1f 8a 0e 49 d2     MOV        CL,byte ptr [0xd249]
       0000:2c23 32 ed           XOR        CH,CH
       0000:2c25 d1 e1           SHL        CX,0x1
       0000:2c27 d1 e1           SHL        CX,0x1
       0000:2c29 d1 e1           SHL        CX,0x1
       0000:2c2b 01 ca           ADD        DX,CX
       0000:2c2d 4a              DEC        DX
       0000:2c2e 39 d0           CMP        AX,DX
       0000:2c30 76 03           JBE        LAB_0000_2c35
       0000:2c32 e9 96 00        JMP        LAB_0000_2ccb
                             LAB_0000_2c35                                   XREF[1]:     0000:2c30(j)  
       0000:2c35 80 67 08 fd     AND        byte ptr [BX + 0x8],0xfd
       0000:2c39 f6 06 56        TEST       byte ptr [0xd256],0xff
                 d2 ff
       0000:2c3e 74 09           JZ         LAB_0000_2c49
       0000:2c40 80 4f 08 02     OR         byte ptr [BX + 0x8],0x2
       0000:2c44 c6 06 56        MOV        byte ptr [0xd256],0x0
                 d2 00
                             LAB_0000_2c49                                   XREF[1]:     0000:2c3e(j)  
       0000:2c49 bf 7c 0c        MOV        DI,0xc7c
       0000:2c4c e8 90 26        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:2c4f c7 47 02        MOV        word ptr [BX + 0x2],0x143
                 43 01
       0000:2c54 f7 5f 06        NEG        word ptr [BX + 0x6]
       0000:2c57 8b 07           MOV        AX,word ptr [BX]
       0000:2c59 2b 06 47 d2     SUB        AX,word ptr [0xd247]
       0000:2c5d 05 07 00        ADD        AX,0x7
       0000:2c60 be 7a 0b        MOV        SI,0xb7a
       0000:2c63 8a 16 49 d2     MOV        DL,byte ptr [0xd249]
       0000:2c67 80 ea 04        SUB        DL,0x4
       0000:2c6a d0 ea           SHR        DL,0x1
       0000:2c6c 32 f6           XOR        DH,DH
       0000:2c6e 03 f2           ADD        SI,DX
       0000:2c70 d1 e2           SHL        DX,0x1
       0000:2c72 d1 e2           SHL        DX,0x1
       0000:2c74 03 f2           ADD        SI,DX
       0000:2c76 3a 04           CMP        AL,byte ptr [SI]
       0000:2c78 77 07           JA         LAB_0000_2c81
       0000:2c7a c7 47 04        MOV        word ptr [BX + 0x4],0xfffd
                 fd ff
       0000:2c7f eb 35           JMP        LAB_0000_2cb6
                             LAB_0000_2c81                                   XREF[1]:     0000:2c78(j)  
       0000:2c81 3a 44 01        CMP        AL,byte ptr [SI + 0x1]
       0000:2c84 77 07           JA         LAB_0000_2c8d
       0000:2c86 c7 47 04        MOV        word ptr [BX + 0x4],0xfffe
                 fe ff
       0000:2c8b eb 29           JMP        LAB_0000_2cb6
                             LAB_0000_2c8d                                   XREF[1]:     0000:2c84(j)  
       0000:2c8d 3a 44 02        CMP        AL,byte ptr [SI + 0x2]
       0000:2c90 77 07           JA         LAB_0000_2c99
       0000:2c92 c7 47 04        MOV        word ptr [BX + 0x4],0xffff
                 ff ff
       0000:2c97 eb 1d           JMP        LAB_0000_2cb6
                             LAB_0000_2c99                                   XREF[1]:     0000:2c90(j)  
       0000:2c99 3a 44 03        CMP        AL,byte ptr [SI + 0x3]
       0000:2c9c 77 07           JA         LAB_0000_2ca5
       0000:2c9e c7 47 04        MOV        word ptr [BX + 0x4],0x1
                 01 00
       0000:2ca3 eb 11           JMP        LAB_0000_2cb6
                             LAB_0000_2ca5                                   XREF[1]:     0000:2c9c(j)  
       0000:2ca5 3a 44 04        CMP        AL,byte ptr [SI + 0x4]
       0000:2ca8 77 07           JA         LAB_0000_2cb1
       0000:2caa c7 47 04        MOV        word ptr [BX + 0x4],0x2
                 02 00
       0000:2caf eb 05           JMP        LAB_0000_2cb6
                             LAB_0000_2cb1                                   XREF[1]:     0000:2ca8(j)  
       0000:2cb1 c7 47 04        MOV        word ptr [BX + 0x4],0x3
                 03 00
                             LAB_0000_2cb6                                   XREF[5]:     0000:2c7f(j), 0000:2c8b(j), 
                                                                                          0000:2c97(j), 0000:2ca3(j), 
                                                                                          0000:2caf(j)  
       0000:2cb6 f6 06 4c        TEST       byte ptr [0xd24c],0x1
                 d2 01
       0000:2cbb 74 08           JZ         LAB_0000_2cc5
       0000:2cbd 8a 47 08        MOV        AL,byte ptr [BX + 0x8]
       0000:2cc0 0c 08           OR         AL,0x8
       0000:2cc2 88 47 08        MOV        byte ptr [BX + 0x8],AL
                             LAB_0000_2cc5                                   XREF[1]:     0000:2cbb(j)  
       0000:2cc5 8a 56 06        MOV        DL,byte ptr [BP + local_8]
       0000:2cc8 e8 a5 0c        CALL       FUN_0000_3970                                    undefined FUN_0000_3970()
                             LAB_0000_2ccb                                   XREF[3]:     0000:2c09(j), 0000:2c19(j), 
                                                                                          0000:2c32(j)  
       0000:2ccb 5d              POP        BP
       0000:2ccc 5f              POP        DI
       0000:2ccd 5e              POP        SI
       0000:2cce 5a              POP        DX
       0000:2ccf 59              POP        CX
       0000:2cd0 5b              POP        BX
       0000:2cd1 58              POP        AX
       0000:2cd2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2cd3()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2cd3                                   XREF[1]:     FUN_0000_2d3e:0000:2da5(c)  
       0000:2cd3 50              PUSH       AX
       0000:2cd4 53              PUSH       BX
       0000:2cd5 51              PUSH       CX
       0000:2cd6 57              PUSH       DI
       0000:2cd7 f6 06 57        TEST       byte ptr [0xd257],0xff
                 d2 ff
       0000:2cdc 74 27           JZ         LAB_0000_2d05
       0000:2cde 88 d3           MOV        BL,DL
       0000:2ce0 32 ff           XOR        BH,BH
       0000:2ce2 b1 04           MOV        CL,0x4
       0000:2ce4 d3 e3           SHL        BX,CL
       0000:2ce6 81 c3 6d c1     ADD        BX,0xc16d
       0000:2cea 8b 47 02        MOV        AX,word ptr [BX + 0x2]
       0000:2ced 3d 48 01        CMP        AX,0x148
       0000:2cf0 76 13           JBE        LAB_0000_2d05
       0000:2cf2 c7 47 02        MOV        word ptr [BX + 0x2],0x148
                 48 01
       0000:2cf7 f7 5f 06        NEG        word ptr [BX + 0x6]
       0000:2cfa c6 06 57        MOV        byte ptr [0xd257],0x0
                 d2 00
       0000:2cff bf be 0c        MOV        DI,0xcbe
       0000:2d02 e8 da 25        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
                             LAB_0000_2d05                                   XREF[2]:     0000:2cdc(j), 0000:2cf0(j)  
       0000:2d05 5f              POP        DI
       0000:2d06 59              POP        CX
       0000:2d07 5b              POP        BX
       0000:2d08 58              POP        AX
       0000:2d09 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2d0a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2d0a                                   XREF[1]:     FUN_0000_2d3e:0000:2db2(c)  
       0000:2d0a 50              PUSH       AX
       0000:2d0b 53              PUSH       BX
       0000:2d0c 52              PUSH       DX
       0000:2d0d 88 d3           MOV        BL,DL
       0000:2d0f 32 ff           XOR        BH,BH
       0000:2d11 b1 04           MOV        CL,0x4
       0000:2d13 d3 e3           SHL        BX,CL
       0000:2d15 81 c3 6d c1     ADD        BX,0xc16d
       0000:2d19 80 4f 08 01     OR         byte ptr [BX + 0x8],0x1
       0000:2d1d 80 67 08 fb     AND        byte ptr [BX + 0x8],0xfb
       0000:2d21 8b 47 02        MOV        AX,word ptr [BX + 0x2]
       0000:2d24 3d 43 01        CMP        AX,0x143
       0000:2d27 76 11           JBE        LAB_0000_2d3a
       0000:2d29 80 4f 08 04     OR         byte ptr [BX + 0x8],0x4
       0000:2d2d 3d 51 01        CMP        AX,0x151
       0000:2d30 76 08           JBE        LAB_0000_2d3a
       0000:2d32 80 67 08 fe     AND        byte ptr [BX + 0x8],0xfe
       0000:2d36 fe 0e 51 d2     DEC        byte ptr [0xd251]
                             LAB_0000_2d3a                                   XREF[2]:     0000:2d27(j), 0000:2d30(j)  
       0000:2d3a 5a              POP        DX
       0000:2d3b 5b              POP        BX
       0000:2d3c 58              POP        AX
       0000:2d3d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2d3e()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2d3e                                   XREF[1]:     FUN_0000_2e09:0000:2e1a(c)  
       0000:2d3e 50              PUSH       AX
       0000:2d3f 53              PUSH       BX
       0000:2d40 51              PUSH       CX
       0000:2d41 52              PUSH       DX
       0000:2d42 56              PUSH       SI
       0000:2d43 57              PUSH       DI
       0000:2d44 88 16 7d d3     MOV        byte ptr [0xd37d],DL
       0000:2d48 88 d3           MOV        BL,DL
       0000:2d4a 32 ff           XOR        BH,BH
       0000:2d4c b1 04           MOV        CL,0x4
       0000:2d4e d3 e3           SHL        BX,CL
       0000:2d50 89 de           MOV        SI,BX
       0000:2d52 f6 84 75        TEST       byte ptr [SI + 0xc175],0x8
                 c1 08
       0000:2d57 75 36           JNZ        LAB_0000_2d8f
       0000:2d59 8b 84 6d c1     MOV        AX,word ptr [SI + 0xc16d]
       0000:2d5d 8b 9c 6f c1     MOV        BX,word ptr [SI + 0xc16f]
       0000:2d61 03 84 71 c1     ADD        AX,word ptr [SI + 0xc171]
       0000:2d65 03 9c 73 c1     ADD        BX,word ptr [SI + 0xc173]
       0000:2d69 8a 16 3c d2     MOV        DL,byte ptr [0xd23c]
       0000:2d6d 32 f6           XOR        DH,DH
       0000:2d6f 3b 94 76 c1     CMP        DX,word ptr [SI + 0xc176]
       0000:2d73 73 10           JNC        LAB_0000_2d85
       0000:2d75 ba 01 00        MOV        DX,0x1
       0000:2d78 f7 84 73        TEST       word ptr [SI + 0xc173],0xffff
                 c1 ff ff
       0000:2d7e 79 03           JNS        LAB_0000_2d83
       0000:2d80 ba ff ff        MOV        DX,0xffff
                             LAB_0000_2d83                                   XREF[1]:     0000:2d7e(j)  
       0000:2d83 03 da           ADD        BX,DX
                             LAB_0000_2d85                                   XREF[1]:     0000:2d73(j)  
       0000:2d85 89 84 6d c1     MOV        word ptr [SI + 0xc16d],AX
       0000:2d89 89 9c 6f c1     MOV        word ptr [SI + 0xc16f],BX
       0000:2d8d eb 0c           JMP        LAB_0000_2d9b
                             LAB_0000_2d8f                                   XREF[1]:     0000:2d57(j)  
       0000:2d8f 8b 84 6d c1     MOV        AX,word ptr [SI + 0xc16d]
       0000:2d93 03 06 4d d2     ADD        AX,word ptr [0xd24d]
       0000:2d97 89 84 6d c1     MOV        word ptr [SI + 0xc16d],AX
                             LAB_0000_2d9b                                   XREF[1]:     0000:2d8d(j)  
       0000:2d9b 8a 16 7d d3     MOV        DL,byte ptr [0xd37d]
       0000:2d9f e8 ea fd        CALL       FUN_0000_2b8c                                    undefined FUN_0000_2b8c()
       0000:2da2 e8 ee f8        CALL       FUN_0000_2693                                    undefined FUN_0000_2693()
       0000:2da5 e8 2b ff        CALL       FUN_0000_2cd3                                    undefined FUN_0000_2cd3()
       0000:2da8 f6 84 75        TEST       byte ptr [SI + 0xc175],0xc
                 c1 0c
       0000:2dad 75 03           JNZ        LAB_0000_2db2
       0000:2daf e8 3a fe        CALL       FUN_0000_2bec                                    undefined FUN_0000_2bec()
                             LAB_0000_2db2                                   XREF[1]:     0000:2dad(j)  
       0000:2db2 e8 55 ff        CALL       FUN_0000_2d0a                                    undefined FUN_0000_2d0a()
       0000:2db5 5f              POP        DI
       0000:2db6 5e              POP        SI
       0000:2db7 5a              POP        DX
       0000:2db8 59              POP        CX
       0000:2db9 5b              POP        BX
       0000:2dba 58              POP        AX
       0000:2dbb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2dbc()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2dbc                                   XREF[1]:     FUN_0000_3658:0000:3682(c)  
       0000:2dbc 50              PUSH       AX
       0000:2dbd 53              PUSH       BX
       0000:2dbe 8b 1e 47 d2     MOV        BX,word ptr [0xd247]
       0000:2dc2 80 3e 2b        CMP        byte ptr [0xd42b],0x1
                 d4 01
       0000:2dc7 75 1b           JNZ        LAB_0000_2de4
       0000:2dc9 80 3e 2a        CMP        byte ptr [0xd42a],0x1
                 d4 01
       0000:2dce 74 2c           JZ         LAB_0000_2dfc
       0000:2dd0 a1 47 d2        MOV        AX,[0xd247]
       0000:2dd3 05 03 00        ADD        AX,0x3
       0000:2dd6 3b 06 4a d2     CMP        AX,word ptr [0xd24a]
       0000:2dda 76 03           JBE        LAB_0000_2ddf
       0000:2ddc a1 4a d2        MOV        AX,[0xd24a]
                             LAB_0000_2ddf                                   XREF[1]:     0000:2dda(j)  
       0000:2ddf a3 47 d2        MOV        [0xd247],AX
       0000:2de2 eb 18           JMP        LAB_0000_2dfc
                             LAB_0000_2de4                                   XREF[1]:     0000:2dc7(j)  
       0000:2de4 80 3e 2a        CMP        byte ptr [0xd42a],0x1
                 d4 01
       0000:2de9 75 11           JNZ        LAB_0000_2dfc
       0000:2deb a1 47 d2        MOV        AX,[0xd247]
       0000:2dee 2d 03 00        SUB        AX,0x3
       0000:2df1 3d 0f 00        CMP        AX,0xf
       0000:2df4 77 03           JA         LAB_0000_2df9
       0000:2df6 b8 0f 00        MOV        AX,0xf
                             LAB_0000_2df9                                   XREF[1]:     0000:2df4(j)  
       0000:2df9 a3 47 d2        MOV        [0xd247],AX
                             LAB_0000_2dfc                                   XREF[3]:     0000:2dce(j), 0000:2de2(j), 
                                                                                          0000:2de9(j)  
       0000:2dfc 2b 1e 47 d2     SUB        BX,word ptr [0xd247]
       0000:2e00 f7 db           NEG        BX
       0000:2e02 89 1e 4d d2     MOV        word ptr [0xd24d],BX
       0000:2e06 5b              POP        BX
       0000:2e07 58              POP        AX
       0000:2e08 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2e09()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2e09                                   XREF[2]:     FUN_0000_3658:0000:3685(c), 
                                                                                          FUN_0000_3bbd:0000:3be4(c)  
       0000:2e09 51              PUSH       CX
       0000:2e0a 52              PUSH       DX
       0000:2e0b 56              PUSH       SI
       0000:2e0c b2 00           MOV        DL,0x0
       0000:2e0e b9 10 00        MOV        CX,0x10
       0000:2e11 be 6d c1        MOV        SI,0xc16d
                             LAB_0000_2e14                                   XREF[1]:     0000:2e22(j)  
       0000:2e14 f6 44 08 01     TEST       byte ptr [SI + 0x8],0x1
       0000:2e18 74 03           JZ         LAB_0000_2e1d
       0000:2e1a e8 21 ff        CALL       FUN_0000_2d3e                                    undefined FUN_0000_2d3e()
                             LAB_0000_2e1d                                   XREF[1]:     0000:2e18(j)  
       0000:2e1d fe c2           INC        DL
       0000:2e1f 83 c6 10        ADD        SI,0x10
       0000:2e22 e2 f0           LOOP       LAB_0000_2e14
       0000:2e24 e8 04 00        CALL       FUN_0000_2e2b                                    undefined FUN_0000_2e2b()
       0000:2e27 5e              POP        SI
       0000:2e28 5a              POP        DX
       0000:2e29 59              POP        CX
       0000:2e2a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2e2b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2e2b                                   XREF[1]:     FUN_0000_2e09:0000:2e24(c)  
       0000:2e2b 50              PUSH       AX
       0000:2e2c 51              PUSH       CX
       0000:2e2d 57              PUSH       DI
       0000:2e2e ff 0e 3d d2     DEC        word ptr [0xd23d]
       0000:2e32 75 3f           JNZ        LAB_0000_2e73
       0000:2e34 c7 06 3d        MOV        word ptr [0xd23d],LAB_0000_05fe+2
                 d2 00 06
       0000:2e3a bf 6d c1        MOV        DI,0xc16d
       0000:2e3d b9 10 00        MOV        CX,0x10
                             LAB_0000_2e40                                   XREF[1]:     0000:2e71(j)  
       0000:2e40 f6 45 08 01     TEST       byte ptr [DI + 0x8],0x1
       0000:2e44 74 28           JZ         LAB_0000_2e6e
       0000:2e46 83 7d 06 07     CMP        word ptr [DI + 0x6],0x7
       0000:2e4a 74 22           JZ         LAB_0000_2e6e
       0000:2e4c 83 7d 06 f9     CMP        word ptr [DI + 0x6],-0x7
       0000:2e50 74 1c           JZ         LAB_0000_2e6e
       0000:2e52 ff 45 09        INC        word ptr [DI + 0x9]
       0000:2e55 83 7d 09 03     CMP        word ptr [DI + 0x9],0x3
       0000:2e59 75 13           JNZ        LAB_0000_2e6e
       0000:2e5b c7 45 09        MOV        word ptr [DI + 0x9],0x0
                 00 00
       0000:2e60 8b 45 06        MOV        AX,word ptr [DI + 0x6]
       0000:2e63 85 c0           TEST       AX,AX
       0000:2e65 78 03           JS         LAB_0000_2e6a
       0000:2e67 40              INC        AX
       0000:2e68 eb 01           JMP        LAB_0000_2e6b
                             LAB_0000_2e6a                                   XREF[1]:     0000:2e65(j)  
       0000:2e6a 48              DEC        AX
                             LAB_0000_2e6b                                   XREF[1]:     0000:2e68(j)  
       0000:2e6b 89 45 06        MOV        word ptr [DI + 0x6],AX
                             LAB_0000_2e6e                                   XREF[4]:     0000:2e44(j), 0000:2e4a(j), 
                                                                                          0000:2e50(j), 0000:2e59(j)  
       0000:2e6e 83 c7 10        ADD        DI,0x10
       0000:2e71 e2 cd           LOOP       LAB_0000_2e40
                             LAB_0000_2e73                                   XREF[1]:     0000:2e32(j)  
       0000:2e73 5f              POP        DI
       0000:2e74 59              POP        CX
       0000:2e75 58              POP        AX
       0000:2e76 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16near FUN_0000_2e77()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2e77                                   XREF[1]:     FUN_0000_3933:0000:3967(c)  
       0000:2e77 50              PUSH       AX
       0000:2e78 53              PUSH       BX
       0000:2e79 51              PUSH       CX
       0000:2e7a 52              PUSH       DX
       0000:2e7b 55              PUSH       BP
       0000:2e7c 89 e5           MOV        BP,SP
       0000:2e7e 83 c5 0a        ADD        BP,0xa
       0000:2e81 8b 5e 0e        MOV        BX,word ptr [BP + Stack[0xe]]
       0000:2e84 b1 04           MOV        CL,0x4
       0000:2e86 d3 e3           SHL        BX,CL
       0000:2e88 81 c3 6d c1     ADD        BX,0xc16d
       0000:2e8c 8b 46 02        MOV        AX,word ptr [BP + Stack[0x2]]
       0000:2e8f 89 07           MOV        word ptr [BX],AX
       0000:2e91 8b 46 04        MOV        AX,word ptr [BP + Stack[0x4]]
       0000:2e94 89 47 02        MOV        word ptr [BX + 0x2],AX
       0000:2e97 8b 46 06        MOV        AX,word ptr [BP + Stack[0x6]]
       0000:2e9a 89 47 04        MOV        word ptr [BX + 0x4],AX
       0000:2e9d 8b 46 08        MOV        AX,word ptr [BP + Stack[0x8]]
       0000:2ea0 89 47 06        MOV        word ptr [BX + 0x6],AX
       0000:2ea3 8b 46 0a        MOV        AX,word ptr [BP + Stack[0xa]]
       0000:2ea6 89 47 09        MOV        word ptr [BX + 0x9],AX
       0000:2ea9 8b 46 0c        MOV        AX,word ptr [BP + Stack[0xc]]
       0000:2eac 88 47 08        MOV        byte ptr [BX + 0x8],AL
       0000:2eaf ba ce 03        MOV        DX,0x3ce
       0000:2eb2 b0 05           MOV        AL,0x5
       0000:2eb4 ee              OUT        DX,AL
       0000:2eb5 42              INC        DX
       0000:2eb6 b0 11           MOV        AL,0x11
       0000:2eb8 ee              OUT        DX,AL
       0000:2eb9 8b 46 02        MOV        AX,word ptr [BP + Stack[0x2]]
       0000:2ebc 8b 5e 04        MOV        BX,word ptr [BP + Stack[0x4]]
       0000:2ebf 8a 56 0e        MOV        DL,byte ptr [BP + Stack[0xe]]
       0000:2ec2 e8 f0 25        CALL       FUN_0000_54b5                                    undefined FUN_0000_54b5()
       0000:2ec5 ba ce 03        MOV        DX,0x3ce
       0000:2ec8 b0 05           MOV        AL,0x5
       0000:2eca ee              OUT        DX,AL
       0000:2ecb 42              INC        DX
       0000:2ecc b0 10           MOV        AL,0x10
       0000:2ece ee              OUT        DX,AL
       0000:2ecf 5d              POP        BP
       0000:2ed0 5a              POP        DX
       0000:2ed1 59              POP        CX
       0000:2ed2 5b              POP        BX
       0000:2ed3 58              POP        AX
       0000:2ed4 c2 0e 00        RET        0xe
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_2ed7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_2ed7                                   XREF[3]:     FUN_0000_3158:0000:31aa(c), 
                                                                                          FUN_0000_31b4:0000:3206(c), 
                                                                                          FUN_0000_31b4:0000:320c(c)  
       0000:2ed7 50              PUSH       AX
       0000:2ed8 53              PUSH       BX
       0000:2ed9 51              PUSH       CX
       0000:2eda 52              PUSH       DX
       0000:2edb 56              PUSH       SI
       0000:2edc 57              PUSH       DI
       0000:2edd 32 f6           XOR        DH,DH
       0000:2edf 89 d6           MOV        SI,DX
       0000:2ee1 d1 e6           SHL        SI,0x1
       0000:2ee3 d1 e6           SHL        SI,0x1
       0000:2ee5 d1 e6           SHL        SI,0x1
       0000:2ee7 d1 e6           SHL        SI,0x1
       0000:2ee9 81 c6 6d c1     ADD        SI,0xc16d
       0000:2eed 8b 04           MOV        AX,word ptr [SI]
       0000:2eef 05 08 00        ADD        AX,0x8
       0000:2ef2 3b 05           CMP        AX,word ptr [DI]
       0000:2ef4 73 03           JNC        LAB_0000_2ef9
       0000:2ef6 e9 ba 01        JMP        LAB_0000_30b3
                             LAB_0000_2ef9                                   XREF[1]:     0000:2ef4(j)  
       0000:2ef9 2d 08 00        SUB        AX,0x8
       0000:2efc 3b 45 04        CMP        AX,word ptr [DI + 0x4]
       0000:2eff 76 03           JBE        LAB_0000_2f04
       0000:2f01 e9 af 01        JMP        LAB_0000_30b3
                             LAB_0000_2f04                                   XREF[1]:     0000:2eff(j)  
       0000:2f04 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:2f07 83 c3 06        ADD        BX,0x6
       0000:2f0a 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       0000:2f0d 73 03           JNC        LAB_0000_2f12
       0000:2f0f e9 a1 01        JMP        LAB_0000_30b3
                             LAB_0000_2f12                                   XREF[1]:     0000:2f0d(j)  
       0000:2f12 83 eb 06        SUB        BX,0x6
       0000:2f15 3b 5d 06        CMP        BX,word ptr [DI + 0x6]
       0000:2f18 76 03           JBE        LAB_0000_2f1d
       0000:2f1a e9 96 01        JMP        LAB_0000_30b3
                             LAB_0000_2f1d                                   XREF[1]:     0000:2f18(j)  
       0000:2f1d c6 06 7e        MOV        byte ptr [0xd37e],0x0
                 d3 00
       0000:2f22 c6 06 7f        MOV        byte ptr [0xd37f],0x0
                 d3 00
       0000:2f27 3b 05           CMP        AX,word ptr [DI]
       0000:2f29 72 10           JC         LAB_0000_2f3b
       0000:2f2b fe 06 7e d3     INC        byte ptr [0xd37e]
       0000:2f2f 05 07 00        ADD        AX,0x7
       0000:2f32 3b 45 04        CMP        AX,word ptr [DI + 0x4]
       0000:2f35 72 04           JC         LAB_0000_2f3b
       0000:2f37 fe 06 7e d3     INC        byte ptr [0xd37e]
                             LAB_0000_2f3b                                   XREF[2]:     0000:2f29(j), 0000:2f35(j)  
       0000:2f3b 3b 5d 02        CMP        BX,word ptr [DI + 0x2]
       0000:2f3e 72 10           JC         LAB_0000_2f50
       0000:2f40 fe 06 7f d3     INC        byte ptr [0xd37f]
       0000:2f44 83 c3 05        ADD        BX,0x5
       0000:2f47 3b 5d 06        CMP        BX,word ptr [DI + 0x6]
       0000:2f4a 72 04           JC         LAB_0000_2f50
       0000:2f4c fe 06 7f d3     INC        byte ptr [0xd37f]
                             LAB_0000_2f50                                   XREF[2]:     0000:2f3e(j), 0000:2f4a(j)  
       0000:2f50 80 3e 7e        CMP        byte ptr [0xd37e],0x1
                 d3 01
       0000:2f55 75 03           JNZ        LAB_0000_2f5a
       0000:2f57 e9 1a 01        JMP        LAB_0000_3074
                             LAB_0000_2f5a                                   XREF[1]:     0000:2f55(j)  
       0000:2f5a 80 3e 7f        CMP        byte ptr [0xd37f],0x1
                 d3 01
       0000:2f5f 75 03           JNZ        LAB_0000_2f64
       0000:2f61 e9 31 01        JMP        LAB_0000_3095
                             LAB_0000_2f64                                   XREF[1]:     0000:2f5f(j)  
       0000:2f64 c6 06 88        MOV        byte ptr [0xd388],0x0
                 d3 00
       0000:2f69 f6 06 7e        TEST       byte ptr [0xd37e],0xff
                 d3 ff
       0000:2f6e 75 05           JNZ        LAB_0000_2f75
       0000:2f70 80 06 88        ADD        byte ptr [0xd388],0x2
                 d3 02
                             LAB_0000_2f75                                   XREF[1]:     0000:2f6e(j)  
       0000:2f75 f6 06 7f        TEST       byte ptr [0xd37f],0xff
                 d3 ff
       0000:2f7a 75 04           JNZ        LAB_0000_2f80
       0000:2f7c fe 06 88 d3     INC        byte ptr [0xd388]
                             LAB_0000_2f80                                   XREF[1]:     0000:2f7a(j)  
       0000:2f80 c6 06 89        MOV        byte ptr [0xd389],0x0
                 d3 00
       0000:2f85 f7 44 04        TEST       word ptr [SI + 0x4],0xffff
                 ff ff
       0000:2f8a 79 05           JNS        LAB_0000_2f91
       0000:2f8c 80 06 89        ADD        byte ptr [0xd389],0x2
                 d3 02
                             LAB_0000_2f91                                   XREF[1]:     0000:2f8a(j)  
       0000:2f91 f7 44 06        TEST       word ptr [SI + 0x6],0xffff
                 ff ff
       0000:2f96 79 04           JNS        LAB_0000_2f9c
       0000:2f98 fe 06 89 d3     INC        byte ptr [0xd389]
                             LAB_0000_2f9c                                   XREF[1]:     0000:2f96(j)  
       0000:2f9c a0 88 d3        MOV        AL,[0xd388]
       0000:2f9f d0 e0           SHL        AL,0x1
       0000:2fa1 d0 e0           SHL        AL,0x1
       0000:2fa3 02 06 89 d3     ADD        AL,byte ptr [0xd389]
       0000:2fa7 bb 5a 0b        MOV        BX,0xb5a
       0000:2faa d7              XLAT       BX=>LAB_0000_0b5a
       0000:2fab 3c 01           CMP        AL,0x1
       0000:2fad 75 03           JNZ        LAB_0000_2fb2
       0000:2faf e9 e3 00        JMP        LAB_0000_3095
                             LAB_0000_2fb2                                   XREF[1]:     0000:2fad(j)  
       0000:2fb2 3c 02           CMP        AL,0x2
       0000:2fb4 75 03           JNZ        LAB_0000_2fb9
       0000:2fb6 e9 bb 00        JMP        LAB_0000_3074
                             LAB_0000_2fb9                                   XREF[1]:     0000:2fb4(j)  
       0000:2fb9 8a 0e 88 d3     MOV        CL,byte ptr [0xd388]
       0000:2fbd 80 f9 00        CMP        CL,0x0
       0000:2fc0 75 29           JNZ        LAB_0000_2feb
       0000:2fc2 8b 04           MOV        AX,word ptr [SI]
       0000:2fc4 2b 45 04        SUB        AX,word ptr [DI + 0x4]
       0000:2fc7 05 07 00        ADD        AX,0x7
       0000:2fca 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:2fcd 2b 5d 06        SUB        BX,word ptr [DI + 0x6]
       0000:2fd0 83 c3 05        ADD        BX,0x5
       0000:2fd3 80 fb 02        CMP        BL,0x2
       0000:2fd6 72 02           JC         LAB_0000_2fda
       0000:2fd8 fe c3           INC        BL
                             LAB_0000_2fda                                   XREF[1]:     0000:2fd6(j)  
       0000:2fda 80 fb 05        CMP        BL,0x5
       0000:2fdd 72 02           JC         LAB_0000_2fe1
       0000:2fdf fe c3           INC        BL
                             LAB_0000_2fe1                                   XREF[1]:     0000:2fdd(j)  
       0000:2fe1 38 d8           CMP        AL,BL
       0000:2fe3 73 03           JNC        LAB_0000_2fe8
       0000:2fe5 e9 8c 00        JMP        LAB_0000_3074
                             LAB_0000_2fe8                                   XREF[1]:     0000:2fe3(j)  
       0000:2fe8 e9 aa 00        JMP        LAB_0000_3095
                             LAB_0000_2feb                                   XREF[1]:     0000:2fc0(j)  
       0000:2feb 80 f9 01        CMP        CL,0x1
       0000:2fee 75 2d           JNZ        LAB_0000_301d
       0000:2ff0 8b 04           MOV        AX,word ptr [SI]
       0000:2ff2 2b 45 04        SUB        AX,word ptr [DI + 0x4]
       0000:2ff5 05 07 00        ADD        AX,0x7
       0000:2ff8 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:2ffb 2b 5d 02        SUB        BX,word ptr [DI + 0x2]
       0000:2ffe 83 c3 05        ADD        BX,0x5
       0000:3001 80 fb 02        CMP        BL,0x2
       0000:3004 72 02           JC         LAB_0000_3008
       0000:3006 fe c3           INC        BL
                             LAB_0000_3008                                   XREF[1]:     0000:3004(j)  
       0000:3008 80 fb 05        CMP        BL,0x5
       0000:300b 72 02           JC         LAB_0000_300f
       0000:300d fe c3           INC        BL
                             LAB_0000_300f                                   XREF[1]:     0000:300b(j)  
       0000:300f 2c 07           SUB        AL,0x7
       0000:3011 f6 d8           NEG        AL
       0000:3013 38 d8           CMP        AL,BL
       0000:3015 77 03           JA         LAB_0000_301a
       0000:3017 e9 7b 00        JMP        LAB_0000_3095
                             LAB_0000_301a                                   XREF[1]:     0000:3015(j)  
       0000:301a e9 57 00        JMP        LAB_0000_3074
                             LAB_0000_301d                                   XREF[1]:     0000:2fee(j)  
       0000:301d 80 f9 02        CMP        CL,0x2
       0000:3020 75 2c           JNZ        LAB_0000_304e
       0000:3022 8b 04           MOV        AX,word ptr [SI]
       0000:3024 2b 05           SUB        AX,word ptr [DI]
       0000:3026 05 07 00        ADD        AX,0x7
       0000:3029 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:302c 2b 5d 06        SUB        BX,word ptr [DI + 0x6]
       0000:302f 83 c3 05        ADD        BX,0x5
       0000:3032 80 fb 02        CMP        BL,0x2
       0000:3035 72 02           JC         LAB_0000_3039
       0000:3037 fe c3           INC        BL
                             LAB_0000_3039                                   XREF[1]:     0000:3035(j)  
       0000:3039 80 fb 05        CMP        BL,0x5
       0000:303c 72 02           JC         LAB_0000_3040
       0000:303e fe c3           INC        BL
                             LAB_0000_3040                                   XREF[1]:     0000:303c(j)  
       0000:3040 2c 07           SUB        AL,0x7
       0000:3042 f6 d8           NEG        AL
       0000:3044 38 d8           CMP        AL,BL
       0000:3046 77 03           JA         LAB_0000_304b
       0000:3048 e9 29 00        JMP        LAB_0000_3074
                             LAB_0000_304b                                   XREF[1]:     0000:3046(j)  
       0000:304b e9 47 00        JMP        LAB_0000_3095
                             LAB_0000_304e                                   XREF[1]:     0000:3020(j)  
       0000:304e 8b 04           MOV        AX,word ptr [SI]
       0000:3050 2b 05           SUB        AX,word ptr [DI]
       0000:3052 05 07 00        ADD        AX,0x7
       0000:3055 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:3058 2b 5d 02        SUB        BX,word ptr [DI + 0x2]
       0000:305b 83 c3 05        ADD        BX,0x5
       0000:305e 80 fb 02        CMP        BL,0x2
       0000:3061 72 02           JC         LAB_0000_3065
       0000:3063 fe c3           INC        BL
                             LAB_0000_3065                                   XREF[1]:     0000:3061(j)  
       0000:3065 80 fb 05        CMP        BL,0x5
       0000:3068 72 02           JC         LAB_0000_306c
       0000:306a fe c3           INC        BL
                             LAB_0000_306c                                   XREF[1]:     0000:3068(j)  
       0000:306c 38 d8           CMP        AL,BL
       0000:306e 73 02           JNC        LAB_0000_3072
       0000:3070 eb 23           JMP        LAB_0000_3095
                             LAB_0000_3072                                   XREF[1]:     0000:306e(j)  
       0000:3072 eb 00           JMP        LAB_0000_3074
                             LAB_0000_3074                                   XREF[6]:     0000:2f57(j), 0000:2fb6(j), 
                                                                                          0000:2fe5(j), 0000:301a(j), 
                                                                                          0000:3048(j), 0000:3072(j)  
       0000:3074 80 3e 7f        CMP        byte ptr [0xd37f],0x0
                 d3 00
       0000:3079 75 0e           JNZ        LAB_0000_3089
       0000:307b 8b 45 02        MOV        AX,word ptr [DI + 0x2]
       0000:307e 2d 06 00        SUB        AX,0x6
       0000:3081 89 44 02        MOV        word ptr [SI + 0x2],AX
       0000:3084 f7 5c 06        NEG        word ptr [SI + 0x6]
       0000:3087 eb 2a           JMP        LAB_0000_30b3
                             LAB_0000_3089                                   XREF[1]:     0000:3079(j)  
       0000:3089 8b 45 06        MOV        AX,word ptr [DI + 0x6]
       0000:308c 40              INC        AX
       0000:308d 89 44 02        MOV        word ptr [SI + 0x2],AX
       0000:3090 f7 5c 06        NEG        word ptr [SI + 0x6]
       0000:3093 eb 1e           JMP        LAB_0000_30b3
                             LAB_0000_3095                                   XREF[6]:     0000:2f61(j), 0000:2faf(j), 
                                                                                          0000:2fe8(j), 0000:3017(j), 
                                                                                          0000:304b(j), 0000:3070(j)  
       0000:3095 80 3e 7e        CMP        byte ptr [0xd37e],0x0
                 d3 00
       0000:309a 75 0c           JNZ        LAB_0000_30a8
       0000:309c 8b 05           MOV        AX,word ptr [DI]
       0000:309e 2d 08 00        SUB        AX,0x8
       0000:30a1 89 04           MOV        word ptr [SI],AX
       0000:30a3 f7 5c 04        NEG        word ptr [SI + 0x4]
       0000:30a6 eb 0b           JMP        LAB_0000_30b3
                             LAB_0000_30a8                                   XREF[1]:     0000:309a(j)  
       0000:30a8 8b 45 04        MOV        AX,word ptr [DI + 0x4]
       0000:30ab 40              INC        AX
       0000:30ac 89 04           MOV        word ptr [SI],AX
       0000:30ae f7 5c 04        NEG        word ptr [SI + 0x4]
       0000:30b1 eb 00           JMP        LAB_0000_30b3
                             LAB_0000_30b3                                   XREF[8]:     0000:2ef6(j), 0000:2f01(j), 
                                                                                          0000:2f0f(j), 0000:2f1a(j), 
                                                                                          0000:3087(j), 0000:3093(j), 
                                                                                          0000:30a6(j), 0000:30b1(j)  
       0000:30b3 5f              POP        DI
       0000:30b4 5e              POP        SI
       0000:30b5 5a              POP        DX
       0000:30b6 59              POP        CX
       0000:30b7 5b              POP        BX
       0000:30b8 58              POP        AX
       0000:30b9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_30ba()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_30ba                                   XREF[1]:     FUN_0000_3158:0000:31a4(c)  
       0000:30ba 52              PUSH       DX
       0000:30bb 56              PUSH       SI
       0000:30bc 32 f6           XOR        DH,DH
       0000:30be 89 d6           MOV        SI,DX
       0000:30c0 d1 e6           SHL        SI,0x1
       0000:30c2 d1 e6           SHL        SI,0x1
       0000:30c4 d1 e6           SHL        SI,0x1
       0000:30c6 d1 e6           SHL        SI,0x1
       0000:30c8 81 c6 6d c1     ADD        SI,0xc16d
       0000:30cc 83 3c 10        CMP        word ptr [SI],0x10
       0000:30cf 73 09           JNC        LAB_0000_30da
       0000:30d1 c7 04 10 00     MOV        word ptr [SI],0x10
       0000:30d5 f7 5c 04        NEG        word ptr [SI + 0x4]
       0000:30d8 eb 0d           JMP        LAB_0000_30e7
                             LAB_0000_30da                                   XREF[1]:     0000:30cf(j)  
       0000:30da 81 3c 67 02     CMP        word ptr [SI],0x267
       0000:30de 76 07           JBE        LAB_0000_30e7
       0000:30e0 c7 04 67 02     MOV        word ptr [SI],0x267
       0000:30e4 f7 5c 04        NEG        word ptr [SI + 0x4]
                             LAB_0000_30e7                                   XREF[2]:     0000:30d8(j), 0000:30de(j)  
       0000:30e7 83 7c 02 0c     CMP        word ptr [SI + 0x2],0xc
       0000:30eb 73 0a           JNC        LAB_0000_30f7
       0000:30ed c7 44 02        MOV        word ptr [SI + 0x2],0xc
                 0c 00
       0000:30f2 f7 5c 06        NEG        word ptr [SI + 0x6]
       0000:30f5 eb 0f           JMP        LAB_0000_3106
                             LAB_0000_30f7                                   XREF[1]:     0000:30eb(j)  
       0000:30f7 81 7c 02        CMP        word ptr [SI + 0x2],0x110
                 10 01
       0000:30fc 76 08           JBE        LAB_0000_3106
       0000:30fe c7 44 02        MOV        word ptr [SI + 0x2],0x110
                 10 01
       0000:3103 f7 5c 06        NEG        word ptr [SI + 0x6]
                             LAB_0000_3106                                   XREF[2]:     0000:30f5(j), 0000:30fc(j)  
       0000:3106 5e              POP        SI
       0000:3107 5a              POP        DX
       0000:3108 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3109()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3109                                   XREF[1]:     FUN_0000_31b4:0000:3200(c)  
       0000:3109 52              PUSH       DX
       0000:310a 56              PUSH       SI
       0000:310b 32 f6           XOR        DH,DH
       0000:310d 89 d6           MOV        SI,DX
       0000:310f d1 e6           SHL        SI,0x1
       0000:3111 d1 e6           SHL        SI,0x1
       0000:3113 d1 e6           SHL        SI,0x1
       0000:3115 d1 e6           SHL        SI,0x1
       0000:3117 81 c6 6d c1     ADD        SI,0xc16d
       0000:311b 83 3c 10        CMP        word ptr [SI],0x10
       0000:311e 73 09           JNC        LAB_0000_3129
       0000:3120 c7 04 10 00     MOV        word ptr [SI],0x10
       0000:3124 f7 5c 04        NEG        word ptr [SI + 0x4]
       0000:3127 eb 0d           JMP        LAB_0000_3136
                             LAB_0000_3129                                   XREF[1]:     0000:311e(j)  
       0000:3129 81 3c 67 02     CMP        word ptr [SI],0x267
       0000:312d 76 07           JBE        LAB_0000_3136
       0000:312f c7 04 67 02     MOV        word ptr [SI],0x267
       0000:3133 f7 5c 04        NEG        word ptr [SI + 0x4]
                             LAB_0000_3136                                   XREF[2]:     0000:3127(j), 0000:312d(j)  
       0000:3136 83 7c 02 0c     CMP        word ptr [SI + 0x2],0xc
       0000:313a 73 0a           JNC        LAB_0000_3146
       0000:313c c7 44 02        MOV        word ptr [SI + 0x2],0xc
                 0c 00
       0000:3141 f7 5c 06        NEG        word ptr [SI + 0x6]
       0000:3144 eb 0f           JMP        LAB_0000_3155
                             LAB_0000_3146                                   XREF[1]:     0000:313a(j)  
       0000:3146 81 7c 02        CMP        word ptr [SI + 0x2],0x14c
                 4c 01
       0000:314b 76 08           JBE        LAB_0000_3155
       0000:314d c7 44 02        MOV        word ptr [SI + 0x2],0x14c
                 4c 01
       0000:3152 f7 5c 06        NEG        word ptr [SI + 0x6]
                             LAB_0000_3155                                   XREF[2]:     0000:3144(j), 0000:314b(j)  
       0000:3155 5e              POP        SI
       0000:3156 5a              POP        DX
       0000:3157 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3158()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3158                                   XREF[1]:     FUN_0000_3216:0000:3227(c)  
       0000:3158 50              PUSH       AX
       0000:3159 53              PUSH       BX
       0000:315a 51              PUSH       CX
       0000:315b 52              PUSH       DX
       0000:315c 56              PUSH       SI
       0000:315d 57              PUSH       DI
       0000:315e 88 16 7d d3     MOV        byte ptr [0xd37d],DL
       0000:3162 88 d3           MOV        BL,DL
       0000:3164 32 ff           XOR        BH,BH
       0000:3166 b1 04           MOV        CL,0x4
       0000:3168 d3 e3           SHL        BX,CL
       0000:316a 89 de           MOV        SI,BX
       0000:316c 8b 84 6d c1     MOV        AX,word ptr [SI + 0xc16d]
       0000:3170 8b 9c 6f c1     MOV        BX,word ptr [SI + 0xc16f]
       0000:3174 03 84 71 c1     ADD        AX,word ptr [SI + 0xc171]
       0000:3178 03 9c 73 c1     ADD        BX,word ptr [SI + 0xc173]
       0000:317c 8a 16 3c d2     MOV        DL,byte ptr [0xd23c]
       0000:3180 32 f6           XOR        DH,DH
       0000:3182 3b 94 76 c1     CMP        DX,word ptr [SI + 0xc176]
       0000:3186 73 10           JNC        LAB_0000_3198
       0000:3188 ba 01 00        MOV        DX,0x1
       0000:318b f7 84 73        TEST       word ptr [SI + 0xc173],0xffff
                 c1 ff ff
       0000:3191 79 03           JNS        LAB_0000_3196
       0000:3193 ba ff ff        MOV        DX,0xffff
                             LAB_0000_3196                                   XREF[1]:     0000:3191(j)  
       0000:3196 03 da           ADD        BX,DX
                             LAB_0000_3198                                   XREF[1]:     0000:3186(j)  
       0000:3198 89 84 6d c1     MOV        word ptr [SI + 0xc16d],AX
       0000:319c 89 9c 6f c1     MOV        word ptr [SI + 0xc16f],BX
       0000:31a0 8a 16 7d d3     MOV        DL,byte ptr [0xd37d]
       0000:31a4 e8 13 ff        CALL       FUN_0000_30ba                                    undefined FUN_0000_30ba()
       0000:31a7 bf 48 05        MOV        DI,0x548
       0000:31aa e8 2a fd        CALL       FUN_0000_2ed7                                    undefined FUN_0000_2ed7()
       0000:31ad 5f              POP        DI
       0000:31ae 5e              POP        SI
       0000:31af 5a              POP        DX
       0000:31b0 59              POP        CX
       0000:31b1 5b              POP        BX
       0000:31b2 58              POP        AX
       0000:31b3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_31b4()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_31b4                                   XREF[1]:     FUN_0000_3235:0000:3246(c)  
       0000:31b4 50              PUSH       AX
       0000:31b5 53              PUSH       BX
       0000:31b6 51              PUSH       CX
       0000:31b7 52              PUSH       DX
       0000:31b8 56              PUSH       SI
       0000:31b9 57              PUSH       DI
       0000:31ba 88 16 7d d3     MOV        byte ptr [0xd37d],DL
       0000:31be 88 d3           MOV        BL,DL
       0000:31c0 32 ff           XOR        BH,BH
       0000:31c2 b1 04           MOV        CL,0x4
       0000:31c4 d3 e3           SHL        BX,CL
       0000:31c6 89 de           MOV        SI,BX
       0000:31c8 8b 84 6d c1     MOV        AX,word ptr [SI + 0xc16d]
       0000:31cc 8b 9c 6f c1     MOV        BX,word ptr [SI + 0xc16f]
       0000:31d0 03 84 71 c1     ADD        AX,word ptr [SI + 0xc171]
       0000:31d4 03 9c 73 c1     ADD        BX,word ptr [SI + 0xc173]
       0000:31d8 8a 16 3c d2     MOV        DL,byte ptr [0xd23c]
       0000:31dc 32 f6           XOR        DH,DH
       0000:31de 3b 94 76 c1     CMP        DX,word ptr [SI + 0xc176]
       0000:31e2 73 10           JNC        LAB_0000_31f4
       0000:31e4 ba 01 00        MOV        DX,0x1
       0000:31e7 f7 84 73        TEST       word ptr [SI + 0xc173],0xffff
                 c1 ff ff
       0000:31ed 79 03           JNS        LAB_0000_31f2
       0000:31ef ba ff ff        MOV        DX,0xffff
                             LAB_0000_31f2                                   XREF[1]:     0000:31ed(j)  
       0000:31f2 03 da           ADD        BX,DX
                             LAB_0000_31f4                                   XREF[1]:     0000:31e2(j)  
       0000:31f4 89 84 6d c1     MOV        word ptr [SI + 0xc16d],AX
       0000:31f8 89 9c 6f c1     MOV        word ptr [SI + 0xc16f],BX
       0000:31fc 8a 16 7d d3     MOV        DL,byte ptr [0xd37d]
       0000:3200 e8 06 ff        CALL       FUN_0000_3109                                    undefined FUN_0000_3109()
       0000:3203 bf 13 07        MOV        DI,0x713
       0000:3206 e8 ce fc        CALL       FUN_0000_2ed7                                    undefined FUN_0000_2ed7()
       0000:3209 bf 1b 07        MOV        DI,0x71b
       0000:320c e8 c8 fc        CALL       FUN_0000_2ed7                                    undefined FUN_0000_2ed7()
       0000:320f 5f              POP        DI
       0000:3210 5e              POP        SI
       0000:3211 5a              POP        DX
       0000:3212 59              POP        CX
       0000:3213 5b              POP        BX
       0000:3214 58              POP        AX
       0000:3215 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3216()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3216                                   XREF[1]:     FUN_0000_648d:0000:64a0(c)  
       0000:3216 51              PUSH       CX
       0000:3217 52              PUSH       DX
       0000:3218 56              PUSH       SI
       0000:3219 b2 00           MOV        DL,0x0
       0000:321b b9 10 00        MOV        CX,0x10
       0000:321e be 6d c1        MOV        SI,0xc16d
                             LAB_0000_3221                                   XREF[1]:     0000:322f(j)  
       0000:3221 f6 44 08 01     TEST       byte ptr [SI + 0x8],0x1
       0000:3225 74 03           JZ         LAB_0000_322a
       0000:3227 e8 2e ff        CALL       FUN_0000_3158                                    undefined FUN_0000_3158()
                             LAB_0000_322a                                   XREF[1]:     0000:3225(j)  
       0000:322a fe c2           INC        DL
       0000:322c 83 c6 10        ADD        SI,0x10
       0000:322f e2 f0           LOOP       LAB_0000_3221
       0000:3231 5e              POP        SI
       0000:3232 5a              POP        DX
       0000:3233 59              POP        CX
       0000:3234 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3235()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3235                                   XREF[1]:     FUN_0000_4b19:0000:4b2c(c)  
       0000:3235 51              PUSH       CX
       0000:3236 52              PUSH       DX
       0000:3237 56              PUSH       SI
       0000:3238 b2 00           MOV        DL,0x0
       0000:323a b9 10 00        MOV        CX,0x10
       0000:323d be 6d c1        MOV        SI,0xc16d
                             LAB_0000_3240                                   XREF[1]:     0000:324e(j)  
       0000:3240 f6 44 08 01     TEST       byte ptr [SI + 0x8],0x1
       0000:3244 74 03           JZ         LAB_0000_3249
       0000:3246 e8 6b ff        CALL       FUN_0000_31b4                                    undefined FUN_0000_31b4()
                             LAB_0000_3249                                   XREF[1]:     0000:3244(j)  
       0000:3249 fe c2           INC        DL
       0000:324b 83 c6 10        ADD        SI,0x10
       0000:324e e2 f0           LOOP       LAB_0000_3240
       0000:3250 5e              POP        SI
       0000:3251 5a              POP        DX
       0000:3252 59              POP        CX
       0000:3253 c3              RET
       0000:3254 31 00           XOR        word ptr [BX + SI],AX
       0000:3256 e2 7e           LOOP       LAB_0000_32d4+2
       0000:3258 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_0000_325a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_325a                                   XREF[3]:     FUN_0000_32a2:0000:32c3(c), 
                                                                                          FUN_0000_3368:0000:3389(c), 
                                                                                          FUN_0000_3475:0000:34a0(c)  
       0000:325a e8 be 32        CALL       FUN_0000_651b                                    undefined FUN_0000_651b()
       0000:325d b4 09           MOV        AH,0x9
       0000:325f ba 2b 01        MOV        DX,0x12b
       0000:3262 cd 21           INT        0x21
       0000:3264 ba 0e 80        MOV        DX,0x800e
       0000:3267 cd 21           INT        0x21
       0000:3269 ba 4e 01        MOV        DX,0x14e
       0000:326c cd 21           INT        0x21
       0000:326e b8 01 4c        MOV        AX,0x4c01
       0000:3271 cd 21           INT        0x21
                             LAB_0000_3273                                   XREF[1]:     FUN_0000_352f:0000:3552(j)  
       0000:3273 e8 a5 32        CALL       FUN_0000_651b                                    undefined FUN_0000_651b()
       0000:3276 b4 09           MOV        AH,0x9
       0000:3278 ba 6b 01        MOV        DX,0x16b
       0000:327b cd 21           INT        0x21
       0000:327d b8 01 4c        MOV        AX,0x4c01
       0000:3280 cd 21           INT        0x21
                             LAB_0000_3282                                   XREF[1]:     FUN_0000_34d7:0000:3525(j)  
       0000:3282 e8 96 32        CALL       FUN_0000_651b                                    undefined FUN_0000_651b()
       0000:3285 b4 09           MOV        AH,0x9
       0000:3287 ba dc 01        MOV        DX,0x1dc
       0000:328a cd 21           INT        0x21
       0000:328c b8 01 4c        MOV        AX,0x4c01
       0000:328f cd 21           INT        0x21
       0000:3291 fb              STI
       0000:3292 b0 03           MOV        AL,0x3
       0000:3294 cf              IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3295()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3295                                   XREF[1]:     FUN_0000_5111:0000:511a(c)  
       0000:3295 50              PUSH       AX
       0000:3296 52              PUSH       DX
       0000:3297 b8 24 25        MOV        AX,0x2524
       0000:329a ba 91 32        MOV        DX,0x3291
       0000:329d cd 21           INT        0x21
       0000:329f 5a              POP        DX
       0000:32a0 58              POP        AX
       0000:32a1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_32a2()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_32a2                                   XREF[1]:     FUN_0000_5111:0000:5126(c)  
       0000:32a2 50              PUSH       AX
       0000:32a3 53              PUSH       BX
       0000:32a4 51              PUSH       CX
       0000:32a5 52              PUSH       DX
       0000:32a6 56              PUSH       SI
       0000:32a7 57              PUSH       DI
       0000:32a8 be 7f 07        MOV        SI,0x77f
       0000:32ab bf 0e 80        MOV        DI,0x800e
       0000:32ae b9 0d 00        MOV        CX,0xd
                             LAB_0000_32b1                                   XREF[1]:     0000:32b7(j)  
       0000:32b1 8a 04           MOV        AL,byte ptr [SI]
       0000:32b3 88 05           MOV        byte ptr [DI],AL
       0000:32b5 46              INC        SI
       0000:32b6 47              INC        DI
       0000:32b7 e2 f8           LOOP       LAB_0000_32b1
       0000:32b9 b8 00 3d        MOV        AX,0x3d00
       0000:32bc ba 0e 80        MOV        DX,0x800e
       0000:32bf cd 21           INT        0x21
       0000:32c1 73 02           JNC        LAB_0000_32c5
       0000:32c3 eb 95           JMP        FUN_0000_325a                                    undefined FUN_0000_325a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_0000_32c5                                   XREF[1]:     0000:32c1(j)  
       0000:32c5 a3 00 80        MOV        [0x8000],AX
       0000:32c8 c6 06 3f        MOV        byte ptr [0xd23f],0x1
                 d2 01
                             LAB_0000_32cd                                   XREF[1]:     0000:32f3(j)  
       0000:32cd ba c4 03        MOV        DX,0x3c4
       0000:32d0 b0 02           MOV        AL,0x2
       0000:32d2 ee              OUT        DX,AL
       0000:32d3 42              INC        DX
                             LAB_0000_32d4+2                                 XREF[0,1]:   0000:3256(j)  
       0000:32d4 a0 3f d2        MOV        AL,[0xd23f]
       0000:32d7 ee              OUT        DX,AL
       0000:32d8 b4 3f           MOV        AH,0x3f
       0000:32da 8b 1e 00 80     MOV        BX,word ptr [0x8000]
       0000:32de b9 84 00        MOV        CX,0x84
       0000:32e1 ba 00 dc        MOV        DX,0xdc00
       0000:32e4 1e              PUSH       DS
       0000:32e5 06              PUSH       ES
       0000:32e6 1f              POP        DS
       0000:32e7 cd 21           INT        0x21
       0000:32e9 1f              POP        DS
       0000:32ea d0 26 3f d2     SHL        byte ptr [0xd23f],0x1
       0000:32ee 80 3e 3f        CMP        byte ptr [0xd23f],0x8
                 d2 08
       0000:32f3 76 d8           JBE        LAB_0000_32cd
       0000:32f5 c6 06 3f        MOV        byte ptr [0xd23f],0x1
                 d2 01
                             LAB_0000_32fa                                   XREF[1]:     0000:3320(j)  
       0000:32fa ba c4 03        MOV        DX,0x3c4
       0000:32fd b0 02           MOV        AL,0x2
       0000:32ff ee              OUT        DX,AL
       0000:3300 42              INC        DX
       0000:3301 a0 3f d2        MOV        AL,[0xd23f]
       0000:3304 ee              OUT        DX,AL
       0000:3305 b4 3f           MOV        AH,0x3f
       0000:3307 8b 1e 00 80     MOV        BX,word ptr [0x8000]
       0000:330b b9 30 06        MOV        CX,0x630
       0000:330e ba 84 dc        MOV        DX,0xdc84
       0000:3311 1e              PUSH       DS
       0000:3312 06              PUSH       ES
       0000:3313 1f              POP        DS
       0000:3314 cd 21           INT        0x21
       0000:3316 1f              POP        DS
       0000:3317 d0 26 3f d2     SHL        byte ptr [0xd23f],0x1
       0000:331b 80 3e 3f        CMP        byte ptr [0xd23f],0x8
                 d2 08
       0000:3320 76 d8           JBE        LAB_0000_32fa
       0000:3322 c6 06 3f        MOV        byte ptr [0xd23f],0x1
                 d2 01
                             LAB_0000_3327                                   XREF[1]:     0000:334d(j)  
       0000:3327 ba c4 03        MOV        DX,0x3c4
       0000:332a b0 02           MOV        AL,0x2
       0000:332c ee              OUT        DX,AL
       0000:332d 42              INC        DX
       0000:332e a0 3f d2        MOV        AL,[0xd23f]
       0000:3331 ee              OUT        DX,AL
       0000:3332 b4 3f           MOV        AH,0x3f
       0000:3334 8b 1e 00 80     MOV        BX,word ptr [0x8000]
       0000:3338 b9 98 04        MOV        CX,0x498
       0000:333b ba 7c e4        MOV        DX,0xe47c
       0000:333e 1e              PUSH       DS
       0000:333f 06              PUSH       ES
       0000:3340 1f              POP        DS
       0000:3341 cd 21           INT        0x21
       0000:3343 1f              POP        DS
       0000:3344 d0 26 3f d2     SHL        byte ptr [0xd23f],0x1
       0000:3348 80 3e 3f        CMP        byte ptr [0xd23f],0x8
                 d2 08
       0000:334d 76 d8           JBE        LAB_0000_3327
       0000:334f ba c4 03        MOV        DX,0x3c4
       0000:3352 b0 02           MOV        AL,0x2
       0000:3354 ee              OUT        DX,AL
       0000:3355 42              INC        DX
       0000:3356 b0 0f           MOV        AL,0xf
       0000:3358 ee              OUT        DX,AL
       0000:3359 b4 3e           MOV        AH,0x3e
       0000:335b 8b 1e 00 80     MOV        BX,word ptr [0x8000]
       0000:335f cd 21           INT        0x21
       0000:3361 5f              POP        DI
       0000:3362 5e              POP        SI
       0000:3363 5a              POP        DX
       0000:3364 59              POP        CX
       0000:3365 5b              POP        BX
       0000:3366 58              POP        AX
       0000:3367 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3368()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3368                                   XREF[1]:     FUN_0000_5111:0000:5129(c)  
       0000:3368 50              PUSH       AX
       0000:3369 53              PUSH       BX
       0000:336a 51              PUSH       CX
       0000:336b 52              PUSH       DX
       0000:336c 56              PUSH       SI
       0000:336d 57              PUSH       DI
       0000:336e be 98 07        MOV        SI,0x798
       0000:3371 bf 0e 80        MOV        DI,0x800e
       0000:3374 b9 0e 00        MOV        CX,0xe
                             LAB_0000_3377                                   XREF[1]:     0000:337d(j)  
       0000:3377 8a 04           MOV        AL,byte ptr [SI]
       0000:3379 88 05           MOV        byte ptr [DI],AL
       0000:337b 46              INC        SI
       0000:337c 47              INC        DI
       0000:337d e2 f8           LOOP       LAB_0000_3377
       0000:337f b8 00 3d        MOV        AX,0x3d00
       0000:3382 ba 0e 80        MOV        DX,0x800e
       0000:3385 cd 21           INT        0x21
       0000:3387 73 03           JNC        LAB_0000_338c
       0000:3389 e9 ce fe        JMP        FUN_0000_325a                                    undefined FUN_0000_325a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_0000_338c                                   XREF[1]:     0000:3387(j)  
       0000:338c 8b d8           MOV        BX,AX
       0000:338e b4 3f           MOV        AH,0x3f
       0000:3390 b9 00 02        MOV        CX,0x200
       0000:3393 ba 64 c3        MOV        DX,0xc364
       0000:3396 cd 21           INT        0x21
       0000:3398 b4 3f           MOV        AH,0x3f
       0000:339a b9 80 03        MOV        CX,0x380
       0000:339d ba 64 c5        MOV        DX,0xc564
       0000:33a0 cd 21           INT        0x21
       0000:33a2 b4 3f           MOV        AH,0x3f
       0000:33a4 b9 e8 05        MOV        CX,0x5e8
       0000:33a7 ba e4 c8        MOV        DX,0xc8e4
       0000:33aa cd 21           INT        0x21
       0000:33ac b4 3e           MOV        AH,0x3e
       0000:33ae cd 21           INT        0x21
       0000:33b0 5f              POP        DI
       0000:33b1 5e              POP        SI
       0000:33b2 5a              POP        DX
       0000:33b3 59              POP        CX
       0000:33b4 5b              POP        BX
       0000:33b5 58              POP        AX
       0000:33b6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_33b7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_33b7                                   XREF[2]:     FUN_0000_37db:0000:37f3(c), 
                                                                                          FUN_0000_3b69:0000:3b71(c)  
       0000:33b7 50              PUSH       AX
       0000:33b8 53              PUSH       BX
       0000:33b9 51              PUSH       CX
       0000:33ba 52              PUSH       DX
       0000:33bb 56              PUSH       SI
       0000:33bc e8 78 00        CALL       FUN_0000_3437                                    undefined FUN_0000_3437()
       0000:33bf 8a c2           MOV        AL,DL
       0000:33c1 d4 0a           AAM        0xa
       0000:33c3 88 26 a8 d3     MOV        byte ptr [0xd3a8],AH
       0000:33c7 a2 a9 d3        MOV        [0xd3a9],AL
       0000:33ca be 00 81        MOV        SI,0x8100
       0000:33cd b9 0a 01        MOV        CX,0x10a
       0000:33d0 33 d2           XOR        DX,DX
                             LAB_0000_33d2                                   XREF[1]:     0000:33de(j)  
       0000:33d2 f6 04 ff        TEST       byte ptr [SI],0xff
       0000:33d5 74 06           JZ         LAB_0000_33dd
       0000:33d7 80 3c 1c        CMP        byte ptr [SI],0x1c
       0000:33da 74 01           JZ         LAB_0000_33dd
       0000:33dc 42              INC        DX
                             LAB_0000_33dd                                   XREF[2]:     0000:33d5(j), 0000:33da(j)  
       0000:33dd 46              INC        SI
       0000:33de e2 f2           LOOP       LAB_0000_33d2
       0000:33e0 89 16 52 d2     MOV        word ptr [0xd252],DX
       0000:33e4 5e              POP        SI
       0000:33e5 5a              POP        DX
       0000:33e6 59              POP        CX
       0000:33e7 5b              POP        BX
       0000:33e8 58              POP        AX
       0000:33e9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_33ea()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_33ea                                   XREF[1]:     FUN_0000_5111:0000:5120(c)  
       0000:33ea 50              PUSH       AX
       0000:33eb 53              PUSH       BX
       0000:33ec 51              PUSH       CX
       0000:33ed 52              PUSH       DX
       0000:33ee b8 00 3d        MOV        AX,0x3d00
       0000:33f1 ba 4e 80        MOV        DX,0x804e
       0000:33f4 cd 21           INT        0x21
       0000:33f6 72 24           JC         LAB_0000_341c
       0000:33f8 8b d8           MOV        BX,AX
       0000:33fa b4 3f           MOV        AH,0x3f
       0000:33fc b9 2c 1f        MOV        CX,0x1f2c
       0000:33ff ba 14 83        MOV        DX,0x8314
       0000:3402 cd 21           INT        0x21
       0000:3404 3b c1           CMP        AX,CX
       0000:3406 75 14           JNZ        LAB_0000_341c
       0000:3408 b4 3f           MOV        AH,0x3f
       0000:340a ba 40 a2        MOV        DX,0xa240
       0000:340d cd 21           INT        0x21
       0000:340f 3b c1           CMP        AX,CX
       0000:3411 75 09           JNZ        LAB_0000_341c
       0000:3413 b4 3e           MOV        AH,0x3e
       0000:3415 cd 21           INT        0x21
       0000:3417 e8 88 01        CALL       FUN_0000_35a2                                    undefined FUN_0000_35a2()
       0000:341a eb 16           JMP        LAB_0000_3432
                             LAB_0000_341c                                   XREF[3]:     0000:33f6(j), 0000:3406(j), 
                                                                                          0000:3411(j)  
       0000:341c b4 09           MOV        AH,0x9
       0000:341e ba 56 08        MOV        DX,0x856
       0000:3421 cd 21           INT        0x21
       0000:3423 ba 4e 80        MOV        DX,0x804e
       0000:3426 cd 21           INT        0x21
       0000:3428 ba 8d 08        MOV        DX,0x88d
       0000:342b cd 21           INT        0x21
       0000:342d b8 01 4c        MOV        AX,0x4c01
       0000:3430 cd 21           INT        0x21
                             LAB_0000_3432                                   XREF[1]:     0000:341a(j)  
       0000:3432 5a              POP        DX
       0000:3433 59              POP        CX
       0000:3434 5b              POP        BX
       0000:3435 58              POP        AX
       0000:3436 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3437()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3437                                   XREF[1]:     FUN_0000_33b7:0000:33bc(c)  
       0000:3437 50              PUSH       AX
       0000:3438 51              PUSH       CX
       0000:3439 52              PUSH       DX
       0000:343a 56              PUSH       SI
       0000:343b 57              PUSH       DI
       0000:343c 06              PUSH       ES
       0000:343d 1e              PUSH       DS
       0000:343e 07              POP        ES
       0000:343f fc              CLD
       0000:3440 fe ca           DEC        DL
       0000:3442 32 f6           XOR        DH,DH
       0000:3444 8b c2           MOV        AX,DX
       0000:3446 b1 05           MOV        CL,0x5
       0000:3448 d3 e0           SHL        AX,CL
       0000:344a 01 d0           ADD        AX,DX
       0000:344c b1 02           MOV        CL,0x2
       0000:344e d3 e0           SHL        AX,CL
       0000:3450 01 d0           ADD        AX,DX
       0000:3452 d1 e0           SHL        AX,0x1
       0000:3454 be 14 83        MOV        SI,0x8314
       0000:3457 01 c6           ADD        SI,AX
       0000:3459 bf 00 81        MOV        DI,0x8100
       0000:345c b9 0a 01        MOV        CX,0x10a
       0000:345f f3 a4           MOVSB.REP  ES:DI,SI
       0000:3461 be 40 a2        MOV        SI,0xa240
       0000:3464 01 c6           ADD        SI,AX
       0000:3466 bf 0a 82        MOV        DI,0x820a
       0000:3469 b9 0a 01        MOV        CX,0x10a
       0000:346c f3 a4           MOVSB.REP  ES:DI,SI
       0000:346e 07              POP        ES
       0000:346f 5f              POP        DI
       0000:3470 5e              POP        SI
       0000:3471 5a              POP        DX
       0000:3472 59              POP        CX
       0000:3473 58              POP        AX
       0000:3474 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3475()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3475                                   XREF[1]:     FUN_0000_5111:0000:511d(c)  
       0000:3475 50              PUSH       AX
       0000:3476 53              PUSH       BX
       0000:3477 51              PUSH       CX
       0000:3478 52              PUSH       DX
       0000:3479 56              PUSH       SI
       0000:347a 57              PUSH       DI
       0000:347b be a3 07        MOV        SI,0x7a3
       0000:347e bf 0e 80        MOV        DI,0x800e
       0000:3481 b9 0e 00        MOV        CX,0xe
                             LAB_0000_3484                                   XREF[1]:     0000:348a(j)  
       0000:3484 8a 04           MOV        AL,byte ptr [SI]
       0000:3486 88 05           MOV        byte ptr [DI],AL
       0000:3488 46              INC        SI
       0000:3489 47              INC        DI
       0000:348a e2 f8           LOOP       LAB_0000_3484
       0000:348c b8 00 3d        MOV        AX,0x3d00
       0000:348f ba 0e 80        MOV        DX,0x800e
       0000:3492 cd 21           INT        0x21
       0000:3494 73 0d           JNC        LAB_0000_34a3
       0000:3496 3d 02 00        CMP        AX,0x2
       0000:3499 75 05           JNZ        LAB_0000_34a0
       0000:349b e8 91 00        CALL       FUN_0000_352f                                    undefined FUN_0000_352f()
       0000:349e eb 30           JMP        LAB_0000_34d0
                             LAB_0000_34a0                                   XREF[1]:     0000:3499(j)  
       0000:34a0 e9 b7 fd        JMP        FUN_0000_325a                                    undefined FUN_0000_325a()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_0000_34a3                                   XREF[1]:     0000:3494(j)  
       0000:34a3 a3 0c 80        MOV        [0x800c],AX
       0000:34a6 b4 3f           MOV        AH,0x3f
       0000:34a8 8b 1e 0c 80     MOV        BX,word ptr [0x800c]
       0000:34ac b9 46 00        MOV        CX,0x46
       0000:34af ba 66 d2        MOV        DX,0xd266
       0000:34b2 cd 21           INT        0x21
       0000:34b4 b4 3f           MOV        AH,0x3f
       0000:34b6 b9 a0 00        MOV        CX,0xa0
       0000:34b9 ba ac d2        MOV        DX,0xd2ac
       0000:34bc cd 21           INT        0x21
       0000:34be b4 3f           MOV        AH,0x3f
       0000:34c0 b9 1e 00        MOV        CX,0x1e
       0000:34c3 ba 4c d3        MOV        DX,0xd34c
       0000:34c6 cd 21           INT        0x21
       0000:34c8 b4 3e           MOV        AH,0x3e
       0000:34ca 8b 1e 0c 80     MOV        BX,word ptr [0x800c]
       0000:34ce cd 21           INT        0x21
                             LAB_0000_34d0                                   XREF[1]:     0000:349e(j)  
       0000:34d0 5f              POP        DI
       0000:34d1 5e              POP        SI
       0000:34d2 5a              POP        DX
       0000:34d3 59              POP        CX
       0000:34d4 5b              POP        BX
       0000:34d5 58              POP        AX
       0000:34d6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_34d7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_34d7                                   XREF[1]:     FUN_0000_3c95:0000:3ca4(c)  
       0000:34d7 50              PUSH       AX
       0000:34d8 53              PUSH       BX
       0000:34d9 51              PUSH       CX
       0000:34da 52              PUSH       DX
       0000:34db 56              PUSH       SI
       0000:34dc 57              PUSH       DI
       0000:34dd be a3 07        MOV        SI,0x7a3
       0000:34e0 bf 0e 80        MOV        DI,0x800e
       0000:34e3 b9 0e 00        MOV        CX,0xe
                             LAB_0000_34e6                                   XREF[1]:     0000:34ec(j)  
       0000:34e6 8a 04           MOV        AL,byte ptr [SI]
       0000:34e8 88 05           MOV        byte ptr [DI],AL
       0000:34ea 46              INC        SI
       0000:34eb 47              INC        DI
       0000:34ec e2 f8           LOOP       LAB_0000_34e6
       0000:34ee b8 01 3d        MOV        AX,0x3d01
       0000:34f1 ba 0e 80        MOV        DX,0x800e
       0000:34f4 cd 21           INT        0x21
       0000:34f6 a3 0c 80        MOV        [0x800c],AX
       0000:34f9 b4 40           MOV        AH,0x40
       0000:34fb 8b 1e 0c 80     MOV        BX,word ptr [0x800c]
       0000:34ff b9 46 00        MOV        CX,0x46
       0000:3502 ba 66 d2        MOV        DX,0xd266
       0000:3505 cd 21           INT        0x21
       0000:3507 b4 40           MOV        AH,0x40
       0000:3509 b9 a0 00        MOV        CX,0xa0
       0000:350c ba ac d2        MOV        DX,0xd2ac
       0000:350f cd 21           INT        0x21
       0000:3511 b4 40           MOV        AH,0x40
       0000:3513 b9 1e 00        MOV        CX,0x1e
       0000:3516 ba 4c d3        MOV        DX,0xd34c
       0000:3519 cd 21           INT        0x21
       0000:351b b4 3e           MOV        AH,0x3e
       0000:351d 8b 1e 0c 80     MOV        BX,word ptr [0x800c]
       0000:3521 cd 21           INT        0x21
       0000:3523 73 03           JNC        LAB_0000_3528
       0000:3525 e9 5a fd        JMP        LAB_0000_3282
                             LAB_0000_3528                                   XREF[1]:     0000:3523(j)  
       0000:3528 5f              POP        DI
       0000:3529 5e              POP        SI
       0000:352a 5a              POP        DX
       0000:352b 59              POP        CX
       0000:352c 5b              POP        BX
       0000:352d 58              POP        AX
       0000:352e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_352f()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_352f                                   XREF[1]:     FUN_0000_3475:0000:349b(c)  
       0000:352f 50              PUSH       AX
       0000:3530 53              PUSH       BX
       0000:3531 51              PUSH       CX
       0000:3532 52              PUSH       DX
       0000:3533 56              PUSH       SI
       0000:3534 57              PUSH       DI
       0000:3535 be a3 07        MOV        SI,0x7a3
       0000:3538 bf 0e 80        MOV        DI,0x800e
       0000:353b b9 0e 00        MOV        CX,0xe
                             LAB_0000_353e                                   XREF[1]:     0000:3544(j)  
       0000:353e 8a 04           MOV        AL,byte ptr [SI]
       0000:3540 88 05           MOV        byte ptr [DI],AL
       0000:3542 46              INC        SI
       0000:3543 47              INC        DI
       0000:3544 e2 f8           LOOP       LAB_0000_353e
       0000:3546 b4 5b           MOV        AH,0x5b
       0000:3548 b9 00 00        MOV        CX,0x0
       0000:354b ba 0e 80        MOV        DX,0x800e
       0000:354e cd 21           INT        0x21
       0000:3550 73 03           JNC        LAB_0000_3555
       0000:3552 e9 1e fd        JMP        LAB_0000_3273
                             LAB_0000_3555                                   XREF[1]:     0000:3550(j)  
       0000:3555 a3 0c 80        MOV        [0x800c],AX
       0000:3558 b4 40           MOV        AH,0x40
       0000:355a 8b 1e 0c 80     MOV        BX,word ptr [0x800c]
       0000:355e b9 04 01        MOV        CX,0x104
       0000:3561 ba fc 05        MOV        DX,0x5fc
       0000:3564 cd 21           INT        0x21
       0000:3566 b4 3e           MOV        AH,0x3e
       0000:3568 8b 1e 0c 80     MOV        BX,word ptr [0x800c]
       0000:356c cd 21           INT        0x21
       0000:356e bf 66 d2        MOV        DI,0xd266
       0000:3571 be fc 05        MOV        SI,0x5fc
       0000:3574 b9 46 00        MOV        CX,0x46
                             LAB_0000_3577                                   XREF[1]:     0000:357d(j)  
       0000:3577 8a 04           MOV        AL,byte ptr [SI]
       0000:3579 88 05           MOV        byte ptr [DI],AL
       0000:357b 46              INC        SI
       0000:357c 47              INC        DI
       0000:357d e2 f8           LOOP       LAB_0000_3577
       0000:357f bf ac d2        MOV        DI,0xd2ac
       0000:3582 b9 a0 00        MOV        CX,0xa0
                             LAB_0000_3585                                   XREF[1]:     0000:358b(j)  
       0000:3585 8a 04           MOV        AL,byte ptr [SI]
       0000:3587 88 05           MOV        byte ptr [DI],AL
       0000:3589 46              INC        SI
       0000:358a 47              INC        DI
       0000:358b e2 f8           LOOP       LAB_0000_3585
       0000:358d bf 4c d3        MOV        DI,0xd34c
       0000:3590 b9 1e 00        MOV        CX,0x1e
                             LAB_0000_3593                                   XREF[1]:     0000:3599(j)  
       0000:3593 8a 04           MOV        AL,byte ptr [SI]
       0000:3595 88 05           MOV        byte ptr [DI],AL
       0000:3597 46              INC        SI
       0000:3598 47              INC        DI
       0000:3599 e2 f8           LOOP       LAB_0000_3593
       0000:359b 5f              POP        DI
       0000:359c 5e              POP        SI
       0000:359d 5a              POP        DX
       0000:359e 59              POP        CX
       0000:359f 5b              POP        BX
       0000:35a0 58              POP        AX
       0000:35a1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_35a2()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0xc]:2  local_c                                 XREF[3]:     0000:35b4(*), 
                                                                                                   0000:35f0(*), 
                                                                                                   0000:35fa(*)  
             undefined2        Stack[-0xe]:2  local_e                                 XREF[2]:     0000:35d3(*), 
                                                                                                   0000:35f5(*)  
                             FUN_0000_35a2                                   XREF[1]:     FUN_0000_33ea:0000:3417(c)  
       0000:35a2 50              PUSH       AX
       0000:35a3 51              PUSH       CX
       0000:35a4 56              PUSH       SI
       0000:35a5 57              PUSH       DI
       0000:35a6 55              PUSH       BP
       0000:35a7 89 e5           MOV        BP,SP
       0000:35a9 b8 14 83        MOV        AX,0x8314
       0000:35ac 50              PUSH       AX
       0000:35ad b8 40 a2        MOV        AX,0xa240
       0000:35b0 50              PUSH       AX
                             LAB_0000_35b1                                   XREF[1]:     0000:35ff(j)  
       0000:35b1 be c0 61        MOV        SI,0x61c0
       0000:35b4 8b 7e fe        MOV        DI,word ptr [BP + local_c]
       0000:35b7 b4 00           MOV        AH,0x0
       0000:35b9 b9 64 0a        MOV        CX,0xa64
                             LAB_0000_35bc                                   XREF[1]:     0000:35d1(j)  
       0000:35bc 8a 05           MOV        AL,byte ptr [DI]
       0000:35be 32 04           XOR        AL,byte ptr [SI]
       0000:35c0 2a c4           SUB        AL,AH
       0000:35c2 88 05           MOV        byte ptr [DI],AL
       0000:35c4 47              INC        DI
       0000:35c5 46              INC        SI
       0000:35c6 81 fe d7 61     CMP        SI,0x61d7
       0000:35ca 75 03           JNZ        LAB_0000_35cf
       0000:35cc be c0 61        MOV        SI,0x61c0
                             LAB_0000_35cf                                   XREF[1]:     0000:35ca(j)  
       0000:35cf fe c4           INC        AH
       0000:35d1 e2 e9           LOOP       LAB_0000_35bc
       0000:35d3 8b 7e fc        MOV        DI,word ptr [BP + local_e]
       0000:35d6 b9 64 0a        MOV        CX,0xa64
                             LAB_0000_35d9                                   XREF[1]:     0000:35ee(j)  
       0000:35d9 8a 05           MOV        AL,byte ptr [DI]
       0000:35db 32 04           XOR        AL,byte ptr [SI]
       0000:35dd 2a c4           SUB        AL,AH
       0000:35df 88 05           MOV        byte ptr [DI],AL
       0000:35e1 47              INC        DI
       0000:35e2 46              INC        SI
       0000:35e3 81 fe d7 61     CMP        SI,0x61d7
       0000:35e7 75 03           JNZ        LAB_0000_35ec
       0000:35e9 be c0 61        MOV        SI,0x61c0
                             LAB_0000_35ec                                   XREF[1]:     0000:35e7(j)  
       0000:35ec fe c4           INC        AH
       0000:35ee e2 e9           LOOP       LAB_0000_35d9
       0000:35f0 81 46 fe        ADD        word ptr [BP + local_c],0xa64
                 64 0a
       0000:35f5 81 46 fc        ADD        word ptr [BP + local_e],0xa64
                 64 0a
       0000:35fa 81 7e fe        CMP        word ptr [BP + local_c],0xa240
                 40 a2
       0000:35ff 75 b0           JNZ        LAB_0000_35b1
       0000:3601 83 c4 04        ADD        SP,0x4
       0000:3604 5d              POP        BP
       0000:3605 5f              POP        DI
       0000:3606 5e              POP        SI
       0000:3607 59              POP        CX
       0000:3608 58              POP        AX
       0000:3609 c3              RET
       0000:360a 31 00           XOR        word ptr [BX + SI],AX
       0000:360c e2 7e           LOOP       LAB_0000_368c
       0000:360e 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3610()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3610                                   XREF[1]:     0000:39ba(c)  
       0000:3610 51              PUSH       CX
       0000:3611 e8 f0 02        CALL       FUN_0000_3904                                    undefined FUN_0000_3904()
       0000:3614 e8 c9 02        CALL       FUN_0000_38e0                                    undefined FUN_0000_38e0()
       0000:3617 c6 06 51        MOV        byte ptr [0xd251],0x1
                 d2 01
       0000:361c c6 06 55        MOV        byte ptr [0xd255],0x0
                 d2 00
       0000:3621 c6 06 56        MOV        byte ptr [0xd256],0x0
                 d2 00
       0000:3626 c6 06 98        MOV        byte ptr [0xd398],0x1
                 d3 01
       0000:362b c6 06 3a        MOV        byte ptr [0xd23a],0x4
                 d2 04
       0000:3630 c6 06 3b        MOV        byte ptr [0xd23b],0x1
                 d2 01
       0000:3635 c7 06 3d        MOV        word ptr [0xd23d],0x600
                 d2 00 06
       0000:363b e8 13 ee        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
       0000:363e e8 b8 1f        CALL       FUN_0000_55f9                                    undefined FUN_0000_55f9()
       0000:3641 e8 d3 21        CALL       FUN_0000_5817                                    undefined FUN_0000_5817()
       0000:3644 e8 03 20        CALL       FUN_0000_564a                                    undefined FUN_0000_564a()
       0000:3647 e8 be 21        CALL       FUN_0000_5808                                    undefined FUN_0000_5808()
       0000:364a e8 be ed        CALL       FUN_0000_240b                                    undefined FUN_0000_240b()
       0000:364d e8 eb 2e        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:3650 b9 78 00        MOV        CX,0x78
       0000:3653 e8 f6 04        CALL       FUN_0000_3b4c                                    undefined FUN_0000_3b4c()
       0000:3656 59              POP        CX
       0000:3657 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_0000_3658()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3658                                   XREF[1]:     0000:39c0(c)  
       0000:3658 50              PUSH       AX
       0000:3659 57              PUSH       DI
       0000:365a 55              PUSH       BP
       0000:365b 89 e5           MOV        BP,SP
       0000:365d e8 6b 1a        CALL       FUN_0000_50cb                                    undefined FUN_0000_50cb()
                             LAB_0000_3660                                   XREF[1]:     0000:36d5(j)  
       0000:3660 fe 06 3c d2     INC        byte ptr [0xd23c]
       0000:3664 80 3e 3c        CMP        byte ptr [0xd23c],0x3
                 d2 03
       0000:3669 75 05           JNZ        LAB_0000_3670
       0000:366b c6 06 3c        MOV        byte ptr [0xd23c],0x0
                 d2 00
                             LAB_0000_3670                                   XREF[1]:     0000:3669(j)  
       0000:3670 e8 e0 18        CALL       FUN_0000_4f53                                    undefined FUN_0000_4f53()
       0000:3673 e8 43 1f        CALL       FUN_0000_55b9                                    undefined FUN_0000_55b9()
       0000:3676 e8 d8 ed        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
       0000:3679 e8 65 27        CALL       FUN_0000_5de1                                    undefined FUN_0000_5de1()
       0000:367c e8 25 22        CALL       FUN_0000_58a4                                    undefined FUN_0000_58a4()
       0000:367f e8 b9 ec        CALL       FUN_0000_233b                                    undefined FUN_0000_233b()
       0000:3682 e8 37 f7        CALL       FUN_0000_2dbc                                    undefined FUN_0000_2dbc()
       0000:3685 e8 81 f7        CALL       FUN_0000_2e09                                    undefined FUN_0000_2e09()
       0000:3688 e8 45 ed        CALL       FUN_0000_23d0                                    undefined FUN_0000_23d0()
       0000:368b e8              ??         E8h
                             LAB_0000_368c                                   XREF[1]:     0000:360c(j)  
       0000:368c 0a ec           OR         CH,AH
       0000:368e e8 95 24        CALL       FUN_0000_5b26                                    undefined FUN_0000_5b26()
       0000:3691 e8 51 25        CALL       FUN_0000_5be5                                    undefined FUN_0000_5be5()
       0000:3694 e8 ce 27        CALL       FUN_0000_5e65                                    undefined FUN_0000_5e65()
       0000:3697 e8 e4 ec        CALL       FUN_0000_237e                                    undefined FUN_0000_237e()
       0000:369a e8 5c 1f        CALL       FUN_0000_55f9                                    undefined FUN_0000_55f9()
       0000:369d e8 77 21        CALL       FUN_0000_5817                                    undefined FUN_0000_5817()
       0000:36a0 e8 e9 26        CALL       FUN_0000_5d8c                                    undefined FUN_0000_5d8c()
       0000:36a3 e8 65 ed        CALL       FUN_0000_240b                                    undefined FUN_0000_240b()
       0000:36a6 e8 7a 27        CALL       FUN_0000_5e23                                    undefined FUN_0000_5e23()
       0000:36a9 e8 9e 1f        CALL       FUN_0000_564a                                    undefined FUN_0000_564a()
       0000:36ac e8 59 21        CALL       FUN_0000_5808                                    undefined FUN_0000_5808()
       0000:36af e8 2f 28        CALL       FUN_0000_5ee1                                    undefined FUN_0000_5ee1()
       0000:36b2 e8 65 1b        CALL       FUN_0000_521a                                    undefined FUN_0000_521a()
       0000:36b5 e8 83 2e        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:36b8 f6 06 65        TEST       byte ptr [0xd265],0xff
                 d2 ff
       0000:36bd 75 30           JNZ        LAB_0000_36ef
       0000:36bf f7 06 52        TEST       word ptr [0xd252],0xffff
                 d2 ff ff
       0000:36c5 74 1c           JZ         LAB_0000_36e3
       0000:36c7 f6 06 64        TEST       byte ptr [0xd264],0xff
                 d2 ff
       0000:36cc 75 15           JNZ        LAB_0000_36e3
       0000:36ce f6 06 51        TEST       byte ptr [0xd251],0xff
                 d2 ff
       0000:36d3 74 02           JZ         LAB_0000_36d7
       0000:36d5 eb 89           JMP        LAB_0000_3660
                             LAB_0000_36d7                                   XREF[1]:     0000:36d3(j)  
       0000:36d7 bf c5 0c        MOV        DI,0xcc5
       0000:36da e8 02 1c        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:36dd c6 46 04 00     MOV        byte ptr [BP + 0x4],0x0
       0000:36e1 eb 10           JMP        LAB_0000_36f3
                             LAB_0000_36e3                                   XREF[2]:     0000:36c5(j), 0000:36cc(j)  
       0000:36e3 bf de 0c        MOV        DI,0xcde
       0000:36e6 e8 f6 1b        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:36e9 c6 46 04 01     MOV        byte ptr [BP + 0x4],0x1
       0000:36ed eb 04           JMP        LAB_0000_36f3
                             LAB_0000_36ef                                   XREF[1]:     0000:36bd(j)  
       0000:36ef c6 46 04 02     MOV        byte ptr [BP + 0x4],0x2
                             LAB_0000_36f3                                   XREF[2]:     0000:36e1(j), 0000:36ed(j)  
       0000:36f3 e8 07 00        CALL       FUN_0000_36fd                                    undefined FUN_0000_36fd()
       0000:36f6 e8 ef 19        CALL       FUN_0000_50e8                                    undefined FUN_0000_50e8()
       0000:36f9 5d              POP        BP
       0000:36fa 5f              POP        DI
       0000:36fb 58              POP        AX
       0000:36fc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_36fd()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_36fd                                   XREF[1]:     0000:36f3(c)  
       0000:36fd 51              PUSH       CX
       0000:36fe b9 02 00        MOV        CX,0x2
                             LAB_0000_3701                                   XREF[1]:     0000:3747(j)  
       0000:3701 e8 b5 1e        CALL       FUN_0000_55b9                                    undefined FUN_0000_55b9()
       0000:3704 e8 9d 21        CALL       FUN_0000_58a4                                    undefined FUN_0000_58a4()
       0000:3707 e8 d7 26        CALL       FUN_0000_5de1                                    undefined FUN_0000_5de1()
       0000:370a e8 44 ed        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
                             LAB_0000_370d                                   XREF[1]:     0000:374e(j)  
       0000:370d f7 06 52        TEST       word ptr [0xd252],0xffff
                 d2 ff ff
       0000:3713 74 0a           JZ         LAB_0000_371f
       0000:3715 f6 06 64        TEST       byte ptr [0xd264],0xff
                 d2 ff
       0000:371a 75 03           JNZ        LAB_0000_371f
       0000:371c e8 32 ed        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
                             LAB_0000_371f                                   XREF[2]:     0000:3713(j), 0000:371a(j)  
       0000:371f c6 06 54        MOV        byte ptr [0xd254],0x1
                 d2 01
       0000:3724 e8 ff 23        CALL       FUN_0000_5b26                                    undefined FUN_0000_5b26()
       0000:3727 e8 b7 27        CALL       FUN_0000_5ee1                                    undefined FUN_0000_5ee1()
       0000:372a e8 ed 1a        CALL       FUN_0000_521a                                    undefined FUN_0000_521a()
       0000:372d f7 06 52        TEST       word ptr [0xd252],0xffff
                 d2 ff ff
       0000:3733 74 0d           JZ         LAB_0000_3742
       0000:3735 f6 06 64        TEST       byte ptr [0xd264],0xff
                 d2 ff
       0000:373a 75 06           JNZ        LAB_0000_3742
       0000:373c e8 3f ec        CALL       FUN_0000_237e                                    undefined FUN_0000_237e()
       0000:373f e8 c9 ec        CALL       FUN_0000_240b                                    undefined FUN_0000_240b()
                             LAB_0000_3742                                   XREF[2]:     0000:3733(j), 0000:373a(j)  
       0000:3742 e8 f6 2d        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:3745 e3 02           JCXZ       LAB_0000_3749
       0000:3747 e2 b8           LOOP       LAB_0000_3701
                             LAB_0000_3749                                   XREF[1]:     0000:3745(j)  
       0000:3749 f6 06 54        TEST       byte ptr [0xd254],0xff
                 d2 ff
       0000:374e 74 bd           JZ         LAB_0000_370d
       0000:3750 e8 08 00        CALL       FUN_0000_375b                                    undefined FUN_0000_375b()
       0000:3753 e8 22 00        CALL       FUN_0000_3778                                    undefined FUN_0000_3778()
       0000:3756 e8 5f 00        CALL       FUN_0000_37b8                                    undefined FUN_0000_37b8()
       0000:3759 59              POP        CX
       0000:375a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_375b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_375b                                   XREF[4]:     FUN_0000_36fd:0000:3750(c), 
                                                                                          FUN_0000_3863:0000:3863(c), 
                                                                                          FUN_0000_4abd:0000:4ac2(c), 
                                                                                          FUN_0000_64d9:0000:64da(c)  
       0000:375b 53              PUSH       BX
       0000:375c 51              PUSH       CX
       0000:375d b9 00 01        MOV        CX,0x100
       0000:3760 bb 6d c1        MOV        BX,0xc16d
                             LAB_0000_3763                                   XREF[1]:     0000:3767(j)  
       0000:3763 c6 07 00        MOV        byte ptr [BX],0x0
       0000:3766 43              INC        BX
       0000:3767 e2 fa           LOOP       LAB_0000_3763
       0000:3769 b9 20 00        MOV        CX,0x20
       0000:376c bb ad c2        MOV        BX,0xc2ad
                             LAB_0000_376f                                   XREF[1]:     0000:3773(j)  
       0000:376f c6 07 ff        MOV        byte ptr [BX],0xff
       0000:3772 43              INC        BX
       0000:3773 e2 fa           LOOP       LAB_0000_376f
       0000:3775 59              POP        CX
       0000:3776 5b              POP        BX
       0000:3777 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3778()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3778                                   XREF[2]:     FUN_0000_36fd:0000:3753(c), 
                                                                                          FUN_0000_3863:0000:3866(c)  
       0000:3778 53              PUSH       BX
       0000:3779 51              PUSH       CX
       0000:377a b9 40 00        MOV        CX,0x40
       0000:377d bb 0e c3        MOV        BX,0xc30e
                             LAB_0000_3780                                   XREF[1]:     0000:3784(j)  
       0000:3780 c6 07 00        MOV        byte ptr [BX],0x0
       0000:3783 43              INC        BX
       0000:3784 e2 fa           LOOP       LAB_0000_3780
       0000:3786 b9 08 00        MOV        CX,0x8
       0000:3789 bb 4e c3        MOV        BX,0xc34e
                             LAB_0000_378c                                   XREF[1]:     0000:3793(j)  
       0000:378c c7 07 ff ff     MOV        word ptr [BX],0xffff
       0000:3790 83 c3 02        ADD        BX,0x2
       0000:3793 e2 f7           LOOP       LAB_0000_378c
       0000:3795 59              POP        CX
       0000:3796 5b              POP        BX
       0000:3797 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3798()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3798                                   XREF[1]:     FUN_0000_3863:0000:3869(c)  
       0000:3798 53              PUSH       BX
       0000:3799 51              PUSH       CX
       0000:379a b9 2d 00        MOV        CX,0x2d
       0000:379d bb cd c2        MOV        BX,0xc2cd
                             LAB_0000_37a0                                   XREF[1]:     0000:37a4(j)  
       0000:37a0 c6 07 00        MOV        byte ptr [BX],0x0
       0000:37a3 43              INC        BX
       0000:37a4 e2 fa           LOOP       LAB_0000_37a0
       0000:37a6 b9 0a 00        MOV        CX,0xa
       0000:37a9 bb fa c2        MOV        BX,0xc2fa
                             LAB_0000_37ac                                   XREF[1]:     0000:37b3(j)  
       0000:37ac c7 07 ff ff     MOV        word ptr [BX],0xffff
       0000:37b0 83 c3 02        ADD        BX,0x2
       0000:37b3 e2 f7           LOOP       LAB_0000_37ac
       0000:37b5 59              POP        CX
       0000:37b6 5b              POP        BX
       0000:37b7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_37b8()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_37b8                                   XREF[2]:     FUN_0000_36fd:0000:3756(c), 
                                                                                          FUN_0000_3863:0000:386c(c)  
       0000:37b8 c7 06 5e        MOV        word ptr [0xc35e],0xffff
                 c3 ff ff
       0000:37be c7 06 60        MOV        word ptr [0xc360],0xffff
                 c3 ff ff
       0000:37c4 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_37c5()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_37c5                                   XREF[2]:     FUN_0000_3b94:0000:3bb9(c), 
                                                                                          FUN_0000_5134:0000:5196(c)  
       0000:37c5 53              PUSH       BX
       0000:37c6 51              PUSH       CX
       0000:37c7 b9 1e 03        MOV        CX,0x31e
       0000:37ca bb 17 cf        MOV        BX,0xcf17
                             LAB_0000_37cd                                   XREF[1]:     0000:37d1(j)  
       0000:37cd c6 07 00        MOV        byte ptr [BX],0x0
       0000:37d0 43              INC        BX
       0000:37d1 e2 fa           LOOP       LAB_0000_37cd
       0000:37d3 c6 06 35        MOV        byte ptr [0xd235],0x0
                 d2 00
       0000:37d8 59              POP        CX
       0000:37d9 5b              POP        BX
       0000:37da c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_37db()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_37db                                   XREF[1]:     0000:39b7(c)  
       0000:37db 50              PUSH       AX
       0000:37dc 52              PUSH       DX
       0000:37dd e8 83 00        CALL       FUN_0000_3863                                    undefined FUN_0000_3863()
       0000:37e0 e8 b9 2e        CALL       FUN_0000_669c                                    undefined FUN_0000_669c()
       0000:37e3 e8 c7 2e        CALL       FUN_0000_66ad                                    undefined FUN_0000_66ad()
       0000:37e6 e8 43 00        CALL       FUN_0000_382c                                    undefined FUN_0000_382c()
       0000:37e9 e8 b0 2e        CALL       FUN_0000_669c                                    undefined FUN_0000_669c()
       0000:37ec e8 be 2e        CALL       FUN_0000_66ad                                    undefined FUN_0000_66ad()
       0000:37ef 8a 16 4f d2     MOV        DL,byte ptr [0xd24f]
       0000:37f3 e8 c1 fb        CALL       FUN_0000_33b7                                    undefined FUN_0000_33b7()
       0000:37f6 b8 00 6e        MOV        AX,0x6e00
       0000:37f9 e8 ed 2d        CALL       FUN_0000_65e9                                    undefined FUN_0000_65e9()
       0000:37fc c6 06 39        MOV        byte ptr [0xd239],0x0
                 d2 00
       0000:3801 c7 06 37        MOV        word ptr [0xd237],0x0
                 d2 00 00
       0000:3807 e8 fe 06        CALL       FUN_0000_3f08                                    undefined FUN_0000_3f08()
       0000:380a e8 60 08        CALL       FUN_0000_406d                                    undefined FUN_0000_406d()
       0000:380d e8 0f 01        CALL       FUN_0000_391f                                    undefined FUN_0000_391f()
       0000:3810 e8 23 18        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:3813 e8 3f 2d        CALL       FUN_0000_6555                                    undefined FUN_0000_6555()
       0000:3816 72 03           JC         LAB_0000_381b
       0000:3818 e8 72 2d        CALL       FUN_0000_658d                                    undefined FUN_0000_658d()
                             LAB_0000_381b                                   XREF[1]:     0000:3816(j)  
       0000:381b c6 06 39        MOV        byte ptr [0xd239],0x1
                 d2 01
       0000:3820 c7 06 37        MOV        word ptr [0xd237],0x6e00
                 d2 00 6e
       0000:3826 e8 0e 2e        CALL       FUN_0000_6637                                    undefined FUN_0000_6637()
       0000:3829 5a              POP        DX
       0000:382a 58              POP        AX
       0000:382b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_382c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_382c                                   XREF[1]:     FUN_0000_37db:0000:37e6(c)  
       0000:382c 50              PUSH       AX
       0000:382d 51              PUSH       CX
       0000:382e 52              PUSH       DX
       0000:382f 56              PUSH       SI
       0000:3830 57              PUSH       DI
       0000:3831 b9 12 00        MOV        CX,0x12
       0000:3834 bf da 80        MOV        DI,0x80da
       0000:3837 be b2 09        MOV        SI,0x9b2
       0000:383a 06              PUSH       ES
       0000:383b 1e              PUSH       DS
       0000:383c 07              POP        ES
       0000:383d f3 a4           MOVSB.REP  ES:DI,SI
       0000:383f 07              POP        ES
       0000:3840 a0 4f d2        MOV        AL,[0xd24f]
       0000:3843 32 e4           XOR        AH,AH
       0000:3845 b2 0a           MOV        DL,0xa
       0000:3847 f6 f2           DIV        DL
       0000:3849 05 30 30        ADD        AX,0x3030
       0000:384c a3 e8 80        MOV        [0x80e8],AX
       0000:384f b2 00           MOV        DL,0x0
       0000:3851 bf da 80        MOV        DI,0x80da
       0000:3854 e8 55 0c        CALL       FUN_0000_44ac                                    undefined FUN_0000_44ac()
       0000:3857 b9 f0 00        MOV        CX,0xf0
       0000:385a e8 cc 02        CALL       FUN_0000_3b29                                    undefined FUN_0000_3b29()
       0000:385d 5f              POP        DI
       0000:385e 5e              POP        SI
       0000:385f 5a              POP        DX
       0000:3860 59              POP        CX
       0000:3861 58              POP        AX
       0000:3862 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3863()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3863                                   XREF[2]:     FUN_0000_37db:0000:37dd(c), 
                                                                                          FUN_0000_3b94:0000:3b94(c)  
       0000:3863 e8 f5 fe        CALL       FUN_0000_375b                                    undefined FUN_0000_375b()
       0000:3866 e8 0f ff        CALL       FUN_0000_3778                                    undefined FUN_0000_3778()
       0000:3869 e8 2c ff        CALL       FUN_0000_3798                                    undefined FUN_0000_3798()
       0000:386c e8 49 ff        CALL       FUN_0000_37b8                                    undefined FUN_0000_37b8()
       0000:386f c6 06 64        MOV        byte ptr [0xd264],0x0
                 d2 00
       0000:3874 c6 06 59        MOV        byte ptr [0xd259],0x0
                 d2 00
       0000:3879 c6 06 5a        MOV        byte ptr [0xd25a],0x0
                 d2 00
       0000:387e c6 06 5b        MOV        byte ptr [0xd25b],0x0
                 d2 00
       0000:3883 c6 06 62        MOV        byte ptr [0xd262],0x1
                 d2 01
       0000:3888 c6 06 63        MOV        byte ptr [0xd263],0x1
                 d2 01
       0000:388d c6 06 98        MOV        byte ptr [0xd398],0x1
                 d3 01
       0000:3892 c6 06 3a        MOV        byte ptr [0xd23a],0x4
                 d2 04
       0000:3897 c6 06 3b        MOV        byte ptr [0xd23b],0x1
                 d2 01
       0000:389c c7 06 3d        MOV        word ptr [0xd23d],LAB_0000_05fe+2
                 d2 00 06
       0000:38a2 c6 06 55        MOV        byte ptr [0xd255],0x0
                 d2 00
       0000:38a7 c6 06 57        MOV        byte ptr [0xd257],0x0
                 d2 00
       0000:38ac c6 06 58        MOV        byte ptr [0xd258],0x0
                 d2 00
       0000:38b1 c6 06 35        MOV        byte ptr [0xd235],0x0
                 d2 00
       0000:38b6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_38b7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_38b7                                   XREF[1]:     0000:39d8(c)  
       0000:38b7 50              PUSH       AX
       0000:38b8 51              PUSH       CX
       0000:38b9 52              PUSH       DX
       0000:38ba 80 3e 39        CMP        byte ptr [0xd239],0x0
                 d2 00
       0000:38bf 74 03           JZ         LAB_0000_38c4
       0000:38c1 e8 77 2c        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
                             LAB_0000_38c4                                   XREF[1]:     0000:38bf(j)  
       0000:38c4 e8 d5 2d        CALL       FUN_0000_669c                                    undefined FUN_0000_669c()
       0000:38c7 b9 1e 00        MOV        CX,0x1e
                             LAB_0000_38ca                                   XREF[2]:     0000:38d0(j), 0000:38d7(j)  
       0000:38ca ba da 03        MOV        DX,0x3da
       0000:38cd ec              IN         AL,DX
       0000:38ce a8 08           TEST       AL,0x8
       0000:38d0 75 f8           JNZ        LAB_0000_38ca
                             LAB_0000_38d2                                   XREF[1]:     0000:38d5(j)  
       0000:38d2 ec              IN         AL,DX
       0000:38d3 a8 08           TEST       AL,0x8
       0000:38d5 74 fb           JZ         LAB_0000_38d2
       0000:38d7 e2 f1           LOOP       LAB_0000_38ca
       0000:38d9 e8 79 2c        CALL       FUN_0000_6555                                    undefined FUN_0000_6555()
       0000:38dc 5a              POP        DX
       0000:38dd 59              POP        CX
       0000:38de 58              POP        AX
       0000:38df c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_38e0()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_38e0                                   XREF[2]:     FUN_0000_3610:0000:3614(c), 
                                                                                          FUN_0000_3b94:0000:3b9a(c)  
       0000:38e0 50              PUSH       AX
       0000:38e1 53              PUSH       BX
       0000:38e2 51              PUSH       CX
       0000:38e3 52              PUSH       DX
       0000:38e4 b8 01 00        MOV        AX,0x1
       0000:38e7 50              PUSH       AX
       0000:38e8 b8 00 00        MOV        AX,0x0
       0000:38eb 50              PUSH       AX
       0000:38ec b8 fe ff        MOV        AX,0xfffe
       0000:38ef 50              PUSH       AX
       0000:38f0 b8 02 00        MOV        AX,0x2
       0000:38f3 50              PUSH       AX
       0000:38f4 b8 30 01        MOV        AX,0x130
       0000:38f7 50              PUSH       AX
       0000:38f8 b8 ed 00        MOV        AX,0xed
       0000:38fb 50              PUSH       AX
       0000:38fc e8 34 00        CALL       FUN_0000_3933                                    undefined FUN_0000_3933()
       0000:38ff 5a              POP        DX
       0000:3900 59              POP        CX
       0000:3901 5b              POP        BX
       0000:3902 58              POP        AX
       0000:3903 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3904()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3904                                   XREF[2]:     FUN_0000_3610:0000:3611(c), 
                                                                                          FUN_0000_3b94:0000:3b97(c)  
       0000:3904 50              PUSH       AX
       0000:3905 52              PUSH       DX
       0000:3906 c6 06 49        MOV        byte ptr [0xd249],0x6
                 d2 06
       0000:390b c7 06 47        MOV        word ptr [0xd247],0xd8
                 d2 d8 00
       0000:3911 c7 06 4a        MOV        word ptr [0xd24a],0x1a0
                 d2 a0 01
       0000:3917 c6 06 4c        MOV        byte ptr [0xd24c],0x0
                 d2 00
       0000:391c 5a              POP        DX
       0000:391d 58              POP        AX
       0000:391e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_391f()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_391f                                   XREF[1]:     FUN_0000_37db:0000:380d(c)  
       0000:391f 50              PUSH       AX
       0000:3920 53              PUSH       BX
       0000:3921 52              PUSH       DX
       0000:3922 57              PUSH       DI
       0000:3923 b2 00           MOV        DL,0x0
       0000:3925 e8 9b 26        CALL       FUN_0000_5fc3                                    undefined FUN_0000_5fc3()
       0000:3928 e8 ab 26        CALL       FUN_0000_5fd6                                    undefined FUN_0000_5fd6()
       0000:392b e8 bb 26        CALL       FUN_0000_5fe9                                    undefined FUN_0000_5fe9()
       0000:392e 5f              POP        DI
       0000:392f 5a              POP        DX
       0000:3930 5b              POP        BX
       0000:3931 58              POP        AX
       0000:3932 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16near FUN_0000_3933()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3933                                   XREF[4]:     FUN_0000_38e0:0000:38fc(c), 
                                                                                          FUN_0000_3970:0000:39a1(c), 
                                                                                          FUN_0000_4aea:0000:4b11(c), 
                                                                                          FUN_0000_64aa:0000:64d1(c)  
       0000:3933 52              PUSH       DX
       0000:3934 57              PUSH       DI
       0000:3935 55              PUSH       BP
       0000:3936 89 e5           MOV        BP,SP
       0000:3938 83 c5 06        ADD        BP,0x6
       0000:393b bf 6d c1        MOV        DI,0xc16d
       0000:393e 32 d2           XOR        DL,DL
                             LAB_0000_3940                                   XREF[1]:     0000:394e(j)  
       0000:3940 f6 45 08 01     TEST       byte ptr [DI + 0x8],0x1
       0000:3944 74 0c           JZ         LAB_0000_3952
       0000:3946 fe c2           INC        DL
       0000:3948 83 c7 10        ADD        DI,0x10
       0000:394b 80 fa 10        CMP        DL,0x10
       0000:394e 72 f0           JC         LAB_0000_3940
       0000:3950 eb 18           JMP        LAB_0000_396a
                             LAB_0000_3952                                   XREF[1]:     0000:3944(j)  
       0000:3952 32 f6           XOR        DH,DH
       0000:3954 52              PUSH       DX
       0000:3955 ff 76 0c        PUSH       word ptr [BP + Stack[0xc]]
       0000:3958 ff 76 0a        PUSH       word ptr [BP + Stack[0xa]]
       0000:395b ff 76 08        PUSH       word ptr [BP + Stack[0x8]]
       0000:395e ff 76 06        PUSH       word ptr [BP + Stack[0x6]]
       0000:3961 ff 76 04        PUSH       word ptr [BP + Stack[0x4]]
       0000:3964 ff 76 02        PUSH       word ptr [BP + Stack[0x2]]
       0000:3967 e8 0d f5        CALL       FUN_0000_2e77                                    undefined FUN_0000_2e77()
                             LAB_0000_396a                                   XREF[1]:     0000:3950(j)  
       0000:396a 5d              POP        BP
       0000:396b 5f              POP        DI
       0000:396c 5a              POP        DX
       0000:396d c2 0c 00        RET        0xc
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3970()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3970                                   XREF[1]:     FUN_0000_2bec:0000:2cc8(c)  
       0000:3970 50              PUSH       AX
       0000:3971 53              PUSH       BX
       0000:3972 51              PUSH       CX
       0000:3973 52              PUSH       DX
       0000:3974 57              PUSH       DI
       0000:3975 f6 06 55        TEST       byte ptr [0xd255],0xff
                 d2 ff
       0000:397a 74 30           JZ         LAB_0000_39ac
       0000:397c 88 d3           MOV        BL,DL
       0000:397e 32 ff           XOR        BH,BH
       0000:3980 b1 04           MOV        CL,0x4
       0000:3982 d3 e3           SHL        BX,CL
       0000:3984 81 c3 6d c1     ADD        BX,0xc16d
       0000:3988 89 df           MOV        DI,BX
       0000:398a 8a 45 08        MOV        AL,byte ptr [DI + 0x8]
       0000:398d 32 e4           XOR        AH,AH
       0000:398f 50              PUSH       AX
       0000:3990 ff 75 09        PUSH       word ptr [DI + 0x9]
       0000:3993 ff 75 06        PUSH       word ptr [DI + 0x6]
       0000:3996 8b 45 04        MOV        AX,word ptr [DI + 0x4]
       0000:3999 f7 d8           NEG        AX
       0000:399b 50              PUSH       AX
       0000:399c ff 75 02        PUSH       word ptr [DI + 0x2]
       0000:399f ff 35           PUSH       word ptr [DI]
       0000:39a1 e8 8f ff        CALL       FUN_0000_3933                                    undefined FUN_0000_3933()
       0000:39a4 fe 0e 55 d2     DEC        byte ptr [0xd255]
       0000:39a8 fe 06 51 d2     INC        byte ptr [0xd251]
                             LAB_0000_39ac                                   XREF[1]:     0000:397a(j)  
       0000:39ac 5f              POP        DI
       0000:39ad 5a              POP        DX
       0000:39ae 59              POP        CX
       0000:39af 5b              POP        BX
       0000:39b0 58              POP        AX
       0000:39b1 c3              RET
       0000:39b2 50              PUSH       AX
       0000:39b3 52              PUSH       DX
       0000:39b4 e8 3c 00        CALL       FUN_0000_39f3                                    undefined FUN_0000_39f3()
                             LAB_0000_39b7                                   XREF[1]:     0000:39db(j)  
       0000:39b7 e8 21 fe        CALL       FUN_0000_37db                                    undefined FUN_0000_37db()
                             LAB_0000_39ba                                   XREF[1]:     0000:39e0(j)  
       0000:39ba e8 53 fc        CALL       FUN_0000_3610                                    undefined FUN_0000_3610()
       0000:39bd e8 1c 03        CALL       FUN_0000_3cdc                                    undefined FUN_0000_3cdc()
       0000:39c0 e8 95 fc        CALL       FUN_0000_3658                                    undefined FUN_0000_3658()
       0000:39c3 84 c0           TEST       AL,AL
       0000:39c5 74 16           JZ         LAB_0000_39dd
       0000:39c7 3c 01           CMP        AL,0x1
       0000:39c9 74 02           JZ         LAB_0000_39cd
       0000:39cb eb 23           JMP        LAB_0000_39f0
                             LAB_0000_39cd                                   XREF[1]:     0000:39c9(j)  
       0000:39cd fe 06 4f d2     INC        byte ptr [0xd24f]
       0000:39d1 80 3e 4f        CMP        byte ptr [0xd24f],0x1e
                 d2 1e
       0000:39d6 77 12           JA         LAB_0000_39ea
       0000:39d8 e8 dc fe        CALL       FUN_0000_38b7                                    undefined FUN_0000_38b7()
       0000:39db eb da           JMP        LAB_0000_39b7
                             LAB_0000_39dd                                   XREF[1]:     0000:39c5(j)  
       0000:39dd e8 79 00        CALL       FUN_0000_3a59                                    undefined FUN_0000_3a59()
       0000:39e0 73 d8           JNC        LAB_0000_39ba
       0000:39e2 e8 d0 00        CALL       FUN_0000_3ab5                                    undefined FUN_0000_3ab5()
       0000:39e5 e8 9a 0e        CALL       FUN_0000_4882                                    undefined FUN_0000_4882()
       0000:39e8 eb 06           JMP        LAB_0000_39f0
                             LAB_0000_39ea                                   XREF[1]:     0000:39d6(j)  
       0000:39ea e8 c2 02        CALL       FUN_0000_3caf                                    undefined FUN_0000_3caf()
       0000:39ed e8 92 0e        CALL       FUN_0000_4882                                    undefined FUN_0000_4882()
                             LAB_0000_39f0                                   XREF[2]:     0000:39cb(j), 0000:39e8(j)  
       0000:39f0 5a              POP        DX
       0000:39f1 58              POP        AX
       0000:39f2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_39f3()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_39f3                                   XREF[1]:     0000:39b4(c)  
       0000:39f3 c6 06 4f        MOV        byte ptr [0xd24f],0x1
                 d2 01
       0000:39f8 c6 06 9b        MOV        byte ptr [0xd39b],0x0
                 d3 00
       0000:39fd c6 06 9c        MOV        byte ptr [0xd39c],0x0
                 d3 00
       0000:3a02 c6 06 9d        MOV        byte ptr [0xd39d],0x0
                 d3 00
       0000:3a07 c6 06 9e        MOV        byte ptr [0xd39e],0x0
                 d3 00
       0000:3a0c c6 06 9f        MOV        byte ptr [0xd39f],0x0
                 d3 00
       0000:3a11 c6 06 a0        MOV        byte ptr [0xd3a0],0x0
                 d3 00
       0000:3a16 c6 06 a2        MOV        byte ptr [0xd3a2],0x0
                 d3 00
       0000:3a1b c6 06 a3        MOV        byte ptr [0xd3a3],0x0
                 d3 00
       0000:3a20 c6 06 a4        MOV        byte ptr [0xd3a4],0x4
                 d3 04
       0000:3a25 c6 06 a5        MOV        byte ptr [0xd3a5],0x0
                 d3 00
       0000:3a2a c6 06 a6        MOV        byte ptr [0xd3a6],0x0
                 d3 00
       0000:3a2f c6 06 a7        MOV        byte ptr [0xd3a7],0x0
                 d3 00
       0000:3a34 c7 06 99        MOV        word ptr [0xd399],0x0
                 d3 00 00
       0000:3a3a c6 06 50        MOV        byte ptr [0xd250],0x3
                 d2 03
       0000:3a3f c6 06 ab        MOV        byte ptr [0xd3ab],0x0
                 d3 00
       0000:3a44 c6 06 ac        MOV        byte ptr [0xd3ac],0x3
                 d3 03
       0000:3a49 c6 06 d0        MOV        byte ptr [0xced0],0x0
                 ce 00
       0000:3a4e c6 06 0e        MOV        byte ptr [0xcf0e],0x0
                 cf 00
       0000:3a53 c6 06 65        MOV        byte ptr [0xd265],0x0
                 d2 00
       0000:3a58 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3a59()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3a59                                   XREF[1]:     0000:39dd(c)  
       0000:3a59 52              PUSH       DX
       0000:3a5a fe 0e 50 d2     DEC        byte ptr [0xd250]
       0000:3a5e fe 0e ac d3     DEC        byte ptr [0xd3ac]
       0000:3a62 79 09           JNS        LAB_0000_3a6d
       0000:3a64 c6 06 ac        MOV        byte ptr [0xd3ac],0x9
                 d3 09
       0000:3a69 fe 0e ab d3     DEC        byte ptr [0xd3ab]
                             LAB_0000_3a6d                                   XREF[1]:     0000:3a62(j)  
       0000:3a6d b2 01           MOV        DL,0x1
       0000:3a6f e8 77 25        CALL       FUN_0000_5fe9                                    undefined FUN_0000_5fe9()
       0000:3a72 f6 06 50        TEST       byte ptr [0xd250],0xff
                 d2 ff
       0000:3a77 74 03           JZ         LAB_0000_3a7c
       0000:3a79 f8              CLC
       0000:3a7a eb 01           JMP        LAB_0000_3a7d
                             LAB_0000_3a7c                                   XREF[1]:     0000:3a77(j)  
       0000:3a7c f9              STC
                             LAB_0000_3a7d                                   XREF[1]:     0000:3a7a(j)  
       0000:3a7d 5a              POP        DX
       0000:3a7e c3              RET
       0000:3a7f c6 06 2c        MOV        byte ptr [0xd42c],0x0
                 d4 00
       0000:3a84 f6 06 4c        TEST       byte ptr [0xd24c],0xff
                 d2 ff
       0000:3a89 74 0f           JZ         LAB_0000_3a9a
       0000:3a8b f6 06 4c        TEST       byte ptr [0xd24c],0x1
                 d2 01
       0000:3a90 74 05           JZ         LAB_0000_3a97
       0000:3a92 e8 06 00        CALL       FUN_0000_3a9b                                    undefined FUN_0000_3a9b()
       0000:3a95 eb 03           JMP        LAB_0000_3a9a
                             LAB_0000_3a97                                   XREF[1]:     0000:3a90(j)  
       0000:3a97 e8 70 e7        CALL       FUN_0000_220a                                    undefined FUN_0000_220a()
                             LAB_0000_3a9a                                   XREF[2]:     0000:3a89(j), 0000:3a95(j)  
       0000:3a9a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3a9b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3a9b                                   XREF[2]:     0000:2590(c), 0000:3a92(c)  
       0000:3a9b 50              PUSH       AX
       0000:3a9c 51              PUSH       CX
       0000:3a9d 56              PUSH       SI
       0000:3a9e be 6d c1        MOV        SI,0xc16d
       0000:3aa1 b9 10 00        MOV        CX,0x10
                             LAB_0000_3aa4                                   XREF[1]:     0000:3aaf(j)  
       0000:3aa4 8a 44 08        MOV        AL,byte ptr [SI + 0x8]
       0000:3aa7 24 f7           AND        AL,0xf7
       0000:3aa9 88 44 08        MOV        byte ptr [SI + 0x8],AL
       0000:3aac 83 c6 10        ADD        SI,0x10
       0000:3aaf e2 f3           LOOP       LAB_0000_3aa4
       0000:3ab1 5e              POP        SI
       0000:3ab2 59              POP        CX
       0000:3ab3 58              POP        AX
       0000:3ab4 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3ab5()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3ab5                                   XREF[1]:     0000:39e2(c)  
       0000:3ab5 52              PUSH       DX
       0000:3ab6 57              PUSH       DI
       0000:3ab7 e8 97 e9        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
       0000:3aba e8 7e 2a        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:3abd e8 91 e9        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
       0000:3ac0 b2 01           MOV        DL,0x1
       0000:3ac2 bf c0 08        MOV        DI,0x8c0
       0000:3ac5 e8 e4 09        CALL       FUN_0000_44ac                                    undefined FUN_0000_44ac()
       0000:3ac8 b9 f0 00        MOV        CX,0xf0
       0000:3acb e8 5b 00        CALL       FUN_0000_3b29                                    undefined FUN_0000_3b29()
       0000:3ace 5f              POP        DI
       0000:3acf 5a              POP        DX
       0000:3ad0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3ad1()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3ad1                                   XREF[1]:     FUN_0000_5e83:0000:5ed1(c)  
       0000:3ad1 52              PUSH       DX
       0000:3ad2 f6 06 63        TEST       byte ptr [0xd263],0xff
                 d2 ff
       0000:3ad7 75 4b           JNZ        LAB_0000_3b24
       0000:3ad9 80 06 9e        ADD        byte ptr [0xd39e],0x2
                 d3 02
       0000:3ade 80 3e 9e        CMP        byte ptr [0xd39e],0xa
                 d3 0a
       0000:3ae3 72 35           JC         LAB_0000_3b1a
       0000:3ae5 80 2e 9e        SUB        byte ptr [0xd39e],0xa
                 d3 0a
       0000:3aea fe 06 9d d3     INC        byte ptr [0xd39d]
       0000:3aee 80 3e 9d        CMP        byte ptr [0xd39d],0xa
                 d3 0a
       0000:3af3 72 25           JC         LAB_0000_3b1a
       0000:3af5 c6 06 9d        MOV        byte ptr [0xd39d],0x0
                 d3 00
       0000:3afa fe 06 9c d3     INC        byte ptr [0xd39c]
       0000:3afe 80 3e 9c        CMP        byte ptr [0xd39c],0xa
                 d3 0a
       0000:3b03 72 15           JC         LAB_0000_3b1a
       0000:3b05 c6 06 9c        MOV        byte ptr [0xd39c],0x0
                 d3 00
       0000:3b0a fe 06 9b d3     INC        byte ptr [0xd39b]
       0000:3b0e 80 3e 9b        CMP        byte ptr [0xd39b],0xa
                 d3 0a
       0000:3b13 72 05           JC         LAB_0000_3b1a
       0000:3b15 c6 06 9b        MOV        byte ptr [0xd39b],0x0
                 d3 00
                             LAB_0000_3b1a                                   XREF[4]:     0000:3ae3(j), 0000:3af3(j), 
                                                                                          0000:3b03(j), 0000:3b13(j)  
       0000:3b1a b2 01           MOV        DL,0x1
       0000:3b1c e8 a4 24        CALL       FUN_0000_5fc3                                    undefined FUN_0000_5fc3()
       0000:3b1f e8 57 24        CALL       FUN_0000_5f79                                    undefined FUN_0000_5f79()
       0000:3b22 eb 03           JMP        LAB_0000_3b27
                             LAB_0000_3b24                                   XREF[1]:     0000:3ad7(j)  
       0000:3b24 e8 18 ea        CALL       FUN_0000_253f                                    undefined FUN_0000_253f()
                             LAB_0000_3b27                                   XREF[1]:     0000:3b22(j)  
       0000:3b27 5a              POP        DX
       0000:3b28 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3b29()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3b29                                   XREF[3]:     FUN_0000_382c:0000:385a(c), 
                                                                                          FUN_0000_3ab5:0000:3acb(c), 
                                                                                          FUN_0000_4882:0000:489b(c)  
       0000:3b29 50              PUSH       AX
       0000:3b2a 51              PUSH       CX
       0000:3b2b 52              PUSH       DX
       0000:3b2c e8 07 15        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
                             LAB_0000_3b2f                                   XREF[2]:     0000:3b35(j), 0000:3b40(j)  
       0000:3b2f ba da 03        MOV        DX,0x3da
       0000:3b32 ec              IN         AL,DX
       0000:3b33 a8 08           TEST       AL,0x8
       0000:3b35 75 f8           JNZ        LAB_0000_3b2f
                             LAB_0000_3b37                                   XREF[1]:     0000:3b3a(j)  
       0000:3b37 ec              IN         AL,DX
       0000:3b38 a8 08           TEST       AL,0x8
       0000:3b3a 74 fb           JZ         LAB_0000_3b37
       0000:3b3c b4 01           MOV        AH,0x1
       0000:3b3e cd 16           INT        0x16
       0000:3b40 e1 ed           LOOPZ      LAB_0000_3b2f
       0000:3b42 e3 04           JCXZ       LAB_0000_3b48
       0000:3b44 b4 00           MOV        AH,0x0
       0000:3b46 cd 16           INT        0x16
                             LAB_0000_3b48                                   XREF[1]:     0000:3b42(j)  
       0000:3b48 5a              POP        DX
       0000:3b49 59              POP        CX
       0000:3b4a 58              POP        AX
       0000:3b4b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3b4c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3b4c                                   XREF[1]:     FUN_0000_3610:0000:3653(c)  
       0000:3b4c 50              PUSH       AX
       0000:3b4d 51              PUSH       CX
       0000:3b4e 52              PUSH       DX
       0000:3b4f e8 e4 14        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
                             LAB_0000_3b52                                   XREF[2]:     0000:3b58(j), 0000:3b63(j)  
       0000:3b52 ba da 03        MOV        DX,0x3da
       0000:3b55 ec              IN         AL,DX
       0000:3b56 a8 08           TEST       AL,0x8
       0000:3b58 75 f8           JNZ        LAB_0000_3b52
                             LAB_0000_3b5a                                   XREF[1]:     0000:3b5d(j)  
       0000:3b5a ec              IN         AL,DX
       0000:3b5b a8 08           TEST       AL,0x8
       0000:3b5d 74 fb           JZ         LAB_0000_3b5a
       0000:3b5f b4 01           MOV        AH,0x1
       0000:3b61 cd 16           INT        0x16
       0000:3b63 e1 ed           LOOPZ      LAB_0000_3b52
       0000:3b65 5a              POP        DX
       0000:3b66 59              POP        CX
       0000:3b67 58              POP        AX
       0000:3b68 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3b69()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3b69                                   XREF[1]:     FUN_0000_3c38:0000:3c3f(c)  
       0000:3b69 52              PUSH       DX
       0000:3b6a 56              PUSH       SI
       0000:3b6b 8b 36 ce ce     MOV        SI,word ptr [0xcece]
       0000:3b6f 8a 14           MOV        DL,byte ptr [SI]
       0000:3b71 e8 43 f8        CALL       FUN_0000_33b7                                    undefined FUN_0000_33b7()
       0000:3b74 e8 67 04        CALL       FUN_0000_3fde                                    undefined FUN_0000_3fde()
       0000:3b77 e8 f3 04        CALL       FUN_0000_406d                                    undefined FUN_0000_406d()
       0000:3b7a e8 be 29        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:3b7d e8 e5 2a        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
       0000:3b80 46              INC        SI
       0000:3b81 81 fe 7f 07     CMP        SI,0x77f
       0000:3b85 75 03           JNZ        LAB_0000_3b8a
       0000:3b87 be 75 07        MOV        SI,0x775
                             LAB_0000_3b8a                                   XREF[1]:     0000:3b85(j)  
       0000:3b8a 89 36 ce ce     MOV        word ptr [0xcece],SI=>LAB_0000_0774+1
       0000:3b8e e8 03 00        CALL       FUN_0000_3b94                                    undefined FUN_0000_3b94()
       0000:3b91 5e              POP        SI
       0000:3b92 5a              POP        DX
       0000:3b93 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3b94()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3b94                                   XREF[1]:     FUN_0000_3b69:0000:3b8e(c)  
       0000:3b94 e8 cc fc        CALL       FUN_0000_3863                                    undefined FUN_0000_3863()
       0000:3b97 e8 6a fd        CALL       FUN_0000_3904                                    undefined FUN_0000_3904()
       0000:3b9a e8 43 fd        CALL       FUN_0000_38e0                                    undefined FUN_0000_38e0()
       0000:3b9d e8 59 1a        CALL       FUN_0000_55f9                                    undefined FUN_0000_55f9()
       0000:3ba0 e8 74 1c        CALL       FUN_0000_5817                                    undefined FUN_0000_5817()
       0000:3ba3 e8 a4 1a        CALL       FUN_0000_564a                                    undefined FUN_0000_564a()
       0000:3ba6 e8 5f 1c        CALL       FUN_0000_5808                                    undefined FUN_0000_5808()
       0000:3ba9 e8 8f 29        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:3bac c6 06 56        MOV        byte ptr [0xd256],0x0
                 d2 00
       0000:3bb1 c6 06 d0        MOV        byte ptr [0xced0],0x1
                 ce 01
       0000:3bb6 e8 04 00        CALL       FUN_0000_3bbd                                    undefined FUN_0000_3bbd()
       0000:3bb9 e8 09 fc        CALL       FUN_0000_37c5                                    undefined FUN_0000_37c5()
       0000:3bbc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3bbd()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x2]:1  local_2                                 XREF[2]:     0000:3c0e(*), 
                                                                                                   0000:3c13(*)  
                             FUN_0000_3bbd                                   XREF[1]:     FUN_0000_3b94:0000:3bb6(c)  
       0000:3bbd 50              PUSH       AX
       0000:3bbe 51              PUSH       CX
       0000:3bbf 55              PUSH       BP
       0000:3bc0 89 e5           MOV        BP,SP
       0000:3bc2 b9 00 04        MOV        CX,0x400
                             LAB_0000_3bc5                                   XREF[1]:     0000:3c06(j)  
       0000:3bc5 fe 06 3c d2     INC        byte ptr [0xd23c]
       0000:3bc9 80 3e 3c        CMP        byte ptr [0xd23c],0x3
                 d2 03
       0000:3bce 75 05           JNZ        LAB_0000_3bd5
       0000:3bd0 c6 06 3c        MOV        byte ptr [0xd23c],0x0
                 d2 00
                             LAB_0000_3bd5                                   XREF[1]:     0000:3bce(j)  
       0000:3bd5 e8 e1 19        CALL       FUN_0000_55b9                                    undefined FUN_0000_55b9()
       0000:3bd8 e8 76 e8        CALL       FUN_0000_2451                                    undefined FUN_0000_2451()
       0000:3bdb e8 c6 1c        CALL       FUN_0000_58a4                                    undefined FUN_0000_58a4()
       0000:3bde e8 5a e7        CALL       FUN_0000_233b                                    undefined FUN_0000_233b()
       0000:3be1 e8 37 00        CALL       FUN_0000_3c1b                                    undefined FUN_0000_3c1b()
       0000:3be4 e8 22 f2        CALL       FUN_0000_2e09                                    undefined FUN_0000_2e09()
       0000:3be7 e8 e6 e7        CALL       FUN_0000_23d0                                    undefined FUN_0000_23d0()
       0000:3bea e8 39 1f        CALL       FUN_0000_5b26                                    undefined FUN_0000_5b26()
       0000:3bed e8 8e e7        CALL       FUN_0000_237e                                    undefined FUN_0000_237e()
       0000:3bf0 e8 06 1a        CALL       FUN_0000_55f9                                    undefined FUN_0000_55f9()
       0000:3bf3 e8 21 1c        CALL       FUN_0000_5817                                    undefined FUN_0000_5817()
       0000:3bf6 e8 12 e8        CALL       FUN_0000_240b                                    undefined FUN_0000_240b()
       0000:3bf9 e8 4e 1a        CALL       FUN_0000_564a                                    undefined FUN_0000_564a()
       0000:3bfc e8 09 1c        CALL       FUN_0000_5808                                    undefined FUN_0000_5808()
       0000:3bff e8 39 29        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:3c02 b4 01           MOV        AH,0x1
       0000:3c04 cd 16           INT        0x16
       0000:3c06 e1 bd           LOOPZ      LAB_0000_3bc5
       0000:3c08 e3 09           JCXZ       LAB_0000_3c13
       0000:3c0a b4 00           MOV        AH,0x0
       0000:3c0c cd 16           INT        0x16
       0000:3c0e 88 66 04        MOV        byte ptr [BP + local_2],AH
       0000:3c11 eb 04           JMP        LAB_0000_3c17
                             LAB_0000_3c13                                   XREF[1]:     0000:3c08(j)  
       0000:3c13 c6 46 04 00     MOV        byte ptr [BP + local_2],0x0
                             LAB_0000_3c17                                   XREF[1]:     0000:3c11(j)  
       0000:3c17 5d              POP        BP
       0000:3c18 59              POP        CX
       0000:3c19 58              POP        AX
       0000:3c1a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3c1b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3c1b                                   XREF[1]:     FUN_0000_3bbd:0000:3be1(c)  
       0000:3c1b 50              PUSH       AX
       0000:3c1c a1 6d c1        MOV        AX,[0xc16d]
       0000:3c1f 2d 15 00        SUB        AX,0x15
       0000:3c22 3d 0f 00        CMP        AX,0xf
       0000:3c25 7d 03           JGE        LAB_0000_3c2a
       0000:3c27 b8 0f 00        MOV        AX,0xf
                             LAB_0000_3c2a                                   XREF[1]:     0000:3c25(j)  
       0000:3c2a 3b 06 4a d2     CMP        AX,word ptr [0xd24a]
       0000:3c2e 7e 03           JLE        LAB_0000_3c33
       0000:3c30 a1 4a d2        MOV        AX,[0xd24a]
                             LAB_0000_3c33                                   XREF[1]:     0000:3c2e(j)  
       0000:3c33 a3 47 d2        MOV        [0xd247],AX
       0000:3c36 58              POP        AX
       0000:3c37 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3c38()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3c38                                   XREF[1]:     FUN_0000_51d6:0000:51d6(c)  
       0000:3c38 84 c0           TEST       AL,AL
       0000:3c3a 75 0b           JNZ        LAB_0000_3c47
                             LAB_0000_3c3c                                   XREF[1]:     0000:3c52(j)  
       0000:3c3c e8 f7 13        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:3c3f e8 27 ff        CALL       FUN_0000_3b69                                    undefined FUN_0000_3b69()
       0000:3c42 e8 10 00        CALL       FUN_0000_3c55                                    undefined FUN_0000_3c55()
       0000:3c45 73 0d           JNC        LAB_0000_3c54
                             LAB_0000_3c47                                   XREF[1]:     0000:3c3a(j)  
       0000:3c47 e8 ec 13        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:3c4a e8 5a 0f        CALL       FUN_0000_4ba7                                    undefined FUN_0000_4ba7()
       0000:3c4d e8 05 00        CALL       FUN_0000_3c55                                    undefined FUN_0000_3c55()
       0000:3c50 73 02           JNC        LAB_0000_3c54
       0000:3c52 eb e8           JMP        LAB_0000_3c3c
                             LAB_0000_3c54                                   XREF[2]:     0000:3c45(j), 0000:3c50(j)  
       0000:3c54 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3c55()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x2]:1  local_2                                 XREF[1]:     0000:3c6e(*)  
                             FUN_0000_3c55                                   XREF[2]:     FUN_0000_3c38:0000:3c42(c), 
                                                                                          FUN_0000_3c38:0000:3c4d(c)  
       0000:3c55 50              PUSH       AX
       0000:3c56 55              PUSH       BP
       0000:3c57 89 e5           MOV        BP,SP
       0000:3c59 b4 00           MOV        AH,0x0
       0000:3c5b 3c 3b           CMP        AL,0x3b
       0000:3c5d 74 0f           JZ         LAB_0000_3c6e
       0000:3c5f fe c4           INC        AH
       0000:3c61 3c 44           CMP        AL,0x44
       0000:3c63 74 09           JZ         LAB_0000_3c6e
       0000:3c65 fe c4           INC        AH
       0000:3c67 3c 39           CMP        AL,0x39
       0000:3c69 74 03           JZ         LAB_0000_3c6e
       0000:3c6b f9              STC
       0000:3c6c eb 04           JMP        LAB_0000_3c72
                             LAB_0000_3c6e                                   XREF[3]:     0000:3c5d(j), 0000:3c63(j), 
                                                                                          0000:3c69(j)  
       0000:3c6e 88 66 02        MOV        byte ptr [BP + local_2],AH
       0000:3c71 f8              CLC
                             LAB_0000_3c72                                   XREF[1]:     0000:3c6c(j)  
       0000:3c72 5d              POP        BP
       0000:3c73 58              POP        AX
       0000:3c74 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3c75()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x2]:1  local_2                                 XREF[1]:     0000:3c83(*)  
                             FUN_0000_3c75                                   XREF[1]:     FUN_0000_51d6:0000:51d9(c)  
       0000:3c75 50              PUSH       AX
       0000:3c76 56              PUSH       SI
       0000:3c77 55              PUSH       BP
       0000:3c78 89 e5           MOV        BP,SP
       0000:3c7a 32 e4           XOR        AH,AH
       0000:3c7c be 49 0c        MOV        SI,0xc49
       0000:3c7f 01 c6           ADD        SI,AX
       0000:3c81 8a 24           MOV        AH,byte ptr [SI]=>LAB_0000_0c48+1
       0000:3c83 88 66 04        MOV        byte ptr [BP + local_2],AH
       0000:3c86 be 1b 01        MOV        SI,0x11b
       0000:3c89 32 e4           XOR        AH,AH
       0000:3c8b d0 e0           SHL        AL,0x1
       0000:3c8d 01 c6           ADD        SI,AX
       0000:3c8f ff 14           CALL       word ptr [SI]
       0000:3c91 5d              POP        BP
       0000:3c92 5e              POP        SI
       0000:3c93 58              POP        AX
       0000:3c94 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3c95()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3c95                                   XREF[1]:     FUN_0000_3cdc:0000:3cf6(c)  
       0000:3c95 e4 61           IN         AL,0x61
       0000:3c97 24 fc           AND        AL,0xfc
       0000:3c99 e6 61           OUT        0x61,AL
       0000:3c9b e8 4a 14        CALL       FUN_0000_50e8                                    undefined FUN_0000_50e8()
       0000:3c9e e8 95 13        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:3ca1 e8 77 28        CALL       FUN_0000_651b                                    undefined FUN_0000_651b()
       0000:3ca4 e8 30 f8        CALL       FUN_0000_34d7                                    undefined FUN_0000_34d7()
       0000:3ca7 e8 7c 12        CALL       FUN_0000_4f26                                    undefined FUN_0000_4f26()
       0000:3caa b8 00 4c        MOV        AX,0x4c00
       0000:3cad cd 21           INT        0x21
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3caf()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3caf                                   XREF[1]:     0000:39ea(c)  
       0000:3caf 52              PUSH       DX
       0000:3cb0 57              PUSH       DI
       0000:3cb1 b2 01           MOV        DL,0x1
       0000:3cb3 bf d7 08        MOV        DI,0x8d7
       0000:3cb6 e8 f3 07        CALL       FUN_0000_44ac                                    undefined FUN_0000_44ac()
       0000:3cb9 e8 7a 13        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:3cbc e8 b3 12        CALL       FUN_0000_4f72                                    undefined FUN_0000_4f72()
       0000:3cbf 5f              POP        DI
       0000:3cc0 5a              POP        DX
       0000:3cc1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3cc2()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3cc2                                   XREF[1]:     FUN_0000_3cdc:0000:3cec(c)  
       0000:3cc2 c6 06 65        MOV        byte ptr [0xd265],0x1
                 d2 01
       0000:3cc7 c3              RET
       0000:3cc8 c6 06 2f        MOV        byte ptr [0xd42f],0x0
                 d4 00
                             LAB_0000_3ccd                                   XREF[1]:     0000:3cd4(j)  
       0000:3ccd 80 3e 2f        CMP        byte ptr [0xd42f],0x1
                 d4 01
       0000:3cd2 74 02           JZ         LAB_0000_3cd6
       0000:3cd4 eb f7           JMP        LAB_0000_3ccd
                             LAB_0000_3cd6                                   XREF[1]:     0000:3cd2(j)  
       0000:3cd6 c6 06 2f        MOV        byte ptr [0xd42f],0x0
                 d4 00
       0000:3cdb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3cdc()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3cdc                                   XREF[1]:     0000:39bd(c)  
       0000:3cdc 50              PUSH       AX
       0000:3cdd b4 01           MOV        AH,0x1
       0000:3cdf cd 16           INT        0x16
       0000:3ce1 74 15           JZ         LAB_0000_3cf8
       0000:3ce3 b4 00           MOV        AH,0x0
       0000:3ce5 cd 16           INT        0x16
       0000:3ce7 80 fc 01        CMP        AH,0x1
       0000:3cea 75 05           JNZ        LAB_0000_3cf1
       0000:3cec e8 d3 ff        CALL       FUN_0000_3cc2                                    undefined FUN_0000_3cc2()
       0000:3cef eb 07           JMP        LAB_0000_3cf8
                             LAB_0000_3cf1                                   XREF[1]:     0000:3cea(j)  
       0000:3cf1 80 fc 44        CMP        AH,0x44
       0000:3cf4 75 02           JNZ        LAB_0000_3cf8
       0000:3cf6 eb 9d           JMP        FUN_0000_3c95                                    undefined FUN_0000_3c95()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_0000_3cf8                                   XREF[3]:     0000:3ce1(j), 0000:3cef(j), 
                                                                                          0000:3cf4(j)  
       0000:3cf8 58              POP        AX
       0000:3cf9 c3              RET
       0000:3cfa 31 00           XOR        word ptr [BX + SI],AX
       0000:3cfc e2 7e           LOOP       LAB_0000_3d7b+1
       0000:3cfe 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3d00()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[1]:     0000:3d16(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:3d6e(*)  
                             FUN_0000_3d00                                   XREF[3]:     FUN_0000_5fc3:0000:5fcf(c), 
                                                                                          FUN_0000_5fd6:0000:5fe2(c), 
                                                                                          FUN_0000_5fe9:0000:5ff5(c)  
       0000:3d00 50              PUSH       AX
       0000:3d01 53              PUSH       BX
       0000:3d02 51              PUSH       CX
       0000:3d03 52              PUSH       DX
       0000:3d04 56              PUSH       SI
       0000:3d05 57              PUSH       DI
       0000:3d06 55              PUSH       BP
       0000:3d07 89 e5           MOV        BP,SP
       0000:3d09 8b c3           MOV        AX,BX
       0000:3d0b d1 e3           SHL        BX,0x1
       0000:3d0d d1 e3           SHL        BX,0x1
       0000:3d0f 01 c3           ADD        BX,AX
       0000:3d11 b9 04 00        MOV        CX,0x4
       0000:3d14 d3 e3           SHL        BX,CL
       0000:3d16 03 5e 0c        ADD        BX,word ptr [BP + local_2]
       0000:3d19 ba ce 03        MOV        DX,0x3ce
       0000:3d1c b0 05           MOV        AL,0x5
       0000:3d1e ee              OUT        DX,AL
       0000:3d1f 42              INC        DX
       0000:3d20 b0 11           MOV        AL,0x11
       0000:3d22 ee              OUT        DX,AL
       0000:3d23 c6 06 46        MOV        byte ptr [0xd246],0x1
                 d2 01
                             LAB_0000_3d28                                   XREF[1]:     0000:3d92(j)  
       0000:3d28 8a 05           MOV        AL,byte ptr [DI]
       0000:3d2a 47              INC        DI
       0000:3d2b 32 e4           XOR        AH,AH
       0000:3d2d 3c ff           CMP        AL,0xff
       0000:3d2f 74 63           JZ         LAB_0000_3d94
       0000:3d31 80 3d ff        CMP        byte ptr [DI],0xff
       0000:3d34 75 05           JNZ        LAB_0000_3d3b
       0000:3d36 c6 06 46        MOV        byte ptr [0xd246],0x0
                 d2 00
                             LAB_0000_3d3b                                   XREF[1]:     0000:3d34(j)  
       0000:3d3b 3c 00           CMP        AL,0x0
       0000:3d3d 74 07           JZ         LAB_0000_3d46
       0000:3d3f c6 06 46        MOV        byte ptr [0xd246],0x0
                 d2 00
       0000:3d44 eb 0a           JMP        LAB_0000_3d50
                             LAB_0000_3d46                                   XREF[1]:     0000:3d3d(j)  
       0000:3d46 80 3e 46        CMP        byte ptr [0xd246],0x1
                 d2 01
       0000:3d4b 75 03           JNZ        LAB_0000_3d50
       0000:3d4d b8 ff ff        MOV        AX,0xffff
                             LAB_0000_3d50                                   XREF[2]:     0000:3d44(j), 0000:3d4b(j)  
       0000:3d50 be 0c dc        MOV        SI,0xdc0c
       0000:3d53 89 c1           MOV        CX,AX
       0000:3d55 d1 e0           SHL        AX,0x1
       0000:3d57 03 c1           ADD        AX,CX
       0000:3d59 d1 e0           SHL        AX,0x1
       0000:3d5b d1 e0           SHL        AX,0x1
       0000:3d5d 01 c6           ADD        SI,AX
       0000:3d5f b9 0c 00        MOV        CX,0xc
                             LAB_0000_3d62                                   XREF[1]:     0000:3d6c(j)  
       0000:3d62 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:3d65 46              INC        SI
       0000:3d66 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:3d69 83 c3 50        ADD        BX,0x50
       0000:3d6c e2 f4           LOOP       LAB_0000_3d62
       0000:3d6e f6 46 06 ff     TEST       byte ptr [BP + local_8],0xff
       0000:3d72 74 1a           JZ         LAB_0000_3d8e
       0000:3d74 83 ee 0c        SUB        SI,0xc
       0000:3d77 81 c3 40 6a     ADD        BX,0x6a40
                             LAB_0000_3d7b+1                                 XREF[0,1]:   0000:3cfc(j)  
       0000:3d7b b9 0c 00        MOV        CX,0xc
                             LAB_0000_3d7e                                   XREF[1]:     0000:3d88(j)  
       0000:3d7e 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:3d81 46              INC        SI
       0000:3d82 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:3d85 83 c3 50        ADD        BX,0x50
       0000:3d88 e2 f4           LOOP       LAB_0000_3d7e
       0000:3d8a 81 eb 00 6e     SUB        BX,0x6e00
                             LAB_0000_3d8e                                   XREF[1]:     0000:3d72(j)  
       0000:3d8e 81 eb bf 03     SUB        BX,0x3bf
       0000:3d92 eb 94           JMP        LAB_0000_3d28
                             LAB_0000_3d94                                   XREF[1]:     0000:3d2f(j)  
       0000:3d94 ba ce 03        MOV        DX,0x3ce
       0000:3d97 b0 05           MOV        AL,0x5
       0000:3d99 ee              OUT        DX,AL
       0000:3d9a 42              INC        DX
       0000:3d9b b0 10           MOV        AL,0x10
       0000:3d9d ee              OUT        DX,AL
       0000:3d9e 5d              POP        BP
       0000:3d9f 5f              POP        DI
       0000:3da0 5e              POP        SI
       0000:3da1 5a              POP        DX
       0000:3da2 59              POP        CX
       0000:3da3 5b              POP        BX
       0000:3da4 58              POP        AX
       0000:3da5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3da6()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[2]:     0000:3dd4(*), 
                                                                                                   0000:3de4(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:3dc0(*)  
             undefined2        Stack[-0xc]:2  local_c                                 XREF[1]:     0000:3e30(*)  
                             FUN_0000_3da6                                   XREF[8]:     FUN_0000_3f08:0000:3f7a(c), 
                                                                                          FUN_0000_3f08:0000:3f8d(c), 
                                                                                          FUN_0000_5e83:0000:5ea5(c), 
                                                                                          FUN_0000_5e83:0000:5ec7(c), 
                                                                                          FUN_0000_6299:0000:62e2(c), 
                                                                                          FUN_0000_6299:0000:62eb(c), 
                                                                                          FUN_0000_6299:0000:62f7(c), 
                                                                                          FUN_0000_6300:0000:6329(c)  
       0000:3da6 50              PUSH       AX
       0000:3da7 53              PUSH       BX
       0000:3da8 51              PUSH       CX
       0000:3da9 52              PUSH       DX
       0000:3daa 56              PUSH       SI
       0000:3dab 57              PUSH       DI
       0000:3dac 55              PUSH       BP
       0000:3dad 89 e5           MOV        BP,SP
       0000:3daf ba ce 03        MOV        DX,0x3ce
       0000:3db2 b0 01           MOV        AL,0x1
       0000:3db4 ee              OUT        DX,AL
       0000:3db5 42              INC        DX
       0000:3db6 b0 0f           MOV        AL,0xf
       0000:3db8 ee              OUT        DX,AL
       0000:3db9 ba ce 03        MOV        DX,0x3ce
       0000:3dbc 32 c0           XOR        AL,AL
       0000:3dbe ee              OUT        DX,AL
       0000:3dbf 42              INC        DX
       0000:3dc0 8a 46 06        MOV        AL,byte ptr [BP + local_8]
       0000:3dc3 ee              OUT        DX,AL
       0000:3dc4 8b c3           MOV        AX,BX
       0000:3dc6 d1 e3           SHL        BX,0x1
       0000:3dc8 d1 e3           SHL        BX,0x1
       0000:3dca 01 c3           ADD        BX,AX
       0000:3dcc d1 e3           SHL        BX,0x1
       0000:3dce d1 e3           SHL        BX,0x1
       0000:3dd0 d1 e3           SHL        BX,0x1
       0000:3dd2 d1 e3           SHL        BX,0x1
       0000:3dd4 8b 46 0c        MOV        AX,word ptr [BP + local_2]
       0000:3dd7 d1 e8           SHR        AX,0x1
       0000:3dd9 d1 e8           SHR        AX,0x1
       0000:3ddb d1 e8           SHR        AX,0x1
       0000:3ddd 01 c3           ADD        BX,AX
       0000:3ddf 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:3de3 53              PUSH       BX
       0000:3de4 8b 4e 0c        MOV        CX,word ptr [BP + local_2]
       0000:3de7 80 e1 07        AND        CL,0x7
                             LAB_0000_3dea                                   XREF[1]:     0000:3e23(j)  
       0000:3dea 8a 05           MOV        AL,byte ptr [DI]
       0000:3dec 47              INC        DI
       0000:3ded 84 c0           TEST       AL,AL
       0000:3def 74 34           JZ         LAB_0000_3e25
       0000:3df1 2c 20           SUB        AL,0x20
       0000:3df3 32 e4           XOR        AH,AH
       0000:3df5 d1 e0           SHL        AX,0x1
       0000:3df7 d1 e0           SHL        AX,0x1
       0000:3df9 d1 e0           SHL        AX,0x1
       0000:3dfb 05 64 c3        ADD        AX,0xc364
       0000:3dfe 8b f0           MOV        SI,AX
       0000:3e00 b4 07           MOV        AH,0x7
                             LAB_0000_3e02                                   XREF[1]:     0000:3e1d(j)  
       0000:3e02 8a 2c           MOV        CH,byte ptr [SI]
       0000:3e04 d2 ed           SHR        CH,CL
       0000:3e06 ba ce 03        MOV        DX,0x3ce
       0000:3e09 b0 08           MOV        AL,0x8
       0000:3e0b ee              OUT        DX,AL
       0000:3e0c 42              INC        DX
       0000:3e0d 88 e8           MOV        AL,CH
       0000:3e0f ee              OUT        DX,AL
       0000:3e10 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:3e13 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:3e17 83 c3 50        ADD        BX,0x50
       0000:3e1a 46              INC        SI
       0000:3e1b fe cc           DEC        AH
       0000:3e1d 75 e3           JNZ        LAB_0000_3e02
       0000:3e1f 81 eb 2f 02     SUB        BX,0x22f
       0000:3e23 eb c5           JMP        LAB_0000_3dea
                             LAB_0000_3e25                                   XREF[1]:     0000:3def(j)  
       0000:3e25 5b              POP        BX
       0000:3e26 84 c9           TEST       CL,CL
       0000:3e28 74 44           JZ         LAB_0000_3e6e
       0000:3e2a 43              INC        BX
       0000:3e2b 80 e9 08        SUB        CL,0x8
       0000:3e2e f6 d9           NEG        CL
       0000:3e30 8b 7e 02        MOV        DI,word ptr [BP + local_c]
                             LAB_0000_3e33                                   XREF[1]:     0000:3e6c(j)  
       0000:3e33 8a 05           MOV        AL,byte ptr [DI]
       0000:3e35 47              INC        DI
       0000:3e36 84 c0           TEST       AL,AL
       0000:3e38 74 34           JZ         LAB_0000_3e6e
       0000:3e3a 2c 20           SUB        AL,0x20
       0000:3e3c 32 e4           XOR        AH,AH
       0000:3e3e d1 e0           SHL        AX,0x1
       0000:3e40 d1 e0           SHL        AX,0x1
       0000:3e42 d1 e0           SHL        AX,0x1
       0000:3e44 05 64 c3        ADD        AX,0xc364
       0000:3e47 8b f0           MOV        SI,AX
       0000:3e49 b4 07           MOV        AH,0x7
                             LAB_0000_3e4b                                   XREF[1]:     0000:3e66(j)  
       0000:3e4b 8a 2c           MOV        CH,byte ptr [SI]
       0000:3e4d d2 e5           SHL        CH,CL
       0000:3e4f ba ce 03        MOV        DX,0x3ce
       0000:3e52 b0 08           MOV        AL,0x8
       0000:3e54 ee              OUT        DX,AL
       0000:3e55 42              INC        DX
       0000:3e56 88 e8           MOV        AL,CH
       0000:3e58 ee              OUT        DX,AL
       0000:3e59 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:3e5c 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:3e60 83 c3 50        ADD        BX,0x50
       0000:3e63 46              INC        SI
       0000:3e64 fe cc           DEC        AH
       0000:3e66 75 e3           JNZ        LAB_0000_3e4b
       0000:3e68 81 eb 2f 02     SUB        BX,0x22f
       0000:3e6c eb c5           JMP        LAB_0000_3e33
                             LAB_0000_3e6e                                   XREF[2]:     0000:3e28(j), 0000:3e38(j)  
       0000:3e6e ba ce 03        MOV        DX,0x3ce
       0000:3e71 b0 08           MOV        AL,0x8
       0000:3e73 ee              OUT        DX,AL
       0000:3e74 42              INC        DX
       0000:3e75 b0 ff           MOV        AL,0xff
       0000:3e77 ee              OUT        DX,AL
       0000:3e78 ba ce 03        MOV        DX,0x3ce
       0000:3e7b b0 01           MOV        AL,0x1
       0000:3e7d ee              OUT        DX,AL
       0000:3e7e 42              INC        DX
       0000:3e7f b0 00           MOV        AL,0x0
       0000:3e81 ee              OUT        DX,AL
       0000:3e82 5d              POP        BP
       0000:3e83 5f              POP        DI
       0000:3e84 5e              POP        SI
       0000:3e85 5a              POP        DX
       0000:3e86 59              POP        CX
       0000:3e87 5b              POP        BX
       0000:3e88 58              POP        AX
       0000:3e89 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3e8a()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0xe]:2  local_e                                 XREF[4]:     0000:3e94(*), 
                                                                                                   0000:3e97(*), 
                                                                                                   0000:3ea5(*), 
                                                                                                   0000:3eb1(*)  
             undefined2        Stack[-0x10]:2 local_10                                XREF[1]:     0000:3eb4(*)  
                             FUN_0000_3e8a                                   XREF[20]:    FUN_0000_3f9a:0000:3fcb(c), 
                                                                                          FUN_0000_3fde:0000:4057(c), 
                                                                                          FUN_0000_44ac:0000:44eb(c), 
                                                                                          FUN_0000_44ac:0000:4501(c), 
                                                                                          FUN_0000_48c0:0000:493c(c), 
                                                                                          FUN_0000_4a53:0000:4a6b(c), 
                                                                                          FUN_0000_4a53:0000:4a7c(c), 
                                                                                          FUN_0000_4beb:0000:4c08(c), 
                                                                                          FUN_0000_4beb:0000:4c25(c), 
                                                                                          FUN_0000_4beb:0000:4c31(c), 
                                                                                          FUN_0000_4beb:0000:4c52(c), 
                                                                                          FUN_0000_4beb:0000:4c6f(c), 
                                                                                          FUN_0000_4beb:0000:4c7b(c), 
                                                                                          FUN_0000_4c87:0000:4cb9(c), 
                                                                                          FUN_0000_4c87:0000:4cc5(c), 
                                                                                          FUN_0000_4c87:0000:4cdd(c), 
                                                                                          FUN_0000_4cf2:0000:4d08(c), 
                                                                                          FUN_0000_4cf2:0000:4d14(c), 
                                                                                          FUN_0000_4cf2:0000:4d2c(c), 
                                                                                          FUN_0000_4cf2:0000:4d6b(c), [more]
       0000:3e8a 50              PUSH       AX
       0000:3e8b 53              PUSH       BX
       0000:3e8c 51              PUSH       CX
       0000:3e8d 52              PUSH       DX
       0000:3e8e 57              PUSH       DI
       0000:3e8f 55              PUSH       BP
       0000:3e90 89 e5           MOV        BP,SP
       0000:3e92 50              PUSH       AX
       0000:3e93 53              PUSH       BX
       0000:3e94 ff 4e fe        DEC        word ptr [BP + local_e]
                             LAB_0000_3e97                                   XREF[2]:     0000:3ead(j), 0000:3ebc(j)  
       0000:3e97 ff 46 fe        INC        word ptr [BP + local_e]
       0000:3e9a 8a 05           MOV        AL,byte ptr [DI]
       0000:3e9c 47              INC        DI
       0000:3e9d 84 c0           TEST       AL,AL
       0000:3e9f 74 1d           JZ         LAB_0000_3ebe
       0000:3ea1 3c 80           CMP        AL,0x80
       0000:3ea3 72 0a           JC         LAB_0000_3eaf
       0000:3ea5 ff 4e fe        DEC        word ptr [BP + local_e]
       0000:3ea8 2c 80           SUB        AL,0x80
       0000:3eaa a2 cc ce        MOV        [0xcecc],AL
       0000:3ead eb e8           JMP        LAB_0000_3e97
                             LAB_0000_3eaf                                   XREF[1]:     0000:3ea3(j)  
       0000:3eaf 8a d0           MOV        DL,AL
       0000:3eb1 8b 46 fe        MOV        AX,word ptr [BP + local_e]
       0000:3eb4 8b 5e fc        MOV        BX,word ptr [BP + local_10]
       0000:3eb7 b1 00           MOV        CL,0x0
       0000:3eb9 e8 5a 06        CALL       FUN_0000_4516                                    undefined FUN_0000_4516()
       0000:3ebc eb d9           JMP        LAB_0000_3e97
                             LAB_0000_3ebe                                   XREF[1]:     0000:3e9f(j)  
       0000:3ebe 5b              POP        BX
       0000:3ebf 58              POP        AX
       0000:3ec0 5d              POP        BP
       0000:3ec1 5f              POP        DI
       0000:3ec2 5a              POP        DX
       0000:3ec3 59              POP        CX
       0000:3ec4 5b              POP        BX
       0000:3ec5 58              POP        AX
       0000:3ec6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3ec7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3ec7                                   XREF[2]:     FUN_0000_4a53:0000:4a94(c), 
                                                                                          FUN_0000_4a53:0000:4aac(c)  
       0000:3ec7 50              PUSH       AX
       0000:3ec8 51              PUSH       CX
       0000:3ec9 52              PUSH       DX
       0000:3eca 57              PUSH       DI
       0000:3ecb c6 06 46        MOV        byte ptr [0xd246],0x1
                 d2 01
       0000:3ed0 48              DEC        AX
                             LAB_0000_3ed1                                   XREF[1]:     0000:3f01(j)  
       0000:3ed1 40              INC        AX
       0000:3ed2 8a 15           MOV        DL,byte ptr [DI]
       0000:3ed4 47              INC        DI
       0000:3ed5 80 fa ff        CMP        DL,0xff
       0000:3ed8 74 29           JZ         LAB_0000_3f03
       0000:3eda 80 3d ff        CMP        byte ptr [DI],0xff
       0000:3edd 75 05           JNZ        LAB_0000_3ee4
       0000:3edf c6 06 46        MOV        byte ptr [0xd246],0x0
                 d2 00
                             LAB_0000_3ee4                                   XREF[1]:     0000:3edd(j)  
       0000:3ee4 80 fa 00        CMP        DL,0x0
       0000:3ee7 74 07           JZ         LAB_0000_3ef0
       0000:3ee9 c6 06 46        MOV        byte ptr [0xd246],0x0
                 d2 00
       0000:3eee eb 09           JMP        LAB_0000_3ef9
                             LAB_0000_3ef0                                   XREF[1]:     0000:3ee7(j)  
       0000:3ef0 80 3e 46        CMP        byte ptr [0xd246],0x1
                 d2 01
       0000:3ef5 75 02           JNZ        LAB_0000_3ef9
       0000:3ef7 b2 f0           MOV        DL,0xf0
                             LAB_0000_3ef9                                   XREF[2]:     0000:3eee(j), 0000:3ef5(j)  
       0000:3ef9 80 c2 30        ADD        DL,0x30
       0000:3efc b1 00           MOV        CL,0x0
       0000:3efe e8 15 06        CALL       FUN_0000_4516                                    undefined FUN_0000_4516()
       0000:3f01 eb ce           JMP        LAB_0000_3ed1
                             LAB_0000_3f03                                   XREF[1]:     0000:3ed8(j)  
       0000:3f03 5f              POP        DI
       0000:3f04 5a              POP        DX
       0000:3f05 59              POP        CX
       0000:3f06 58              POP        AX
       0000:3f07 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3f08()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3f08                                   XREF[1]:     FUN_0000_37db:0000:3807(c)  
       0000:3f08 50              PUSH       AX
       0000:3f09 53              PUSH       BX
       0000:3f0a 51              PUSH       CX
       0000:3f0b 52              PUSH       DX
       0000:3f0c 56              PUSH       SI
       0000:3f0d 57              PUSH       DI
       0000:3f0e b8 00 00        MOV        AX,0x0
       0000:3f11 bb 00 00        MOV        BX,0x0
       0000:3f14 b9 df 01        MOV        CX,0x1df
       0000:3f17 ba 5d 01        MOV        DX,0x15d
       0000:3f1a e8 d5 03        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:3f1d b8 0f 00        MOV        AX,0xf
       0000:3f20 bb 0b 00        MOV        BX,0xb
       0000:3f23 b9 cf 01        MOV        CX,0x1cf
       0000:3f26 ba 51 01        MOV        DX,0x151
       0000:3f29 e8 46 04        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:3f2c b8 f0 01        MOV        AX,0x1f0
       0000:3f2f bb 00 00        MOV        BX,0x0
       0000:3f32 b9 7f 02        MOV        CX,0x27f
       0000:3f35 ba 5d 01        MOV        DX,0x15d
       0000:3f38 e8 b7 03        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:3f3b e8 fe 08        CALL       FUN_0000_483c                                    undefined FUN_0000_483c()
       0000:3f3e be af 0a        MOV        SI,0xaaf
                             LAB_0000_3f41                                   XREF[1]:     0000:3f66(j)  
       0000:3f41 8b 04           MOV        AX,word ptr [SI]
       0000:3f43 3d ff ff        CMP        AX,0xffff
       0000:3f46 74 20           JZ         LAB_0000_3f68
       0000:3f48 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:3f4b 8b 4c 04        MOV        CX,word ptr [SI + 0x4]
       0000:3f4e 8b 54 06        MOV        DX,word ptr [SI + 0x6]
       0000:3f51 e8 9e 03        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:3f54 05 11 00        ADD        AX,0x11
       0000:3f57 83 c3 0d        ADD        BX,0xd
       0000:3f5a 83 e9 11        SUB        CX,0x11
       0000:3f5d 83 ea 0d        SUB        DX,0xd
       0000:3f60 e8 0f 04        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:3f63 83 c6 08        ADD        SI,0x8
       0000:3f66 eb d9           JMP        LAB_0000_3f41
                             LAB_0000_3f68                                   XREF[1]:     0000:3f46(j)  
       0000:3f68 be e9 0a        MOV        SI,0xae9
       0000:3f6b b2 00           MOV        DL,0x0
                             LAB_0000_3f6d                                   XREF[1]:     0000:3f80(j)  
       0000:3f6d 8b 04           MOV        AX,word ptr [SI]
       0000:3f6f 3d ff ff        CMP        AX,0xffff
       0000:3f72 74 0e           JZ         LAB_0000_3f82
       0000:3f74 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:3f77 8b 7c 04        MOV        DI,word ptr [SI + 0x4]
       0000:3f7a e8 29 fe        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:3f7d 83 c6 06        ADD        SI,0x6
       0000:3f80 eb eb           JMP        LAB_0000_3f6d
                             LAB_0000_3f82                                   XREF[1]:     0000:3f72(j)  
       0000:3f82 b8 25 02        MOV        AX,0x225
       0000:3f85 bb c4 00        MOV        BX,0xc4
       0000:3f88 bf e3 0a        MOV        DI,0xae3
       0000:3f8b b2 07           MOV        DL,0x7
       0000:3f8d e8 16 fe        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:3f90 e8 07 00        CALL       FUN_0000_3f9a                                    undefined FUN_0000_3f9a()
       0000:3f93 5f              POP        DI
       0000:3f94 5e              POP        SI
       0000:3f95 5a              POP        DX
       0000:3f96 59              POP        CX
       0000:3f97 5b              POP        BX
       0000:3f98 58              POP        AX
       0000:3f99 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3f9a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3f9a                                   XREF[2]:     FUN_0000_3f08:0000:3f90(c), 
                                                                                          FUN_0000_3fde:0000:4063(c)  
       0000:3f9a 50              PUSH       AX
       0000:3f9b 53              PUSH       BX
       0000:3f9c 51              PUSH       CX
       0000:3f9d 52              PUSH       DX
       0000:3f9e 56              PUSH       SI
       0000:3f9f 57              PUSH       DI
       0000:3fa0 be 03 0b        MOV        SI,0xb03
                             LAB_0000_3fa3                                   XREF[1]:     0000:3fb9(j)  
       0000:3fa3 8b 04           MOV        AX,word ptr [SI]
       0000:3fa5 3d ff ff        CMP        AX,0xffff
       0000:3fa8 74 11           JZ         LAB_0000_3fbb
       0000:3faa 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:3fad 8b 4c 04        MOV        CX,word ptr [SI + 0x4]
       0000:3fb0 8b 54 06        MOV        DX,word ptr [SI + 0x6]
       0000:3fb3 e8 3c 03        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:3fb6 83 c6 08        ADD        SI,0x8
       0000:3fb9 eb e8           JMP        LAB_0000_3fa3
                             LAB_0000_3fbb                                   XREF[1]:     0000:3fa8(j)  
       0000:3fbb bf 15 0b        MOV        DI,0xb15
                             LAB_0000_3fbe                                   XREF[1]:     0000:3fd5(j)  
       0000:3fbe 8b 05           MOV        AX,word ptr [DI]
       0000:3fc0 3d ff ff        CMP        AX,0xffff
       0000:3fc3 74 12           JZ         LAB_0000_3fd7
       0000:3fc5 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       0000:3fc8 83 c7 04        ADD        DI,0x4
       0000:3fcb e8 bc fe        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
                             LAB_0000_3fce                                   XREF[1]:     0000:3fd3(j)  
       0000:3fce 47              INC        DI
       0000:3fcf f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:3fd3 75 f9           JNZ        LAB_0000_3fce
       0000:3fd5 eb e7           JMP        LAB_0000_3fbe
                             LAB_0000_3fd7                                   XREF[1]:     0000:3fc3(j)  
       0000:3fd7 5f              POP        DI
       0000:3fd8 5e              POP        SI
       0000:3fd9 5a              POP        DX
       0000:3fda 59              POP        CX
       0000:3fdb 5b              POP        BX
       0000:3fdc 58              POP        AX
       0000:3fdd c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_3fde()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_3fde                                   XREF[1]:     FUN_0000_3b69:0000:3b74(c)  
       0000:3fde 50              PUSH       AX
       0000:3fdf 53              PUSH       BX
       0000:3fe0 51              PUSH       CX
       0000:3fe1 52              PUSH       DX
       0000:3fe2 56              PUSH       SI
       0000:3fe3 57              PUSH       DI
       0000:3fe4 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:3fe9 75 05           JNZ        LAB_0000_3ff0
       0000:3feb e8 ae 26        CALL       FUN_0000_669c                                    undefined FUN_0000_669c()
       0000:3fee eb 03           JMP        LAB_0000_3ff3
                             LAB_0000_3ff0                                   XREF[1]:     0000:3fe9(j)  
       0000:3ff0 e8 ba 26        CALL       FUN_0000_66ad                                    undefined FUN_0000_66ad()
                             LAB_0000_3ff3                                   XREF[1]:     0000:3fee(j)  
       0000:3ff3 b8 00 00        MOV        AX,0x0
       0000:3ff6 bb 00 00        MOV        BX,0x0
       0000:3ff9 b9 df 01        MOV        CX,0x1df
       0000:3ffc ba 5d 01        MOV        DX,0x15d
       0000:3fff e8 f0 02        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4002 b8 0f 00        MOV        AX,0xf
       0000:4005 bb 0b 00        MOV        BX,0xb
       0000:4008 b9 cf 01        MOV        CX,0x1cf
       0000:400b ba 51 01        MOV        DX,0x151
       0000:400e e8 61 03        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:4011 b8 f0 01        MOV        AX,0x1f0
       0000:4014 bb 00 00        MOV        BX,0x0
       0000:4017 b9 7f 02        MOV        CX,0x27f
       0000:401a ba 5d 01        MOV        DX,0x15d
       0000:401d e8 d2 02        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4020 e8 19 08        CALL       FUN_0000_483c                                    undefined FUN_0000_483c()
       0000:4023 be c4 09        MOV        SI,0x9c4
                             LAB_0000_4026                                   XREF[1]:     0000:403c(j)  
       0000:4026 8b 04           MOV        AX,word ptr [SI]
       0000:4028 3d ff ff        CMP        AX,0xffff
       0000:402b 74 11           JZ         LAB_0000_403e
       0000:402d 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:4030 8b 4c 04        MOV        CX,word ptr [SI + 0x4]
       0000:4033 8b 54 06        MOV        DX,word ptr [SI + 0x6]
       0000:4036 e8 b9 02        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4039 83 c6 08        ADD        SI,0x8
       0000:403c eb e8           JMP        LAB_0000_4026
                             LAB_0000_403e                                   XREF[1]:     0000:402b(j)  
       0000:403e c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4043 be de 09        MOV        SI,0x9de
                             LAB_0000_4046                                   XREF[1]:     0000:4061(j)  
       0000:4046 8b 04           MOV        AX,word ptr [SI]
       0000:4048 83 c6 02        ADD        SI,0x2
       0000:404b 3d ff ff        CMP        AX,0xffff
       0000:404e 74 13           JZ         LAB_0000_4063
       0000:4050 8b 1c           MOV        BX,word ptr [SI]
       0000:4052 83 c6 02        ADD        SI,0x2
       0000:4055 89 f7           MOV        DI,SI
       0000:4057 e8 30 fe        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
                             LAB_0000_405a                                   XREF[1]:     0000:405f(j)  
       0000:405a 46              INC        SI
       0000:405b f6 44 ff ff     TEST       byte ptr [SI + -0x1],0xff
       0000:405f 75 f9           JNZ        LAB_0000_405a
       0000:4061 eb e3           JMP        LAB_0000_4046
                             LAB_0000_4063                                   XREF[1]:     0000:404e(j)  
       0000:4063 e8 34 ff        CALL       FUN_0000_3f9a                                    undefined FUN_0000_3f9a()
       0000:4066 5f              POP        DI
       0000:4067 5e              POP        SI
       0000:4068 5a              POP        DX
       0000:4069 59              POP        CX
       0000:406a 5b              POP        BX
       0000:406b 58              POP        AX
       0000:406c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_406d()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_406d                                   XREF[2]:     FUN_0000_37db:0000:380a(c), 
                                                                                          FUN_0000_3b69:0000:3b77(c)  
       0000:406d 50              PUSH       AX
       0000:406e 53              PUSH       BX
       0000:406f 51              PUSH       CX
       0000:4070 bb 00 81        MOV        BX,0x8100
       0000:4073 32 e4           XOR        AH,AH
                             LAB_0000_4075                                   XREF[1]:     0000:4088(j)  
       0000:4075 32 c0           XOR        AL,AL
                             LAB_0000_4077                                   XREF[1]:     0000:4081(j)  
       0000:4077 8a 0f           MOV        CL,byte ptr [BX]
       0000:4079 43              INC        BX
       0000:407a e8 a2 19        CALL       FUN_0000_5a1f                                    undefined FUN_0000_5a1f()
       0000:407d fe c0           INC        AL
       0000:407f 3c 12           CMP        AL,0x12
       0000:4081 76 f4           JBE        LAB_0000_4077
       0000:4083 fe c4           INC        AH
       0000:4085 80 fc 0d        CMP        AH,0xd
       0000:4088 76 eb           JBE        LAB_0000_4075
       0000:408a 59              POP        CX
       0000:408b 5b              POP        BX
       0000:408c 58              POP        AX
       0000:408d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16near FUN_0000_408e()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_408e                                   XREF[2]:     FUN_0000_42f2:0000:4314(c), 
                                                                                          FUN_0000_4372:0000:4384(c)  
       0000:408e 50              PUSH       AX
       0000:408f 53              PUSH       BX
       0000:4090 51              PUSH       CX
       0000:4091 52              PUSH       DX
       0000:4092 55              PUSH       BP
       0000:4093 89 e5           MOV        BP,SP
       0000:4095 83 c5 0a        ADD        BP,0xa
       0000:4098 ba ce 03        MOV        DX,0x3ce
       0000:409b b0 01           MOV        AL,0x1
       0000:409d ee              OUT        DX,AL
       0000:409e 42              INC        DX
       0000:409f b0 0f           MOV        AL,0xf
       0000:40a1 ee              OUT        DX,AL
       0000:40a2 ba ce 03        MOV        DX,0x3ce
       0000:40a5 32 c0           XOR        AL,AL
       0000:40a7 ee              OUT        DX,AL
       0000:40a8 42              INC        DX
       0000:40a9 8a 46 0a        MOV        AL,byte ptr [BP + Stack[0xa]]
       0000:40ac ee              OUT        DX,AL
       0000:40ad 8b 46 08        MOV        AX,word ptr [BP + Stack[0x8]]
       0000:40b0 2b 46 04        SUB        AX,word ptr [BP + Stack[0x4]]
       0000:40b3 40              INC        AX
       0000:40b4 a3 b2 d3        MOV        [0xd3b2],AX
       0000:40b7 8b 46 04        MOV        AX,word ptr [BP + Stack[0x4]]
       0000:40ba 8b d8           MOV        BX,AX
       0000:40bc d1 e0           SHL        AX,0x1
       0000:40be d1 e0           SHL        AX,0x1
       0000:40c0 01 d8           ADD        AX,BX
       0000:40c2 d1 e0           SHL        AX,0x1
       0000:40c4 d1 e0           SHL        AX,0x1
       0000:40c6 d1 e0           SHL        AX,0x1
       0000:40c8 d1 e0           SHL        AX,0x1
       0000:40ca a3 ae d3        MOV        [0xd3ae],AX
       0000:40cd 8b 46 02        MOV        AX,word ptr [BP + Stack[0x2]]
       0000:40d0 d1 e8           SHR        AX,0x1
       0000:40d2 d1 e8           SHR        AX,0x1
       0000:40d4 d1 e8           SHR        AX,0x1
       0000:40d6 40              INC        AX
       0000:40d7 8b 4e 06        MOV        CX,word ptr [BP + Stack[0x6]]
       0000:40da d1 e9           SHR        CX,0x1
       0000:40dc d1 e9           SHR        CX,0x1
       0000:40de d1 e9           SHR        CX,0x1
       0000:40e0 49              DEC        CX
       0000:40e1 2b c8           SUB        CX,AX
       0000:40e3 41              INC        CX
       0000:40e4 89 0e b0 d3     MOV        word ptr [0xd3b0],CX
       0000:40e8 8b d8           MOV        BX,AX
       0000:40ea 03 1e ae d3     ADD        BX,word ptr [0xd3ae]
       0000:40ee 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:40f2 a1 b2 d3        MOV        AX,[0xd3b2]
                             LAB_0000_40f5                                   XREF[1]:     0000:4108(j)  
       0000:40f5 8b 0e b0 d3     MOV        CX,word ptr [0xd3b0]
                             LAB_0000_40f9                                   XREF[1]:     0000:40fe(j)  
       0000:40f9 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:40fd 43              INC        BX
       0000:40fe e2 f9           LOOP       LAB_0000_40f9
       0000:4100 2b 1e b0 d3     SUB        BX,word ptr [0xd3b0]
       0000:4104 83 c3 50        ADD        BX,0x50
       0000:4107 48              DEC        AX
       0000:4108 75 eb           JNZ        LAB_0000_40f5
       0000:410a b0 ff           MOV        AL,0xff
       0000:410c 8b 4e 02        MOV        CX,word ptr [BP + Stack[0x2]]
       0000:410f 80 e1 07        AND        CL,0x7
       0000:4112 d2 e8           SHR        AL,CL
       0000:4114 8a d8           MOV        BL,AL
       0000:4116 ba ce 03        MOV        DX,0x3ce
       0000:4119 b0 08           MOV        AL,0x8
       0000:411b ee              OUT        DX,AL
       0000:411c 42              INC        DX
       0000:411d 8a c3           MOV        AL,BL
       0000:411f ee              OUT        DX,AL
       0000:4120 8b 46 02        MOV        AX,word ptr [BP + Stack[0x2]]
       0000:4123 d1 e8           SHR        AX,0x1
       0000:4125 d1 e8           SHR        AX,0x1
       0000:4127 d1 e8           SHR        AX,0x1
       0000:4129 8b 1e ae d3     MOV        BX,word ptr [0xd3ae]
       0000:412d 01 c3           ADD        BX,AX
       0000:412f 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:4133 8b 0e b2 d3     MOV        CX,word ptr [0xd3b2]
                             LAB_0000_4137                                   XREF[1]:     0000:4141(j)  
       0000:4137 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:413a 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:413e 83 c3 50        ADD        BX,0x50
       0000:4141 e2 f4           LOOP       LAB_0000_4137
       0000:4143 b0 ff           MOV        AL,0xff
       0000:4145 8b 4e 06        MOV        CX,word ptr [BP + Stack[0x6]]
       0000:4148 80 e1 07        AND        CL,0x7
       0000:414b d2 e8           SHR        AL,CL
       0000:414d d0 e8           SHR        AL,0x1
       0000:414f f6 d0           NOT        AL
       0000:4151 8a d8           MOV        BL,AL
       0000:4153 ba ce 03        MOV        DX,0x3ce
       0000:4156 b0 08           MOV        AL,0x8
       0000:4158 ee              OUT        DX,AL
       0000:4159 42              INC        DX
       0000:415a 8a c3           MOV        AL,BL
       0000:415c ee              OUT        DX,AL
       0000:415d 8b 46 06        MOV        AX,word ptr [BP + Stack[0x6]]
       0000:4160 d1 e8           SHR        AX,0x1
       0000:4162 d1 e8           SHR        AX,0x1
       0000:4164 d1 e8           SHR        AX,0x1
       0000:4166 8b 1e ae d3     MOV        BX,word ptr [0xd3ae]
       0000:416a 01 c3           ADD        BX,AX
       0000:416c 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:4170 8b 0e b2 d3     MOV        CX,word ptr [0xd3b2]
                             LAB_0000_4174                                   XREF[1]:     0000:417e(j)  
       0000:4174 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:4177 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:417b 83 c3 50        ADD        BX,0x50
       0000:417e e2 f4           LOOP       LAB_0000_4174
       0000:4180 ba ce 03        MOV        DX,0x3ce
       0000:4183 b0 01           MOV        AL,0x1
       0000:4185 ee              OUT        DX,AL
       0000:4186 42              INC        DX
       0000:4187 b0 00           MOV        AL,0x0
       0000:4189 ee              OUT        DX,AL
       0000:418a ba ce 03        MOV        DX,0x3ce
       0000:418d b0 08           MOV        AL,0x8
       0000:418f ee              OUT        DX,AL
       0000:4190 42              INC        DX
       0000:4191 b0 ff           MOV        AL,0xff
       0000:4193 ee              OUT        DX,AL
       0000:4194 5d              POP        BP
       0000:4195 5a              POP        DX
       0000:4196 59              POP        CX
       0000:4197 5b              POP        BX
       0000:4198 58              POP        AX
       0000:4199 c2 0a 00        RET        0xa
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_419c()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[3]:     0000:41cc(*), 
                                                                                                   0000:41fc(*), 
                                                                                                   0000:4210(*)  
             undefined2        Stack[-0x4]:2  local_4                                 XREF[3]:     0000:41d6(*), 
                                                                                                   0000:422a(*), 
                                                                                                   0000:4242(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:41b4(*)  
                             FUN_0000_419c                                   XREF[9]:     FUN_0000_42f2:0000:432d(c), 
                                                                                          FUN_0000_42f2:0000:4332(c), 
                                                                                          FUN_0000_42f2:0000:4364(c), 
                                                                                          FUN_0000_42f2:0000:4369(c), 
                                                                                          FUN_0000_4372:0000:4392(c), 
                                                                                          FUN_0000_4372:0000:4397(c), 
                                                                                          FUN_0000_4372:0000:43bf(c), 
                                                                                          FUN_0000_4372:0000:43c4(c), 
                                                                                          FUN_0000_5be5:0000:5c18(c)  
       0000:419c 50              PUSH       AX
       0000:419d 53              PUSH       BX
       0000:419e 51              PUSH       CX
       0000:419f 52              PUSH       DX
       0000:41a0 55              PUSH       BP
       0000:41a1 89 e5           MOV        BP,SP
       0000:41a3 ba ce 03        MOV        DX,0x3ce
       0000:41a6 b0 01           MOV        AL,0x1
       0000:41a8 ee              OUT        DX,AL
       0000:41a9 42              INC        DX
       0000:41aa b0 0f           MOV        AL,0xf
       0000:41ac ee              OUT        DX,AL
       0000:41ad ba ce 03        MOV        DX,0x3ce
       0000:41b0 32 c0           XOR        AL,AL
       0000:41b2 ee              OUT        DX,AL
       0000:41b3 42              INC        DX
       0000:41b4 8a 46 02        MOV        AL,byte ptr [BP + local_8]
       0000:41b7 ee              OUT        DX,AL
       0000:41b8 89 c8           MOV        AX,CX
       0000:41ba d1 e1           SHL        CX,0x1
       0000:41bc d1 e1           SHL        CX,0x1
       0000:41be 03 c8           ADD        CX,AX
       0000:41c0 d1 e1           SHL        CX,0x1
       0000:41c2 d1 e1           SHL        CX,0x1
       0000:41c4 d1 e1           SHL        CX,0x1
       0000:41c6 d1 e1           SHL        CX,0x1
       0000:41c8 89 0e b4 d3     MOV        word ptr [0xd3b4],CX
       0000:41cc 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:41cf d1 e8           SHR        AX,0x1
       0000:41d1 d1 e8           SHR        AX,0x1
       0000:41d3 d1 e8           SHR        AX,0x1
       0000:41d5 40              INC        AX
       0000:41d6 8b 4e 06        MOV        CX,word ptr [BP + local_4]
       0000:41d9 d1 e9           SHR        CX,0x1
       0000:41db d1 e9           SHR        CX,0x1
       0000:41dd d1 e9           SHR        CX,0x1
       0000:41df 49              DEC        CX
       0000:41e0 2b c8           SUB        CX,AX
       0000:41e2 41              INC        CX
       0000:41e3 8b d8           MOV        BX,AX
       0000:41e5 03 1e b4 d3     ADD        BX,word ptr [0xd3b4]
       0000:41e9 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:41ed 85 c9           TEST       CX,CX
       0000:41ef 74 09           JZ         LAB_0000_41fa
       0000:41f1 78 07           JS         LAB_0000_41fa
                             LAB_0000_41f3                                   XREF[1]:     0000:41f8(j)  
       0000:41f3 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:41f7 43              INC        BX
       0000:41f8 e2 f9           LOOP       LAB_0000_41f3
                             LAB_0000_41fa                                   XREF[2]:     0000:41ef(j), 0000:41f1(j)  
       0000:41fa b0 ff           MOV        AL,0xff
       0000:41fc 8b 4e 08        MOV        CX,word ptr [BP + local_2]
       0000:41ff 80 e1 07        AND        CL,0x7
       0000:4202 d2 e8           SHR        AL,CL
       0000:4204 8a d8           MOV        BL,AL
       0000:4206 ba ce 03        MOV        DX,0x3ce
       0000:4209 b0 08           MOV        AL,0x8
       0000:420b ee              OUT        DX,AL
       0000:420c 42              INC        DX
       0000:420d 8a c3           MOV        AL,BL
       0000:420f ee              OUT        DX,AL
       0000:4210 8b 5e 08        MOV        BX,word ptr [BP + local_2]
       0000:4213 d1 eb           SHR        BX,0x1
       0000:4215 d1 eb           SHR        BX,0x1
       0000:4217 d1 eb           SHR        BX,0x1
       0000:4219 03 1e b4 d3     ADD        BX,word ptr [0xd3b4]
       0000:421d 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:4221 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:4224 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:4228 b0 ff           MOV        AL,0xff
       0000:422a 8b 4e 06        MOV        CX,word ptr [BP + local_4]
       0000:422d 80 e1 07        AND        CL,0x7
       0000:4230 d2 e8           SHR        AL,CL
       0000:4232 d0 e8           SHR        AL,0x1
       0000:4234 f6 d0           NOT        AL
       0000:4236 8a d8           MOV        BL,AL
       0000:4238 ba ce 03        MOV        DX,0x3ce
       0000:423b b0 08           MOV        AL,0x8
       0000:423d ee              OUT        DX,AL
       0000:423e 42              INC        DX
       0000:423f 8a c3           MOV        AL,BL
       0000:4241 ee              OUT        DX,AL
       0000:4242 8b 5e 06        MOV        BX,word ptr [BP + local_4]
       0000:4245 d1 eb           SHR        BX,0x1
       0000:4247 d1 eb           SHR        BX,0x1
       0000:4249 d1 eb           SHR        BX,0x1
       0000:424b 03 1e b4 d3     ADD        BX,word ptr [0xd3b4]
       0000:424f 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:4253 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:4256 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:425a ba ce 03        MOV        DX,0x3ce
       0000:425d b0 01           MOV        AL,0x1
       0000:425f ee              OUT        DX,AL
       0000:4260 42              INC        DX
       0000:4261 b0 00           MOV        AL,0x0
       0000:4263 ee              OUT        DX,AL
       0000:4264 ba ce 03        MOV        DX,0x3ce
       0000:4267 b0 08           MOV        AL,0x8
       0000:4269 ee              OUT        DX,AL
       0000:426a 42              INC        DX
       0000:426b b0 ff           MOV        AL,0xff
       0000:426d ee              OUT        DX,AL
       0000:426e 5d              POP        BP
       0000:426f 5a              POP        DX
       0000:4270 59              POP        CX
       0000:4271 5b              POP        BX
       0000:4272 58              POP        AX
       0000:4273 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4274()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[2]:     0000:42a6(*), 
                                                                                                   0000:42aa(*)  
             undefined2        Stack[-0x4]:2  local_4                                 XREF[1]:     0000:42a3(*)  
             undefined2        Stack[-0x6]:2  local_6                                 XREF[1]:     0000:42bd(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:428c(*)  
                             FUN_0000_4274                                   XREF[8]:     FUN_0000_42f2:0000:433e(c), 
                                                                                          FUN_0000_42f2:0000:4343(c), 
                                                                                          FUN_0000_42f2:0000:4352(c), 
                                                                                          FUN_0000_42f2:0000:4357(c), 
                                                                                          FUN_0000_4372:0000:43a7(c), 
                                                                                          FUN_0000_4372:0000:43ac(c), 
                                                                                          FUN_0000_4372:0000:43d6(c), 
                                                                                          FUN_0000_4372:0000:43db(c)  
       0000:4274 50              PUSH       AX
       0000:4275 53              PUSH       BX
       0000:4276 51              PUSH       CX
       0000:4277 52              PUSH       DX
       0000:4278 55              PUSH       BP
       0000:4279 89 e5           MOV        BP,SP
       0000:427b ba ce 03        MOV        DX,0x3ce
       0000:427e b0 01           MOV        AL,0x1
       0000:4280 ee              OUT        DX,AL
       0000:4281 42              INC        DX
       0000:4282 b0 0f           MOV        AL,0xf
       0000:4284 ee              OUT        DX,AL
       0000:4285 ba ce 03        MOV        DX,0x3ce
       0000:4288 32 c0           XOR        AL,AL
       0000:428a ee              OUT        DX,AL
       0000:428b 42              INC        DX
       0000:428c 8a 46 02        MOV        AL,byte ptr [BP + local_8]
       0000:428f ee              OUT        DX,AL
       0000:4290 80 e1 07        AND        CL,0x7
       0000:4293 b0 80           MOV        AL,0x80
       0000:4295 d2 e8           SHR        AL,CL
       0000:4297 8a d8           MOV        BL,AL
       0000:4299 ba ce 03        MOV        DX,0x3ce
       0000:429c b0 08           MOV        AL,0x8
       0000:429e ee              OUT        DX,AL
       0000:429f 42              INC        DX
       0000:42a0 8a c3           MOV        AL,BL
       0000:42a2 ee              OUT        DX,AL
       0000:42a3 8b 4e 06        MOV        CX,word ptr [BP + local_4]
       0000:42a6 2b 4e 08        SUB        CX,word ptr [BP + local_2]
       0000:42a9 41              INC        CX
       0000:42aa 8b 5e 08        MOV        BX,word ptr [BP + local_2]
       0000:42ad 8b c3           MOV        AX,BX
       0000:42af d1 e3           SHL        BX,0x1
       0000:42b1 d1 e3           SHL        BX,0x1
       0000:42b3 01 c3           ADD        BX,AX
       0000:42b5 d1 e3           SHL        BX,0x1
       0000:42b7 d1 e3           SHL        BX,0x1
       0000:42b9 d1 e3           SHL        BX,0x1
       0000:42bb d1 e3           SHL        BX,0x1
       0000:42bd 8b 46 04        MOV        AX,word ptr [BP + local_6]
       0000:42c0 d1 e8           SHR        AX,0x1
       0000:42c2 d1 e8           SHR        AX,0x1
       0000:42c4 d1 e8           SHR        AX,0x1
       0000:42c6 01 c3           ADD        BX,AX
       0000:42c8 03 1e 37 d2     ADD        BX,word ptr [0xd237]
                             LAB_0000_42cc                                   XREF[1]:     0000:42d6(j)  
       0000:42cc 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:42cf 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:42d3 83 c3 50        ADD        BX,0x50
       0000:42d6 e2 f4           LOOP       LAB_0000_42cc
       0000:42d8 ba ce 03        MOV        DX,0x3ce
       0000:42db b0 01           MOV        AL,0x1
       0000:42dd ee              OUT        DX,AL
       0000:42de 42              INC        DX
       0000:42df b0 00           MOV        AL,0x0
       0000:42e1 ee              OUT        DX,AL
       0000:42e2 ba ce 03        MOV        DX,0x3ce
       0000:42e5 b0 08           MOV        AL,0x8
       0000:42e7 ee              OUT        DX,AL
       0000:42e8 42              INC        DX
       0000:42e9 b0 ff           MOV        AL,0xff
       0000:42eb ee              OUT        DX,AL
       0000:42ec 5d              POP        BP
       0000:42ed 5a              POP        DX
       0000:42ee 59              POP        CX
       0000:42ef 5b              POP        BX
       0000:42f0 58              POP        AX
       0000:42f1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_42f2()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[4]:     0000:42fd(*), 
                                                                                                   0000:431a(*), 
                                                                                                   0000:434d(*), 
                                                                                                   0000:435a(*)  
             undefined2        Stack[-0x4]:2  local_4                                 XREF[3]:     0000:4328(*), 
                                                                                                   0000:4335(*), 
                                                                                                   0000:4346(*)  
             undefined2        Stack[-0x6]:2  local_6                                 XREF[2]:     0000:433b(*), 
                                                                                                   0000:435d(*)  
             undefined2        Stack[-0x8]:2  local_8                                 XREF[3]:     0000:4338(*), 
                                                                                                   0000:434a(*), 
                                                                                                   0000:4361(*)  
                             FUN_0000_42f2                                   XREF[17]:    FUN_0000_3f08:0000:3f1a(c), 
                                                                                          FUN_0000_3f08:0000:3f38(c), 
                                                                                          FUN_0000_3f08:0000:3f51(c), 
                                                                                          FUN_0000_3f9a:0000:3fb3(c), 
                                                                                          FUN_0000_3fde:0000:3fff(c), 
                                                                                          FUN_0000_3fde:0000:401d(c), 
                                                                                          FUN_0000_3fde:0000:4036(c), 
                                                                                          FUN_0000_43e4:0000:43f9(c), 
                                                                                          FUN_0000_442b:0000:442f(c), 
                                                                                          FUN_0000_4b36:0000:4b46(c), 
                                                                                          FUN_0000_4b36:0000:4b64(c), 
                                                                                          FUN_0000_4b36:0000:4b73(c), 
                                                                                          FUN_0000_4bc4:0000:4bd4(c), 
                                                                                          FUN_0000_624e:0000:625e(c), 
                                                                                          FUN_0000_624e:0000:627c(c), 
                                                                                          FUN_0000_6299:0000:62aa(c), 
                                                                                          FUN_0000_6299:0000:62b9(c)  
       0000:42f2 50              PUSH       AX
       0000:42f3 53              PUSH       BX
       0000:42f4 51              PUSH       CX
       0000:42f5 52              PUSH       DX
       0000:42f6 55              PUSH       BP
       0000:42f7 89 e5           MOV        BP,SP
       0000:42f9 b8 07 00        MOV        AX,0x7
       0000:42fc 50              PUSH       AX
       0000:42fd 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:4300 05 02 00        ADD        AX,0x2
       0000:4303 83 c3 02        ADD        BX,0x2
       0000:4306 83 e9 02        SUB        CX,0x2
       0000:4309 83 ea 02        SUB        DX,0x2
       0000:430c 3b da           CMP        BX,DX
       0000:430e 77 09           JA         LAB_0000_4319
       0000:4310 52              PUSH       DX
       0000:4311 51              PUSH       CX
       0000:4312 53              PUSH       BX
       0000:4313 50              PUSH       AX
       0000:4314 e8 77 fd        CALL       FUN_0000_408e                                    undefined FUN_0000_408e()
       0000:4317 eb 07           JMP        LAB_0000_4320
                             LAB_0000_4319                                   XREF[1]:     0000:430e(j)  
       0000:4319 58              POP        AX
       0000:431a 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:431d 05 02 00        ADD        AX,0x2
                             LAB_0000_4320                                   XREF[1]:     0000:4317(j)  
       0000:4320 2d 02 00        SUB        AX,0x2
       0000:4323 8b d9           MOV        BX,CX
       0000:4325 83 c3 02        ADD        BX,0x2
       0000:4328 8b 4e 06        MOV        CX,word ptr [BP + local_4]
       0000:432b b2 0f           MOV        DL,0xf
       0000:432d e8 6c fe        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:4330 40              INC        AX
       0000:4331 41              INC        CX
       0000:4332 e8 67 fe        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:4335 8b 46 06        MOV        AX,word ptr [BP + local_4]
       0000:4338 8b 5e 02        MOV        BX,word ptr [BP + local_8]
       0000:433b 8b 4e 04        MOV        CX,word ptr [BP + local_6]
       0000:433e e8 33 ff        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:4341 49              DEC        CX
       0000:4342 4b              DEC        BX
       0000:4343 e8 2e ff        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:4346 8b 46 06        MOV        AX,word ptr [BP + local_4]
       0000:4349 40              INC        AX
       0000:434a 8b 5e 02        MOV        BX,word ptr [BP + local_8]
       0000:434d 8b 4e 08        MOV        CX,word ptr [BP + local_2]
       0000:4350 b2 08           MOV        DL,0x8
       0000:4352 e8 1f ff        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:4355 41              INC        CX
       0000:4356 40              INC        AX
       0000:4357 e8 1a ff        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:435a 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:435d 8b 5e 04        MOV        BX,word ptr [BP + local_6]
       0000:4360 4b              DEC        BX
       0000:4361 8b 4e 02        MOV        CX,word ptr [BP + local_8]
       0000:4364 e8 35 fe        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:4367 49              DEC        CX
       0000:4368 4b              DEC        BX
       0000:4369 e8 30 fe        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:436c 5d              POP        BP
       0000:436d 5a              POP        DX
       0000:436e 59              POP        CX
       0000:436f 5b              POP        BX
       0000:4370 58              POP        AX
       0000:4371 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4372()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[3]:     0000:437d(*), 
                                                                                                   0000:43af(*), 
                                                                                                   0000:43d0(*)  
             undefined2        Stack[-0x4]:2  local_4                                 XREF[3]:     0000:438c(*), 
                                                                                                   0000:439a(*), 
                                                                                                   0000:43c7(*)  
             undefined2        Stack[-0x6]:2  local_6                                 XREF[2]:     0000:43a3(*), 
                                                                                                   0000:43b5(*)  
             undefined2        Stack[-0x8]:2  local_8                                 XREF[3]:     0000:43a0(*), 
                                                                                                   0000:43b9(*), 
                                                                                                   0000:43cd(*)  
                             FUN_0000_4372                                   XREF[8]:     FUN_0000_3f08:0000:3f29(c), 
                                                                                          FUN_0000_3f08:0000:3f60(c), 
                                                                                          FUN_0000_3fde:0000:400e(c), 
                                                                                          FUN_0000_442b:0000:443e(c), 
                                                                                          FUN_0000_4b36:0000:4b55(c), 
                                                                                          FUN_0000_4bc4:0000:4be3(c), 
                                                                                          FUN_0000_624e:0000:626d(c), 
                                                                                          FUN_0000_624e:0000:628b(c)  
       0000:4372 50              PUSH       AX
       0000:4373 53              PUSH       BX
       0000:4374 51              PUSH       CX
       0000:4375 52              PUSH       DX
       0000:4376 55              PUSH       BP
       0000:4377 89 e5           MOV        BP,SP
       0000:4379 b8 00 00        MOV        AX,0x0
       0000:437c 50              PUSH       AX
       0000:437d 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:4380 52              PUSH       DX
       0000:4381 51              PUSH       CX
       0000:4382 53              PUSH       BX
       0000:4383 50              PUSH       AX
       0000:4384 e8 07 fd        CALL       FUN_0000_408e                                    undefined FUN_0000_408e()
       0000:4387 8b d9           MOV        BX,CX
       0000:4389 83 c3 02        ADD        BX,0x2
       0000:438c 8b 4e 06        MOV        CX,word ptr [BP + local_4]
       0000:438f 49              DEC        CX
       0000:4390 b2 08           MOV        DL,0x8
       0000:4392 e8 07 fe        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:4395 49              DEC        CX
       0000:4396 48              DEC        AX
       0000:4397 e8 02 fe        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:439a 8b 46 06        MOV        AX,word ptr [BP + local_4]
       0000:439d 2d 02 00        SUB        AX,0x2
       0000:43a0 8b 5e 02        MOV        BX,word ptr [BP + local_8]
       0000:43a3 8b 4e 04        MOV        CX,word ptr [BP + local_6]
       0000:43a6 41              INC        CX
       0000:43a7 e8 ca fe        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:43aa 41              INC        CX
       0000:43ab 43              INC        BX
       0000:43ac e8 c5 fe        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:43af 8b 46 08        MOV        AX,word ptr [BP + local_2]
       0000:43b2 2d 02 00        SUB        AX,0x2
       0000:43b5 8b 5e 04        MOV        BX,word ptr [BP + local_6]
       0000:43b8 43              INC        BX
       0000:43b9 8b 4e 02        MOV        CX,word ptr [BP + local_8]
       0000:43bc 41              INC        CX
       0000:43bd b2 0f           MOV        DL,0xf
       0000:43bf e8 da fd        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:43c2 41              INC        CX
       0000:43c3 43              INC        BX
       0000:43c4 e8 d5 fd        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:43c7 8b 46 06        MOV        AX,word ptr [BP + local_4]
       0000:43ca 2d 02 00        SUB        AX,0x2
       0000:43cd 8b 5e 02        MOV        BX,word ptr [BP + local_8]
       0000:43d0 8b 4e 08        MOV        CX,word ptr [BP + local_2]
       0000:43d3 83 e9 02        SUB        CX,0x2
       0000:43d6 e8 9b fe        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:43d9 41              INC        CX
       0000:43da 40              INC        AX
       0000:43db e8 96 fe        CALL       FUN_0000_4274                                    undefined FUN_0000_4274()
       0000:43de 5d              POP        BP
       0000:43df 5a              POP        DX
       0000:43e0 59              POP        CX
       0000:43e1 5b              POP        BX
       0000:43e2 58              POP        AX
       0000:43e3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_43e4()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x4]:2  local_4                                 XREF[2]:     0000:4408(*), 
                                                                                                   0000:4415(*)  
             undefined2        Stack[-0x8]:2  local_8                                 XREF[1]:     0000:4418(*)  
                             FUN_0000_43e4                                   XREF[1]:     FUN_0000_4446:0000:44a1(c)  
       0000:43e4 50              PUSH       AX
       0000:43e5 53              PUSH       BX
       0000:43e6 51              PUSH       CX
       0000:43e7 52              PUSH       DX
       0000:43e8 56              PUSH       SI
       0000:43e9 55              PUSH       BP
       0000:43ea 89 e5           MOV        BP,SP
       0000:43ec 03 da           ADD        BX,DX
       0000:43ee d1 eb           SHR        BX,0x1
       0000:43f0 89 da           MOV        DX,BX
       0000:43f2 4b              DEC        BX
       0000:43f3 83 c2 02        ADD        DX,0x2
       0000:43f6 be 0c 00        MOV        SI,0xc
                             LAB_0000_43f9                                   XREF[1]:     0000:4402(j)  
       0000:43f9 e8 f6 fe        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:43fc e8 3c 21        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:43ff 4b              DEC        BX
       0000:4400 42              INC        DX
       0000:4401 4e              DEC        SI
       0000:4402 75 f5           JNZ        LAB_0000_43f9
       0000:4404 43              INC        BX
       0000:4405 4a              DEC        DX
                             LAB_0000_4406                                   XREF[1]:     0000:4413(j)  
       0000:4406 4b              DEC        BX
       0000:4407 42              INC        DX
       0000:4408 3b 5e 08        CMP        BX,word ptr [BP + local_4]
       0000:440b 76 08           JBE        LAB_0000_4415
       0000:440d e8 1b 00        CALL       FUN_0000_442b                                    undefined FUN_0000_442b()
       0000:4410 e8 28 21        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4413 eb f1           JMP        LAB_0000_4406
                             LAB_0000_4415                                   XREF[1]:     0000:440b(j)  
       0000:4415 8b 5e 08        MOV        BX,word ptr [BP + local_4]
       0000:4418 8b 56 04        MOV        DX,word ptr [BP + local_8]
       0000:441b e8 0d 00        CALL       FUN_0000_442b                                    undefined FUN_0000_442b()
       0000:441e e8 1a 21        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4421 e8 07 00        CALL       FUN_0000_442b                                    undefined FUN_0000_442b()
       0000:4424 5d              POP        BP
       0000:4425 5e              POP        SI
       0000:4426 5a              POP        DX
       0000:4427 59              POP        CX
       0000:4428 5b              POP        BX
       0000:4429 58              POP        AX
       0000:442a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_442b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_442b                                   XREF[3]:     FUN_0000_43e4:0000:440d(c), 
                                                                                          FUN_0000_43e4:0000:441b(c), 
                                                                                          FUN_0000_43e4:0000:4421(c)  
       0000:442b 50              PUSH       AX
       0000:442c 53              PUSH       BX
       0000:442d 51              PUSH       CX
       0000:442e 52              PUSH       DX
       0000:442f e8 c0 fe        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4432 05 10 00        ADD        AX,0x10
       0000:4435 83 c3 0c        ADD        BX,0xc
       0000:4438 83 e9 10        SUB        CX,0x10
       0000:443b 83 ea 0c        SUB        DX,0xc
       0000:443e e8 31 ff        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:4441 5a              POP        DX
       0000:4442 59              POP        CX
       0000:4443 5b              POP        BX
       0000:4444 58              POP        AX
       0000:4445 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4446()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[2]:     0000:4473(*), 
                                                                                                   0000:4491(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:447d(*)  
                             FUN_0000_4446                                   XREF[1]:     FUN_0000_44ac:0000:44b8(c)  
       0000:4446 50              PUSH       AX
       0000:4447 53              PUSH       BX
       0000:4448 51              PUSH       CX
       0000:4449 52              PUSH       DX
       0000:444a 56              PUSH       SI
       0000:444b 57              PUSH       DI
       0000:444c 55              PUSH       BP
       0000:444d 89 e5           MOV        BP,SP
       0000:444f 8b c3           MOV        AX,BX
       0000:4451 d1 e3           SHL        BX,0x1
       0000:4453 d1 e3           SHL        BX,0x1
       0000:4455 d1 e3           SHL        BX,0x1
       0000:4457 29 c3           SUB        BX,AX
       0000:4459 d1 e3           SHL        BX,0x1
       0000:445b 53              PUSH       BX
       0000:445c 81 eb 5e 01     SUB        BX,0x15e
       0000:4460 f7 db           NEG        BX
       0000:4462 d1 eb           SHR        BX,0x1
       0000:4464 53              PUSH       BX
       0000:4465 83 eb 0c        SUB        BX,0xc
       0000:4468 89 de           MOV        SI,BX
       0000:446a 5b              POP        BX
       0000:446b 58              POP        AX
       0000:446c 01 c3           ADD        BX,AX
       0000:446e 83 c3 0d        ADD        BX,0xd
       0000:4471 89 df           MOV        DI,BX
       0000:4473 8b 46 0c        MOV        AX,word ptr [BP + local_2]
       0000:4476 2d 50 00        SUB        AX,0x50
       0000:4479 f7 d8           NEG        AX
       0000:447b d1 e8           SHR        AX,0x1
       0000:447d f6 46 06 ff     TEST       byte ptr [BP + local_8],0xff
       0000:4481 74 03           JZ         LAB_0000_4486
       0000:4483 2d 0a 00        SUB        AX,0xa
                             LAB_0000_4486                                   XREF[1]:     0000:4481(j)  
       0000:4486 50              PUSH       AX
       0000:4487 d1 e0           SHL        AX,0x1
       0000:4489 d1 e0           SHL        AX,0x1
       0000:448b d1 e0           SHL        AX,0x1
       0000:448d 2d 12 00        SUB        AX,0x12
       0000:4490 59              POP        CX
       0000:4491 03 4e 0c        ADD        CX,word ptr [BP + local_2]
       0000:4494 d1 e1           SHL        CX,0x1
       0000:4496 d1 e1           SHL        CX,0x1
       0000:4498 d1 e1           SHL        CX,0x1
       0000:449a 83 c1 10        ADD        CX,0x10
       0000:449d 89 f3           MOV        BX,SI
       0000:449f 89 fa           MOV        DX,DI
       0000:44a1 e8 40 ff        CALL       FUN_0000_43e4                                    undefined FUN_0000_43e4()
       0000:44a4 5d              POP        BP
       0000:44a5 5f              POP        DI
       0000:44a6 5e              POP        SI
       0000:44a7 5a              POP        DX
       0000:44a8 59              POP        CX
       0000:44a9 5b              POP        BX
       0000:44aa 58              POP        AX
       0000:44ab c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_44ac()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_44ac                                   XREF[4]:     FUN_0000_382c:0000:3854(c), 
                                                                                          FUN_0000_3ab5:0000:3ac5(c), 
                                                                                          FUN_0000_3caf:0000:3cb6(c), 
                                                                                          FUN_0000_4882:0000:4895(c)  
       0000:44ac 50              PUSH       AX
       0000:44ad 53              PUSH       BX
       0000:44ae 51              PUSH       CX
       0000:44af 52              PUSH       DX
       0000:44b0 57              PUSH       DI
       0000:44b1 8b 05           MOV        AX,word ptr [DI]
       0000:44b3 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       0000:44b6 8b cb           MOV        CX,BX
       0000:44b8 e8 8b ff        CALL       FUN_0000_4446                                    undefined FUN_0000_4446()
       0000:44bb 8b c3           MOV        AX,BX
       0000:44bd d1 e3           SHL        BX,0x1
       0000:44bf d1 e3           SHL        BX,0x1
       0000:44c1 d1 e3           SHL        BX,0x1
       0000:44c3 29 c3           SUB        BX,AX
       0000:44c5 d1 e3           SHL        BX,0x1
       0000:44c7 81 eb 5e 01     SUB        BX,0x15e
       0000:44cb f7 db           NEG        BX
       0000:44cd d1 eb           SHR        BX,0x1
       0000:44cf 8b 05           MOV        AX,word ptr [DI]
       0000:44d1 2d 50 00        SUB        AX,0x50
       0000:44d4 f7 d8           NEG        AX
       0000:44d6 d1 e8           SHR        AX,0x1
       0000:44d8 84 d2           TEST       DL,DL
       0000:44da 74 03           JZ         LAB_0000_44df
       0000:44dc 2d 0a 00        SUB        AX,0xa
                             LAB_0000_44df                                   XREF[1]:     0000:44da(j)  
       0000:44df 50              PUSH       AX
       0000:44e0 53              PUSH       BX
       0000:44e1 83 c7 04        ADD        DI,0x4
       0000:44e4 57              PUSH       DI
       0000:44e5 c6 06 cc        MOV        byte ptr [0xcecc],0xf
                 ce 0f
       0000:44ea 51              PUSH       CX
                             LAB_0000_44eb                                   XREF[1]:     0000:44f8(j)  
       0000:44eb e8 9c f9        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:44ee 83 c3 0e        ADD        BX,0xe
                             LAB_0000_44f1                                   XREF[1]:     0000:44f6(j)  
       0000:44f1 47              INC        DI
       0000:44f2 f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:44f6 75 f9           JNZ        LAB_0000_44f1
       0000:44f8 e2 f1           LOOP       LAB_0000_44eb
       0000:44fa e8 3e 20        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:44fd 59              POP        CX
       0000:44fe 5f              POP        DI
       0000:44ff 5b              POP        BX
       0000:4500 58              POP        AX
                             LAB_0000_4501                                   XREF[1]:     0000:450e(j)  
       0000:4501 e8 86 f9        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4504 83 c3 0e        ADD        BX,0xe
                             LAB_0000_4507                                   XREF[1]:     0000:450c(j)  
       0000:4507 47              INC        DI
       0000:4508 f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:450c 75 f9           JNZ        LAB_0000_4507
       0000:450e e2 f1           LOOP       LAB_0000_4501
       0000:4510 5f              POP        DI
       0000:4511 5a              POP        DX
       0000:4512 59              POP        CX
       0000:4513 5b              POP        BX
       0000:4514 58              POP        AX
       0000:4515 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4516()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[1]:     0000:4542(*)  
             undefined2        Stack[-0x4]:2  local_4                                 XREF[1]:     0000:4537(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:455d(*)  
                             FUN_0000_4516                                   XREF[6]:     FUN_0000_3e8a:0000:3eb9(c), 
                                                                                          FUN_0000_3ec7:0000:3efe(c), 
                                                                                          FUN_0000_4f7f:0000:4fd0(c), 
                                                                                          FUN_0000_4f7f:0000:4fd5(c), 
                                                                                          FUN_0000_4f7f:0000:5012(c), 
                                                                                          FUN_0000_4f7f:0000:5021(c)  
       0000:4516 50              PUSH       AX
       0000:4517 53              PUSH       BX
       0000:4518 51              PUSH       CX
       0000:4519 52              PUSH       DX
       0000:451a 56              PUSH       SI
       0000:451b 55              PUSH       BP
       0000:451c 89 e5           MOV        BP,SP
       0000:451e ba ce 03        MOV        DX,0x3ce
       0000:4521 b0 01           MOV        AL,0x1
       0000:4523 ee              OUT        DX,AL
       0000:4524 42              INC        DX
       0000:4525 b0 0f           MOV        AL,0xf
       0000:4527 ee              OUT        DX,AL
       0000:4528 ba ce 03        MOV        DX,0x3ce
       0000:452b 32 c0           XOR        AL,AL
       0000:452d ee              OUT        DX,AL
       0000:452e 42              INC        DX
       0000:452f a0 cc ce        MOV        AL,[0xcecc]
       0000:4532 ee              OUT        DX,AL
       0000:4533 d1 e3           SHL        BX,0x1
       0000:4535 d1 e3           SHL        BX,0x1
       0000:4537 03 5e 08        ADD        BX,word ptr [BP + local_4]
       0000:453a d1 e3           SHL        BX,0x1
       0000:453c d1 e3           SHL        BX,0x1
       0000:453e d1 e3           SHL        BX,0x1
       0000:4540 d1 e3           SHL        BX,0x1
       0000:4542 03 5e 0a        ADD        BX,word ptr [BP + local_2]
       0000:4545 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:4549 84 c9           TEST       CL,CL
       0000:454b 74 10           JZ         LAB_0000_455d
       0000:454d 2b 1e 37 d2     SUB        BX,word ptr [0xd237]
       0000:4551 8b 16 37 d2     MOV        DX,word ptr [0xd237]
       0000:4555 81 ea 00 6e     SUB        DX,0x6e00
       0000:4559 f7 da           NEG        DX
       0000:455b 03 da           ADD        BX,DX
                             LAB_0000_455d                                   XREF[1]:     0000:454b(j)  
       0000:455d 8a 56 04        MOV        DL,byte ptr [BP + local_8]
       0000:4560 80 fa 20        CMP        DL,0x20
       0000:4563 72 38           JC         LAB_0000_459d
       0000:4565 80 fa 5f        CMP        DL,0x5f
       0000:4568 77 33           JA         LAB_0000_459d
       0000:456a 80 ea 20        SUB        DL,0x20
       0000:456d 32 f6           XOR        DH,DH
       0000:456f 8b c2           MOV        AX,DX
       0000:4571 d1 e2           SHL        DX,0x1
       0000:4573 d1 e2           SHL        DX,0x1
       0000:4575 d1 e2           SHL        DX,0x1
       0000:4577 29 c2           SUB        DX,AX
       0000:4579 d1 e2           SHL        DX,0x1
       0000:457b 89 d6           MOV        SI,DX
       0000:457d 81 c6 64 c5     ADD        SI,0xc564
       0000:4581 b9 0e 00        MOV        CX,0xe
                             LAB_0000_4584                                   XREF[1]:     0000:4599(j)  
       0000:4584 ba ce 03        MOV        DX,0x3ce
       0000:4587 b0 08           MOV        AL,0x8
       0000:4589 ee              OUT        DX,AL
       0000:458a 42              INC        DX
       0000:458b 8a 04           MOV        AL,byte ptr [SI]
       0000:458d ee              OUT        DX,AL
       0000:458e 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:4591 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:4595 83 c3 50        ADD        BX,0x50
       0000:4598 46              INC        SI
       0000:4599 e2 e9           LOOP       LAB_0000_4584
       0000:459b eb 61           JMP        LAB_0000_45fe
                             LAB_0000_459d                                   XREF[2]:     0000:4563(j), 0000:4568(j)  
       0000:459d 80 fa 61        CMP        DL,0x61
       0000:45a0 72 36           JC         LAB_0000_45d8
       0000:45a2 80 fa 7a        CMP        DL,0x7a
       0000:45a5 77 31           JA         LAB_0000_45d8
       0000:45a7 80 ea 40        SUB        DL,0x40
       0000:45aa 32 f6           XOR        DH,DH
       0000:45ac 89 d6           MOV        SI,DX
       0000:45ae d1 e6           SHL        SI,0x1
       0000:45b0 d1 e6           SHL        SI,0x1
       0000:45b2 d1 e6           SHL        SI,0x1
       0000:45b4 81 c6 64 c3     ADD        SI,0xc364
       0000:45b8 81 c3 e0 01     ADD        BX,0x1e0
       0000:45bc b9 08 00        MOV        CX,0x8
                             LAB_0000_45bf                                   XREF[1]:     0000:45d4(j)  
       0000:45bf ba ce 03        MOV        DX,0x3ce
       0000:45c2 b0 08           MOV        AL,0x8
       0000:45c4 ee              OUT        DX,AL
       0000:45c5 42              INC        DX
       0000:45c6 8a 04           MOV        AL,byte ptr [SI]
       0000:45c8 ee              OUT        DX,AL
       0000:45c9 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:45cc 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:45d0 83 c3 50        ADD        BX,0x50
       0000:45d3 46              INC        SI
       0000:45d4 e2 e9           LOOP       LAB_0000_45bf
       0000:45d6 eb 26           JMP        LAB_0000_45fe
                             LAB_0000_45d8                                   XREF[2]:     0000:45a0(j), 0000:45a5(j)  
       0000:45d8 80 fa 08        CMP        DL,0x8
       0000:45db 75 21           JNZ        LAB_0000_45fe
       0000:45dd ba ce 03        MOV        DX,0x3ce
       0000:45e0 b0 01           MOV        AL,0x1
       0000:45e2 ee              OUT        DX,AL
       0000:45e3 42              INC        DX
       0000:45e4 b0 0f           MOV        AL,0xf
       0000:45e6 ee              OUT        DX,AL
       0000:45e7 ba ce 03        MOV        DX,0x3ce
       0000:45ea 32 c0           XOR        AL,AL
       0000:45ec ee              OUT        DX,AL
       0000:45ed 42              INC        DX
       0000:45ee a0 cd ce        MOV        AL,[0xcecd]
       0000:45f1 ee              OUT        DX,AL
       0000:45f2 b9 0e 00        MOV        CX,0xe
                             LAB_0000_45f5                                   XREF[1]:     0000:45fc(j)  
       0000:45f5 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:45f9 83 c3 50        ADD        BX,0x50
       0000:45fc e2 f7           LOOP       LAB_0000_45f5
                             LAB_0000_45fe                                   XREF[3]:     0000:459b(j), 0000:45d6(j), 
                                                                                          0000:45db(j)  
       0000:45fe ba ce 03        MOV        DX,0x3ce
       0000:4601 b0 01           MOV        AL,0x1
       0000:4603 ee              OUT        DX,AL
       0000:4604 42              INC        DX
       0000:4605 b0 00           MOV        AL,0x0
       0000:4607 ee              OUT        DX,AL
       0000:4608 ba ce 03        MOV        DX,0x3ce
       0000:460b b0 08           MOV        AL,0x8
       0000:460d ee              OUT        DX,AL
       0000:460e 42              INC        DX
       0000:460f b0 ff           MOV        AL,0xff
       0000:4611 ee              OUT        DX,AL
       0000:4612 5d              POP        BP
       0000:4613 5e              POP        SI
       0000:4614 5a              POP        DX
       0000:4615 59              POP        CX
       0000:4616 5b              POP        BX
       0000:4617 58              POP        AX
       0000:4618 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4619()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[1]:     0000:4646(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:464f(*)  
                             FUN_0000_4619                                   XREF[1]:     FUN_0000_4b7b:0000:4b99(c)  
       0000:4619 50              PUSH       AX
       0000:461a 53              PUSH       BX
       0000:461b 51              PUSH       CX
       0000:461c 52              PUSH       DX
       0000:461d 56              PUSH       SI
       0000:461e 55              PUSH       BP
       0000:461f 89 e5           MOV        BP,SP
       0000:4621 ba ce 03        MOV        DX,0x3ce
       0000:4624 b0 01           MOV        AL,0x1
       0000:4626 ee              OUT        DX,AL
       0000:4627 42              INC        DX
       0000:4628 b0 0f           MOV        AL,0xf
       0000:462a ee              OUT        DX,AL
       0000:462b ba ce 03        MOV        DX,0x3ce
       0000:462e 32 c0           XOR        AL,AL
       0000:4630 ee              OUT        DX,AL
       0000:4631 42              INC        DX
       0000:4632 a0 cc ce        MOV        AL,[0xcecc]
       0000:4635 ee              OUT        DX,AL
       0000:4636 8b c3           MOV        AX,BX
       0000:4638 d1 e3           SHL        BX,0x1
       0000:463a d1 e3           SHL        BX,0x1
       0000:463c 01 c3           ADD        BX,AX
       0000:463e d1 e3           SHL        BX,0x1
       0000:4640 d1 e3           SHL        BX,0x1
       0000:4642 d1 e3           SHL        BX,0x1
       0000:4644 d1 e3           SHL        BX,0x1
       0000:4646 8b 46 0a        MOV        AX,word ptr [BP + local_2]
       0000:4649 01 c3           ADD        BX,AX
       0000:464b 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:464f 8a 46 04        MOV        AL,byte ptr [BP + local_8]
       0000:4652 32 e4           XOR        AH,AH
       0000:4654 8b f0           MOV        SI,AX
       0000:4656 d1 e0           SHL        AX,0x1
       0000:4658 01 c6           ADD        SI,AX
       0000:465a d1 e0           SHL        AX,0x1
       0000:465c d1 e0           SHL        AX,0x1
       0000:465e 01 c6           ADD        SI,AX
       0000:4660 d1 e0           SHL        AX,0x1
       0000:4662 01 c6           ADD        SI,AX
       0000:4664 d1 e6           SHL        SI,0x1
       0000:4666 d1 e6           SHL        SI,0x1
       0000:4668 81 c6 e4 c8     ADD        SI,0xc8e4
       0000:466c b9 24 00        MOV        CX,0x24
                             LAB_0000_466f                                   XREF[1]:     0000:46ac(j)  
       0000:466f ba ce 03        MOV        DX,0x3ce
       0000:4672 b0 08           MOV        AL,0x8
       0000:4674 ee              OUT        DX,AL
       0000:4675 42              INC        DX
       0000:4676 8a 04           MOV        AL,byte ptr [SI]
       0000:4678 ee              OUT        DX,AL
       0000:4679 46              INC        SI
       0000:467a 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:467d 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:4681 ba ce 03        MOV        DX,0x3ce
       0000:4684 b0 08           MOV        AL,0x8
       0000:4686 ee              OUT        DX,AL
       0000:4687 42              INC        DX
       0000:4688 8a 04           MOV        AL,byte ptr [SI]
       0000:468a ee              OUT        DX,AL
       0000:468b 46              INC        SI
       0000:468c 26 8a 47 01     MOV        AL,byte ptr ES:[BX + 0x1]
       0000:4690 26 c6 47        MOV        byte ptr ES:[BX + 0x1],0xff
                 01 ff
       0000:4695 ba ce 03        MOV        DX,0x3ce
       0000:4698 b0 08           MOV        AL,0x8
       0000:469a ee              OUT        DX,AL
       0000:469b 42              INC        DX
       0000:469c 8a 04           MOV        AL,byte ptr [SI]
       0000:469e ee              OUT        DX,AL
       0000:469f 46              INC        SI
       0000:46a0 26 8a 47 02     MOV        AL,byte ptr ES:[BX + 0x2]
       0000:46a4 26 c6 47        MOV        byte ptr ES:[BX + 0x2],0xff
                 02 ff
       0000:46a9 83 c3 50        ADD        BX,0x50
       0000:46ac e2 c1           LOOP       LAB_0000_466f
       0000:46ae ba ce 03        MOV        DX,0x3ce
       0000:46b1 b0 01           MOV        AL,0x1
       0000:46b3 ee              OUT        DX,AL
       0000:46b4 42              INC        DX
       0000:46b5 b0 00           MOV        AL,0x0
       0000:46b7 ee              OUT        DX,AL
       0000:46b8 5d              POP        BP
       0000:46b9 5e              POP        SI
       0000:46ba 5a              POP        DX
       0000:46bb 59              POP        CX
       0000:46bc 5b              POP        BX
       0000:46bd 58              POP        AX
       0000:46be c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_46bf()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_46bf                                   XREF[1]:     FUN_0000_4f7f:0000:4fa3(c)  
       0000:46bf 50              PUSH       AX
       0000:46c0 53              PUSH       BX
       0000:46c1 52              PUSH       DX
       0000:46c2 89 da           MOV        DX,BX
       0000:46c4 d1 e3           SHL        BX,0x1
       0000:46c6 d1 e3           SHL        BX,0x1
       0000:46c8 03 da           ADD        BX,DX
       0000:46ca d1 e3           SHL        BX,0x1
       0000:46cc d1 e3           SHL        BX,0x1
       0000:46ce d1 e3           SHL        BX,0x1
       0000:46d0 d1 e3           SHL        BX,0x1
       0000:46d2 01 c3           ADD        BX,AX
       0000:46d4 81 c3 60 04     ADD        BX,0x460
       0000:46d8 8b 16 37 d2     MOV        DX,word ptr [0xd237]
       0000:46dc 81 ea 00 6e     SUB        DX,0x6e00
       0000:46e0 f7 da           NEG        DX
       0000:46e2 03 da           ADD        BX,DX
       0000:46e4 ba ce 03        MOV        DX,0x3ce
       0000:46e7 b0 01           MOV        AL,0x1
       0000:46e9 ee              OUT        DX,AL
       0000:46ea 42              INC        DX
       0000:46eb b0 0f           MOV        AL,0xf
       0000:46ed ee              OUT        DX,AL
       0000:46ee ba ce 03        MOV        DX,0x3ce
       0000:46f1 32 c0           XOR        AL,AL
       0000:46f3 ee              OUT        DX,AL
       0000:46f4 42              INC        DX
       0000:46f5 a0 cc ce        MOV        AL,[0xcecc]
       0000:46f8 ee              OUT        DX,AL
       0000:46f9 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:46fd ba ce 03        MOV        DX,0x3ce
       0000:4700 b0 01           MOV        AL,0x1
       0000:4702 ee              OUT        DX,AL
       0000:4703 42              INC        DX
       0000:4704 b0 00           MOV        AL,0x0
       0000:4706 ee              OUT        DX,AL
       0000:4707 5a              POP        DX
       0000:4708 5b              POP        BX
       0000:4709 58              POP        AX
       0000:470a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_470b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_470b                                   XREF[2]:     FUN_0000_4f7f:0000:4f9d(c), 
                                                                                          FUN_0000_4f7f:0000:502a(c)  
       0000:470b 50              PUSH       AX
       0000:470c 53              PUSH       BX
       0000:470d 52              PUSH       DX
       0000:470e 89 da           MOV        DX,BX
       0000:4710 d1 e3           SHL        BX,0x1
       0000:4712 d1 e3           SHL        BX,0x1
       0000:4714 03 da           ADD        BX,DX
       0000:4716 d1 e3           SHL        BX,0x1
       0000:4718 d1 e3           SHL        BX,0x1
       0000:471a d1 e3           SHL        BX,0x1
       0000:471c d1 e3           SHL        BX,0x1
       0000:471e 01 c3           ADD        BX,AX
       0000:4720 81 c3 60 04     ADD        BX,0x460
       0000:4724 8b 16 37 d2     MOV        DX,word ptr [0xd237]
       0000:4728 81 ea 00 6e     SUB        DX,0x6e00
       0000:472c f7 da           NEG        DX
       0000:472e 03 da           ADD        BX,DX
       0000:4730 ba ce 03        MOV        DX,0x3ce
       0000:4733 b0 01           MOV        AL,0x1
       0000:4735 ee              OUT        DX,AL
       0000:4736 42              INC        DX
       0000:4737 b0 0f           MOV        AL,0xf
       0000:4739 ee              OUT        DX,AL
       0000:473a ba ce 03        MOV        DX,0x3ce
       0000:473d 32 c0           XOR        AL,AL
       0000:473f ee              OUT        DX,AL
       0000:4740 42              INC        DX
       0000:4741 a0 cd ce        MOV        AL,[0xcecd]
       0000:4744 ee              OUT        DX,AL
       0000:4745 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:4749 ba ce 03        MOV        DX,0x3ce
       0000:474c b0 01           MOV        AL,0x1
       0000:474e ee              OUT        DX,AL
       0000:474f 42              INC        DX
       0000:4750 b0 00           MOV        AL,0x0
       0000:4752 ee              OUT        DX,AL
       0000:4753 5a              POP        DX
       0000:4754 5b              POP        BX
       0000:4755 58              POP        AX
       0000:4756 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4757()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[2]:     0000:4785(*), 
                                                                                                   0000:47b1(*)  
             undefined1        Stack[-0x7]:1  local_7                                 XREF[1]:     0000:4771(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:4794(*)  
                             FUN_0000_4757                                   XREF[2]:     FUN_0000_483c:0000:4853(c), 
                                                                                          FUN_0000_6299:0000:62cf(c)  
       0000:4757 50              PUSH       AX
       0000:4758 53              PUSH       BX
       0000:4759 51              PUSH       CX
       0000:475a 52              PUSH       DX
       0000:475b 56              PUSH       SI
       0000:475c 57              PUSH       DI
       0000:475d 55              PUSH       BP
       0000:475e 89 e5           MOV        BP,SP
       0000:4760 ba ce 03        MOV        DX,0x3ce
       0000:4763 b0 01           MOV        AL,0x1
       0000:4765 ee              OUT        DX,AL
       0000:4766 42              INC        DX
       0000:4767 b0 0f           MOV        AL,0xf
       0000:4769 ee              OUT        DX,AL
       0000:476a ba ce 03        MOV        DX,0x3ce
       0000:476d 32 c0           XOR        AL,AL
       0000:476f ee              OUT        DX,AL
       0000:4770 42              INC        DX
       0000:4771 8a 46 07        MOV        AL,byte ptr [BP + local_7]
       0000:4774 ee              OUT        DX,AL
       0000:4775 89 df           MOV        DI,BX
       0000:4777 d1 e7           SHL        DI,0x1
       0000:4779 d1 e7           SHL        DI,0x1
       0000:477b 03 fb           ADD        DI,BX
       0000:477d d1 e7           SHL        DI,0x1
       0000:477f d1 e7           SHL        DI,0x1
       0000:4781 d1 e7           SHL        DI,0x1
       0000:4783 d1 e7           SHL        DI,0x1
       0000:4785 8b 46 0c        MOV        AX,word ptr [BP + local_2]
       0000:4788 d1 e8           SHR        AX,0x1
       0000:478a d1 e8           SHR        AX,0x1
       0000:478c d1 e8           SHR        AX,0x1
       0000:478e 01 c7           ADD        DI,AX
       0000:4790 03 3e 37 d2     ADD        DI,word ptr [0xd237]
       0000:4794 8a 46 06        MOV        AL,byte ptr [BP + local_8]
       0000:4797 32 e4           XOR        AH,AH
       0000:4799 8b f0           MOV        SI,AX
       0000:479b d1 e0           SHL        AX,0x1
       0000:479d 01 c6           ADD        SI,AX
       0000:479f d1 e0           SHL        AX,0x1
       0000:47a1 d1 e0           SHL        AX,0x1
       0000:47a3 01 c6           ADD        SI,AX
       0000:47a5 d1 e0           SHL        AX,0x1
       0000:47a7 01 c6           ADD        SI,AX
       0000:47a9 d1 e6           SHL        SI,0x1
       0000:47ab d1 e6           SHL        SI,0x1
       0000:47ad 81 c6 e4 c8     ADD        SI,0xc8e4
       0000:47b1 8a 4e 0c        MOV        CL,byte ptr [BP + local_2]
       0000:47b4 80 e1 07        AND        CL,0x7
       0000:47b7 88 cd           MOV        CH,CL
       0000:47b9 80 ed 08        SUB        CH,0x8
       0000:47bc f6 dd           NEG        CH
       0000:47be b3 24           MOV        BL,0x24
                             LAB_0000_47c0                                   XREF[1]:     0000:481e(j)  
       0000:47c0 8a 24           MOV        AH,byte ptr [SI]
       0000:47c2 46              INC        SI
       0000:47c3 d2 ec           SHR        AH,CL
       0000:47c5 ba ce 03        MOV        DX,0x3ce
       0000:47c8 b0 08           MOV        AL,0x8
       0000:47ca ee              OUT        DX,AL
       0000:47cb 42              INC        DX
       0000:47cc 88 e0           MOV        AL,AH
       0000:47ce ee              OUT        DX,AL
       0000:47cf 26 8a 25        MOV        AH,byte ptr ES:[DI]
       0000:47d2 26 c6 05 ff     MOV        byte ptr ES:[DI],0xff
       0000:47d6 47              INC        DI
       0000:47d7 b7 02           MOV        BH,0x2
                             LAB_0000_47d9                                   XREF[1]:     0000:47fd(j)  
       0000:47d9 8a 24           MOV        AH,byte ptr [SI]
       0000:47db d2 ec           SHR        AH,CL
       0000:47dd 8a 44 ff        MOV        AL,byte ptr [SI + -0x1]
       0000:47e0 46              INC        SI
       0000:47e1 86 e9           XCHG       CL,CH
       0000:47e3 d2 e0           SHL        AL,CL
       0000:47e5 86 e9           XCHG       CL,CH
       0000:47e7 0a e0           OR         AH,AL
       0000:47e9 ba ce 03        MOV        DX,0x3ce
       0000:47ec b0 08           MOV        AL,0x8
       0000:47ee ee              OUT        DX,AL
       0000:47ef 42              INC        DX
       0000:47f0 88 e0           MOV        AL,AH
       0000:47f2 ee              OUT        DX,AL
       0000:47f3 26 8a 25        MOV        AH,byte ptr ES:[DI]
       0000:47f6 26 c6 05 ff     MOV        byte ptr ES:[DI],0xff
       0000:47fa 47              INC        DI
       0000:47fb fe cf           DEC        BH
       0000:47fd 75 da           JNZ        LAB_0000_47d9
       0000:47ff 8a 64 ff        MOV        AH,byte ptr [SI + -0x1]
       0000:4802 86 e9           XCHG       CL,CH
       0000:4804 d2 e4           SHL        AH,CL
       0000:4806 86 e9           XCHG       CL,CH
       0000:4808 ba ce 03        MOV        DX,0x3ce
       0000:480b b0 08           MOV        AL,0x8
       0000:480d ee              OUT        DX,AL
       0000:480e 42              INC        DX
       0000:480f 88 e0           MOV        AL,AH
       0000:4811 ee              OUT        DX,AL
       0000:4812 26 8a 25        MOV        AH,byte ptr ES:[DI]
       0000:4815 26 c6 05 ff     MOV        byte ptr ES:[DI],0xff
       0000:4819 83 c7 4d        ADD        DI,0x4d
       0000:481c fe cb           DEC        BL
       0000:481e 75 a0           JNZ        LAB_0000_47c0
       0000:4820 ba ce 03        MOV        DX,0x3ce
       0000:4823 b0 01           MOV        AL,0x1
       0000:4825 ee              OUT        DX,AL
       0000:4826 42              INC        DX
       0000:4827 b0 00           MOV        AL,0x0
       0000:4829 ee              OUT        DX,AL
       0000:482a ba ce 03        MOV        DX,0x3ce
       0000:482d b0 08           MOV        AL,0x8
       0000:482f ee              OUT        DX,AL
       0000:4830 42              INC        DX
       0000:4831 b0 ff           MOV        AL,0xff
       0000:4833 ee              OUT        DX,AL
       0000:4834 5d              POP        BP
       0000:4835 5f              POP        DI
       0000:4836 5e              POP        SI
       0000:4837 5a              POP        DX
       0000:4838 59              POP        CX
       0000:4839 5b              POP        BX
       0000:483a 58              POP        AX
       0000:483b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_483c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_483c                                   XREF[2]:     FUN_0000_3f08:0000:3f3b(c), 
                                                                                          FUN_0000_3fde:0000:4020(c)  
       0000:483c 50              PUSH       AX
       0000:483d 53              PUSH       BX
       0000:483e 52              PUSH       DX
       0000:483f 57              PUSH       DI
       0000:4840 b8 93 00        MOV        AX,0x93
       0000:4843 bb ff 00        MOV        BX,0xff
       0000:4846 b6 08           MOV        DH,0x8
       0000:4848 bf 50 05        MOV        DI,0x550
                             LAB_0000_484b                                   XREF[1]:     0000:4859(j)  
       0000:484b 8a 15           MOV        DL,byte ptr [DI]
       0000:484d 47              INC        DI
       0000:484e 80 fa ff        CMP        DL,0xff
       0000:4851 74 08           JZ         LAB_0000_485b
       0000:4853 e8 01 ff        CALL       FUN_0000_4757                                    undefined FUN_0000_4757()
       0000:4856 05 18 00        ADD        AX,0x18
       0000:4859 eb f0           JMP        LAB_0000_484b
                             LAB_0000_485b                                   XREF[1]:     0000:4851(j)  
       0000:485b 5f              POP        DI
       0000:485c 5a              POP        DX
       0000:485d 5b              POP        BX
       0000:485e 58              POP        AX
       0000:485f c3              RET
       0000:4860 31 00           XOR        word ptr [BX + SI],AX
       0000:4862 e2 7e           LOOP       LAB_0000_48de+4
       0000:4864 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4866()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4866                                   XREF[2]:     FUN_0000_49c9:0000:49d9(c), 
                                                                                          FUN_0000_5f79:0000:5f81(c)  
       0000:4866 50              PUSH       AX
       0000:4867 51              PUSH       CX
       0000:4868 56              PUSH       SI
       0000:4869 57              PUSH       DI
       0000:486a b9 06 00        MOV        CX,0x6
                             LAB_0000_486d                                   XREF[1]:     0000:4877(j)  
       0000:486d 8a 05           MOV        AL,byte ptr [DI]
       0000:486f 3a 04           CMP        AL,byte ptr [SI]
       0000:4871 77 06           JA         LAB_0000_4879
       0000:4873 72 07           JC         LAB_0000_487c
       0000:4875 46              INC        SI
       0000:4876 47              INC        DI
       0000:4877 e2 f4           LOOP       LAB_0000_486d
                             LAB_0000_4879                                   XREF[1]:     0000:4871(j)  
       0000:4879 f9              STC
       0000:487a eb 01           JMP        LAB_0000_487d
                             LAB_0000_487c                                   XREF[1]:     0000:4873(j)  
       0000:487c f8              CLC
                             LAB_0000_487d                                   XREF[1]:     0000:487a(j)  
       0000:487d 5f              POP        DI
       0000:487e 5e              POP        SI
       0000:487f 59              POP        CX
       0000:4880 58              POP        AX
       0000:4881 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4882()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4882                                   XREF[2]:     0000:39e5(c), 0000:39ed(c)  
       0000:4882 50              PUSH       AX
       0000:4883 51              PUSH       CX
       0000:4884 52              PUSH       DX
       0000:4885 57              PUSH       DI
       0000:4886 e8 bc 00        CALL       FUN_0000_4945                                    undefined FUN_0000_4945()
       0000:4889 80 fa 0b        CMP        DL,0xb
       0000:488c 74 21           JZ         LAB_0000_48af
       0000:488e 8a c2           MOV        AL,DL
       0000:4890 b2 01           MOV        DL,0x1
       0000:4892 bf 97 05        MOV        DI,0x597
       0000:4895 e8 14 fc        CALL       FUN_0000_44ac                                    undefined FUN_0000_44ac()
       0000:4898 b9 c8 00        MOV        CX,0xc8
       0000:489b e8 8b f2        CALL       FUN_0000_3b29                                    undefined FUN_0000_3b29()
       0000:489e e8 99 01        CALL       FUN_0000_4a3a                                    undefined FUN_0000_4a3a()
       0000:48a1 e8 97 1c        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:48a4 e8 be 1d        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
       0000:48a7 e8 16 00        CALL       FUN_0000_48c0                                    undefined FUN_0000_48c0()
       0000:48aa e8 8e 1c        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:48ad eb 06           JMP        LAB_0000_48b5
                             LAB_0000_48af                                   XREF[1]:     0000:488c(j)  
       0000:48af e8 88 01        CALL       FUN_0000_4a3a                                    undefined FUN_0000_4a3a()
       0000:48b2 e8 86 1c        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
                             LAB_0000_48b5                                   XREF[1]:     0000:48ad(j)  
       0000:48b5 e8 ad 1d        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
       0000:48b8 e8 80 1c        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:48bb 5f              POP        DI
       0000:48bc 5a              POP        DX
       0000:48bd 59              POP        CX
       0000:48be 58              POP        AX
       0000:48bf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_48c0()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x2]:1  local_2                                 XREF[1]:     0000:4906(*)  
                             FUN_0000_48c0                                   XREF[1]:     FUN_0000_4882:0000:48a7(c)  
       0000:48c0 50              PUSH       AX
       0000:48c1 51              PUSH       CX
       0000:48c2 56              PUSH       SI
       0000:48c3 57              PUSH       DI
       0000:48c4 55              PUSH       BP
       0000:48c5 89 e5           MOV        BP,SP
       0000:48c7 8a d8           MOV        BL,AL
       0000:48c9 d0 e3           SHL        BL,0x1
       0000:48cb d0 e3           SHL        BL,0x1
       0000:48cd d0 e3           SHL        BL,0x1
       0000:48cf 28 c3           SUB        BL,AL
       0000:48d1 d0 e3           SHL        BL,0x1
       0000:48d3 32 ff           XOR        BH,BH
       0000:48d5 81 c3 8e 00     ADD        BX,0x8e
       0000:48d9 b8 17 00        MOV        AX,0x17
       0000:48dc 50              PUSH       AX
       0000:48dd 53              PUSH       BX
                             LAB_0000_48de+4                                 XREF[0,1]:   0000:4862(j)  
       0000:48de c6 06 cc        MOV        byte ptr [0xcecc],0xe
                 ce 0e
       0000:48e3 c6 06 cd        MOV        byte ptr [0xcecd],0x7
                 ce 07
       0000:48e8 bf 6c d3        MOV        DI,0xd36c
       0000:48eb b9 10 00        MOV        CX,0x10
                             LAB_0000_48ee                                   XREF[1]:     0000:48f2(j)  
       0000:48ee c6 05 00        MOV        byte ptr [DI],0x0
       0000:48f1 47              INC        DI
       0000:48f2 e2 fa           LOOP       LAB_0000_48ee
       0000:48f4 bf 6a d3        MOV        DI,0xd36a
       0000:48f7 c6 05 0f        MOV        byte ptr [DI],0xf
       0000:48fa e8 82 06        CALL       FUN_0000_4f7f                                    undefined FUN_0000_4f7f()
       0000:48fd 8a 4d 01        MOV        CL,byte ptr [DI + 0x1]
       0000:4900 32 ed           XOR        CH,CH
       0000:4902 85 c9           TEST       CX,CX
       0000:4904 74 1f           JZ         LAB_0000_4925
       0000:4906 8a 46 08        MOV        AL,byte ptr [BP + local_2]
       0000:4909 fe c8           DEC        AL
       0000:490b 32 e4           XOR        AH,AH
       0000:490d d1 e0           SHL        AX,0x1
       0000:490f d1 e0           SHL        AX,0x1
       0000:4911 d1 e0           SHL        AX,0x1
       0000:4913 d1 e0           SHL        AX,0x1
       0000:4915 05 ac d2        ADD        AX,0xd2ac
       0000:4918 8b f0           MOV        SI,AX
       0000:491a 83 c7 02        ADD        DI,0x2
                             LAB_0000_491d                                   XREF[1]:     0000:4923(j)  
       0000:491d 8a 05           MOV        AL,byte ptr [DI]
       0000:491f 88 04           MOV        byte ptr [SI],AL
       0000:4921 46              INC        SI
       0000:4922 47              INC        DI
       0000:4923 e2 f8           LOOP       LAB_0000_491d
                             LAB_0000_4925                                   XREF[1]:     0000:4904(j)  
       0000:4925 bf 6c d3        MOV        DI,0xd36c
       0000:4928 8a 45 ff        MOV        AL,byte ptr [DI + -0x1]
       0000:492b 32 e4           XOR        AH,AH
       0000:492d 01 c7           ADD        DI,AX
       0000:492f c6 05 00        MOV        byte ptr [DI],0x0
       0000:4932 5b              POP        BX
       0000:4933 58              POP        AX
       0000:4934 c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4939 bf 6c d3        MOV        DI,0xd36c
       0000:493c e8 4b f5        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:493f 5d              POP        BP
       0000:4940 5f              POP        DI
       0000:4941 5e              POP        SI
       0000:4942 59              POP        CX
       0000:4943 58              POP        AX
       0000:4944 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4945()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:4951(*)  
                             FUN_0000_4945                                   XREF[1]:     FUN_0000_4882:0000:4886(c)  
       0000:4945 50              PUSH       AX
       0000:4946 53              PUSH       BX
       0000:4947 51              PUSH       CX
       0000:4948 52              PUSH       DX
       0000:4949 55              PUSH       BP
       0000:494a 89 e5           MOV        BP,SP
       0000:494c e8 7a 00        CALL       FUN_0000_49c9                                    undefined FUN_0000_49c9()
       0000:494f fe c2           INC        DL
       0000:4951 88 56 02        MOV        byte ptr [BP + local_8],DL
       0000:4954 80 fa 0b        CMP        DL,0xb
       0000:4957 74 6a           JZ         LAB_0000_49c3
       0000:4959 8a c2           MOV        AL,DL
       0000:495b e8 8e 00        CALL       FUN_0000_49ec                                    undefined FUN_0000_49ec()
       0000:495e fe ca           DEC        DL
       0000:4960 88 d3           MOV        BL,DL
       0000:4962 d0 e3           SHL        BL,0x1
       0000:4964 d0 e3           SHL        BL,0x1
       0000:4966 d0 e3           SHL        BL,0x1
       0000:4968 2a da           SUB        BL,DL
       0000:496a 32 ff           XOR        BH,BH
       0000:496c 81 c3 66 d2     ADD        BX,0xd266
       0000:4970 a0 9b d3        MOV        AL,[0xd39b]
       0000:4973 88 07           MOV        byte ptr [BX],AL
       0000:4975 a0 9c d3        MOV        AL,[0xd39c]
       0000:4978 88 47 01        MOV        byte ptr [BX + 0x1],AL
       0000:497b a0 9d d3        MOV        AL,[0xd39d]
       0000:497e 88 47 02        MOV        byte ptr [BX + 0x2],AL
       0000:4981 a0 9e d3        MOV        AL,[0xd39e]
       0000:4984 88 47 03        MOV        byte ptr [BX + 0x3],AL
       0000:4987 a0 9f d3        MOV        AL,[0xd39f]
       0000:498a 88 47 04        MOV        byte ptr [BX + 0x4],AL
       0000:498d a0 a0 d3        MOV        AL,[0xd3a0]
       0000:4990 88 47 05        MOV        byte ptr [BX + 0x5],AL
       0000:4993 88 d3           MOV        BL,DL
       0000:4995 d0 e3           SHL        BL,0x1
       0000:4997 02 da           ADD        BL,DL
       0000:4999 32 ff           XOR        BH,BH
       0000:499b 81 c3 4c d3     ADD        BX,0xd34c
       0000:499f a0 a8 d3        MOV        AL,[0xd3a8]
       0000:49a2 88 07           MOV        byte ptr [BX],AL
       0000:49a4 a0 a9 d3        MOV        AL,[0xd3a9]
       0000:49a7 88 47 01        MOV        byte ptr [BX + 0x1],AL
       0000:49aa 88 d3           MOV        BL,DL
       0000:49ac d0 e3           SHL        BL,0x1
       0000:49ae d0 e3           SHL        BL,0x1
       0000:49b0 d0 e3           SHL        BL,0x1
       0000:49b2 d0 e3           SHL        BL,0x1
       0000:49b4 32 ff           XOR        BH,BH
       0000:49b6 81 c3 ac d2     ADD        BX,0xd2ac
       0000:49ba b9 10 00        MOV        CX,0x10
                             LAB_0000_49bd                                   XREF[1]:     0000:49c1(j)  
       0000:49bd c6 07 00        MOV        byte ptr [BX],0x0
       0000:49c0 43              INC        BX
       0000:49c1 e2 fa           LOOP       LAB_0000_49bd
                             LAB_0000_49c3                                   XREF[1]:     0000:4957(j)  
       0000:49c3 5d              POP        BP
       0000:49c4 5a              POP        DX
       0000:49c5 59              POP        CX
       0000:49c6 5b              POP        BX
       0000:49c7 58              POP        AX
       0000:49c8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_49c9()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x4]:1  local_4                                 XREF[1]:     0000:49e3(*)  
                             FUN_0000_49c9                                   XREF[1]:     FUN_0000_4945:0000:494c(c)  
       0000:49c9 51              PUSH       CX
       0000:49ca 52              PUSH       DX
       0000:49cb 56              PUSH       SI
       0000:49cc 57              PUSH       DI
       0000:49cd 55              PUSH       BP
       0000:49ce 89 e5           MOV        BP,SP
       0000:49d0 bf a5 d2        MOV        DI,0xd2a5
       0000:49d3 be 9b d3        MOV        SI,0xd39b
       0000:49d6 b9 0a 00        MOV        CX,0xa
                             LAB_0000_49d9                                   XREF[1]:     0000:49e1(j)  
       0000:49d9 e8 8a fe        CALL       FUN_0000_4866                                    undefined FUN_0000_4866()
       0000:49dc 72 05           JC         LAB_0000_49e3
       0000:49de 83 ef 07        SUB        DI,0x7
       0000:49e1 e2 f6           LOOP       LAB_0000_49d9
                             LAB_0000_49e3                                   XREF[1]:     0000:49dc(j)  
       0000:49e3 88 4e 06        MOV        byte ptr [BP + local_4],CL
       0000:49e6 5d              POP        BP
       0000:49e7 5f              POP        DI
       0000:49e8 5e              POP        SI
       0000:49e9 5a              POP        DX
       0000:49ea 59              POP        CX
       0000:49eb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_49ec()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_49ec                                   XREF[1]:     FUN_0000_4945:0000:495b(c)  
       0000:49ec 50              PUSH       AX
       0000:49ed 51              PUSH       CX
       0000:49ee 56              PUSH       SI
       0000:49ef 3c 0a           CMP        AL,0xa
       0000:49f1 74 43           JZ         LAB_0000_4a36
       0000:49f3 2c 0a           SUB        AL,0xa
       0000:49f5 f6 d8           NEG        AL
       0000:49f7 88 c4           MOV        AH,AL
       0000:49f9 88 c1           MOV        CL,AL
       0000:49fb d0 e1           SHL        CL,0x1
       0000:49fd d0 e1           SHL        CL,0x1
       0000:49ff d0 e1           SHL        CL,0x1
       0000:4a01 2a c8           SUB        CL,AL
       0000:4a03 32 ed           XOR        CH,CH
       0000:4a05 be ab d2        MOV        SI,0xd2ab
                             LAB_0000_4a08                                   XREF[1]:     0000:4a0e(j)  
       0000:4a08 8a 44 f9        MOV        AL,byte ptr [SI + -0x7]
       0000:4a0b 88 04           MOV        byte ptr [SI],AL
       0000:4a0d 4e              DEC        SI
       0000:4a0e e2 f8           LOOP       LAB_0000_4a08
       0000:4a10 88 e1           MOV        CL,AH
       0000:4a12 d0 e1           SHL        CL,0x1
       0000:4a14 d0 e1           SHL        CL,0x1
       0000:4a16 d0 e1           SHL        CL,0x1
       0000:4a18 d0 e1           SHL        CL,0x1
       0000:4a1a be 4b d3        MOV        SI,0xd34b
                             LAB_0000_4a1d                                   XREF[1]:     0000:4a23(j)  
       0000:4a1d 8a 44 f0        MOV        AL,byte ptr [SI + -0x10]
       0000:4a20 88 04           MOV        byte ptr [SI],AL
       0000:4a22 4e              DEC        SI
       0000:4a23 e2 f8           LOOP       LAB_0000_4a1d
       0000:4a25 88 e1           MOV        CL,AH
       0000:4a27 d0 e1           SHL        CL,0x1
       0000:4a29 02 cc           ADD        CL,AH
       0000:4a2b be 69 d3        MOV        SI,0xd369
                             LAB_0000_4a2e                                   XREF[1]:     0000:4a34(j)  
       0000:4a2e 8a 44 fd        MOV        AL,byte ptr [SI + -0x3]
       0000:4a31 88 04           MOV        byte ptr [SI],AL
       0000:4a33 4e              DEC        SI
       0000:4a34 e2 f8           LOOP       LAB_0000_4a2e
                             LAB_0000_4a36                                   XREF[1]:     0000:49f1(j)  
       0000:4a36 5e              POP        SI
       0000:4a37 59              POP        CX
       0000:4a38 58              POP        AX
       0000:4a39 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4a3a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4a3a                                   XREF[3]:     FUN_0000_4882:0000:489e(c), 
                                                                                          FUN_0000_4882:0000:48af(c), 
                                                                                          FUN_0000_4ba7:0000:4ba7(c)  
       0000:4a3a f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:4a3f 74 05           JZ         LAB_0000_4a46
       0000:4a41 e8 69 1c        CALL       FUN_0000_66ad                                    undefined FUN_0000_66ad()
       0000:4a44 eb 03           JMP        LAB_0000_4a49
                             LAB_0000_4a46                                   XREF[1]:     0000:4a3f(j)  
       0000:4a46 e8 53 1c        CALL       FUN_0000_669c                                    undefined FUN_0000_669c()
                             LAB_0000_4a49                                   XREF[1]:     0000:4a44(j)  
       0000:4a49 e8 ea 00        CALL       FUN_0000_4b36                                    undefined FUN_0000_4b36()
       0000:4a4c e8 2c 01        CALL       FUN_0000_4b7b                                    undefined FUN_0000_4b7b()
       0000:4a4f e8 01 00        CALL       FUN_0000_4a53                                    undefined FUN_0000_4a53()
       0000:4a52 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4a53()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4a53                                   XREF[1]:     FUN_0000_4a3a:0000:4a4f(c)  
       0000:4a53 50              PUSH       AX
       0000:4a54 53              PUSH       BX
       0000:4a55 51              PUSH       CX
       0000:4a56 52              PUSH       DX
       0000:4a57 57              PUSH       DI
       0000:4a58 c6 06 cc        MOV        byte ptr [0xcecc],0x1
                 ce 01
       0000:4a5d c6 06 cd        MOV        byte ptr [0xcecd],0x7
                 ce 07
       0000:4a62 b8 17 00        MOV        AX,0x17
       0000:4a65 bb 80 00        MOV        BX,0x80
       0000:4a68 bf d9 05        MOV        DI,0x5d9
       0000:4a6b e8 1c f4        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4a6e c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4a73 83 c3 1c        ADD        BX,0x1c
       0000:4a76 b9 0a 00        MOV        CX,0xa
       0000:4a79 bf ac d2        MOV        DI,0xd2ac
                             LAB_0000_4a7c                                   XREF[1]:     0000:4a85(j)  
       0000:4a7c e8 0b f4        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4a7f 83 c3 0e        ADD        BX,0xe
       0000:4a82 83 c7 10        ADD        DI,0x10
       0000:4a85 e2 f5           LOOP       LAB_0000_4a7c
       0000:4a87 81 eb 8c 00     SUB        BX,0x8c
       0000:4a8b b9 0a 00        MOV        CX,0xa
       0000:4a8e bf 4c d3        MOV        DI,0xd34c
       0000:4a91 b8 2c 00        MOV        AX,0x2c
                             LAB_0000_4a94                                   XREF[1]:     0000:4a9d(j)  
       0000:4a94 e8 30 f4        CALL       FUN_0000_3ec7                                    undefined FUN_0000_3ec7()
       0000:4a97 83 c3 0e        ADD        BX,0xe
       0000:4a9a 83 c7 03        ADD        DI,0x3
       0000:4a9d e2 f5           LOOP       LAB_0000_4a94
       0000:4a9f 81 eb 8c 00     SUB        BX,0x8c
       0000:4aa3 b9 0a 00        MOV        CX,0xa
       0000:4aa6 bf 66 d2        MOV        DI,0xd266
       0000:4aa9 b8 33 00        MOV        AX,0x33
                             LAB_0000_4aac                                   XREF[1]:     0000:4ab5(j)  
       0000:4aac e8 18 f4        CALL       FUN_0000_3ec7                                    undefined FUN_0000_3ec7()
       0000:4aaf 83 c3 0e        ADD        BX,0xe
       0000:4ab2 83 c7 07        ADD        DI,0x7
       0000:4ab5 e2 f5           LOOP       LAB_0000_4aac
       0000:4ab7 5f              POP        DI
       0000:4ab8 5a              POP        DX
       0000:4ab9 59              POP        CX
       0000:4aba 5b              POP        BX
       0000:4abb 58              POP        AX
       0000:4abc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4abd()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x2]:1  local_2                                 XREF[2]:     0000:4add(*), 
                                                                                                   0000:4ae2(*)  
                             FUN_0000_4abd                                   XREF[1]:     FUN_0000_4ba7:0000:4bb0(c)  
       0000:4abd 50              PUSH       AX
       0000:4abe 51              PUSH       CX
       0000:4abf 55              PUSH       BP
       0000:4ac0 89 e5           MOV        BP,SP
       0000:4ac2 e8 96 ec        CALL       FUN_0000_375b                                    undefined FUN_0000_375b()
       0000:4ac5 e8 22 00        CALL       FUN_0000_4aea                                    undefined FUN_0000_4aea()
       0000:4ac8 b9 00 04        MOV        CX,0x400
                             LAB_0000_4acb                                   XREF[1]:     0000:4ad5(j)  
       0000:4acb e8 4b 00        CALL       FUN_0000_4b19                                    undefined FUN_0000_4b19()
       0000:4ace e8 6a 1a        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4ad1 b4 01           MOV        AH,0x1
       0000:4ad3 cd 16           INT        0x16
       0000:4ad5 e1 f4           LOOPZ      LAB_0000_4acb
       0000:4ad7 e3 09           JCXZ       LAB_0000_4ae2
       0000:4ad9 b4 00           MOV        AH,0x0
       0000:4adb cd 16           INT        0x16
       0000:4add 88 66 04        MOV        byte ptr [BP + local_2],AH
       0000:4ae0 eb 04           JMP        LAB_0000_4ae6
                             LAB_0000_4ae2                                   XREF[1]:     0000:4ad7(j)  
       0000:4ae2 c6 46 04 00     MOV        byte ptr [BP + local_2],0x0
                             LAB_0000_4ae6                                   XREF[1]:     0000:4ae0(j)  
       0000:4ae6 5d              POP        BP
       0000:4ae7 59              POP        CX
       0000:4ae8 58              POP        AX
       0000:4ae9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4aea()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4aea                                   XREF[1]:     FUN_0000_4abd:0000:4ac5(c)  
       0000:4aea 50              PUSH       AX
       0000:4aeb 56              PUSH       SI
       0000:4aec be 23 07        MOV        SI,0x723
                             LAB_0000_4aef                                   XREF[1]:     0000:4b14(j)  
       0000:4aef 83 3c ff        CMP        word ptr [SI],-0x1
       0000:4af2 74 22           JZ         LAB_0000_4b16
       0000:4af4 b8 01 00        MOV        AX,0x1
       0000:4af7 50              PUSH       AX
       0000:4af8 ff 34           PUSH       word ptr [SI]
       0000:4afa 83 c6 02        ADD        SI,0x2
       0000:4afd ff 34           PUSH       word ptr [SI]
       0000:4aff 83 c6 02        ADD        SI,0x2
       0000:4b02 ff 34           PUSH       word ptr [SI]
       0000:4b04 83 c6 02        ADD        SI,0x2
       0000:4b07 ff 34           PUSH       word ptr [SI]
       0000:4b09 83 c6 02        ADD        SI,0x2
       0000:4b0c ff 34           PUSH       word ptr [SI]
       0000:4b0e 83 c6 02        ADD        SI,0x2
       0000:4b11 e8 1f ee        CALL       FUN_0000_3933                                    undefined FUN_0000_3933()
       0000:4b14 eb d9           JMP        LAB_0000_4aef
                             LAB_0000_4b16                                   XREF[1]:     0000:4af2(j)  
       0000:4b16 5e              POP        SI
       0000:4b17 58              POP        AX
       0000:4b18 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4b19()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4b19                                   XREF[1]:     FUN_0000_4abd:0000:4acb(c)  
       0000:4b19 fe 06 3c d2     INC        byte ptr [0xd23c]
       0000:4b1d 80 3e 3c        CMP        byte ptr [0xd23c],0x3
                 d2 03
       0000:4b22 75 05           JNZ        LAB_0000_4b29
       0000:4b24 c6 06 3c        MOV        byte ptr [0xd23c],0x0
                 d2 00
                             LAB_0000_4b29                                   XREF[1]:     0000:4b22(j)  
       0000:4b29 e8 8d 0a        CALL       FUN_0000_55b9                                    undefined FUN_0000_55b9()
       0000:4b2c e8 06 e7        CALL       FUN_0000_3235                                    undefined FUN_0000_3235()
       0000:4b2f e8 c7 0a        CALL       FUN_0000_55f9                                    undefined FUN_0000_55f9()
       0000:4b32 e8 15 0b        CALL       FUN_0000_564a                                    undefined FUN_0000_564a()
       0000:4b35 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4b36()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4b36                                   XREF[1]:     FUN_0000_4a3a:0000:4a49(c)  
       0000:4b36 50              PUSH       AX
       0000:4b37 53              PUSH       BX
       0000:4b38 51              PUSH       CX
       0000:4b39 52              PUSH       DX
       0000:4b3a b8 00 00        MOV        AX,0x0
       0000:4b3d bb 00 00        MOV        BX,0x0
       0000:4b40 b9 7f 02        MOV        CX,0x27f
       0000:4b43 ba 5d 01        MOV        DX,0x15d
       0000:4b46 e8 a9 f7        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4b49 b8 10 00        MOV        AX,0x10
       0000:4b4c bb 0c 00        MOV        BX,0xc
       0000:4b4f b9 6f 02        MOV        CX,0x26f
       0000:4b52 ba 51 01        MOV        DX,0x151
       0000:4b55 e8 1a f8        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:4b58 b8 30 00        MOV        AX,0x30
       0000:4b5b bb 26 00        MOV        BX,0x26
       0000:4b5e b9 4f 02        MOV        CX,0x24f
       0000:4b61 ba 55 00        MOV        DX,0x55
       0000:4b64 e8 8b f7        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4b67 b8 98 00        MOV        AX,0x98
       0000:4b6a bb 70 00        MOV        BX,0x70
       0000:4b6d b9 e7 01        MOV        CX,0x1e7
       0000:4b70 ba 37 01        MOV        DX,0x137
       0000:4b73 e8 7c f7        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4b76 5a              POP        DX
       0000:4b77 59              POP        CX
       0000:4b78 5b              POP        BX
       0000:4b79 58              POP        AX
       0000:4b7a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4b7b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4b7b                                   XREF[1]:     FUN_0000_4a3a:0000:4a4c(c)  
       0000:4b7b 50              PUSH       AX
       0000:4b7c 53              PUSH       BX
       0000:4b7d 52              PUSH       DX
       0000:4b7e 56              PUSH       SI
       0000:4b7f c6 06 cc        MOV        byte ptr [0xcecc],0x4
                 ce 04
       0000:4b84 b8 0d 00        MOV        AX,0xd
       0000:4b87 bb 2c 00        MOV        BX,0x2c
       0000:4b8a be 00 07        MOV        SI,0x700
                             LAB_0000_4b8d                                   XREF[1]:     0000:4ba0(j)  
       0000:4b8d 8a 14           MOV        DL,byte ptr [SI]
       0000:4b8f 80 fa ff        CMP        DL,0xff
       0000:4b92 74 0e           JZ         LAB_0000_4ba2
       0000:4b94 80 fa 0b        CMP        DL,0xb
       0000:4b97 74 03           JZ         LAB_0000_4b9c
       0000:4b99 e8 7d fa        CALL       FUN_0000_4619                                    undefined FUN_0000_4619()
                             LAB_0000_4b9c                                   XREF[1]:     0000:4b97(j)  
       0000:4b9c 05 03 00        ADD        AX,0x3
       0000:4b9f 46              INC        SI
       0000:4ba0 eb eb           JMP        LAB_0000_4b8d
                             LAB_0000_4ba2                                   XREF[1]:     0000:4b92(j)  
       0000:4ba2 5e              POP        SI
       0000:4ba3 5a              POP        DX
       0000:4ba4 5b              POP        BX
       0000:4ba5 58              POP        AX
       0000:4ba6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4ba7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4ba7                                   XREF[1]:     FUN_0000_3c38:0000:3c4a(c)  
       0000:4ba7 e8 90 fe        CALL       FUN_0000_4a3a                                    undefined FUN_0000_4a3a()
       0000:4baa e8 8e 19        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4bad e8 b5 1a        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
       0000:4bb0 e8 0a ff        CALL       FUN_0000_4abd                                    undefined FUN_0000_4abd()
       0000:4bb3 c3              RET
       0000:4bb4 e8 34 00        CALL       FUN_0000_4beb                                    undefined FUN_0000_4beb()
       0000:4bb7 e8 b8 03        CALL       FUN_0000_4f72                                    undefined FUN_0000_4f72()
       0000:4bba e8 ca 00        CALL       FUN_0000_4c87                                    undefined FUN_0000_4c87()
       0000:4bbd e8 b2 03        CALL       FUN_0000_4f72                                    undefined FUN_0000_4f72()
       0000:4bc0 e8 2f 01        CALL       FUN_0000_4cf2                                    undefined FUN_0000_4cf2()
       0000:4bc3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4bc4()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4bc4                                   XREF[5]:     FUN_0000_4beb:0000:4bf0(c), 
                                                                                          FUN_0000_4beb:0000:4c3a(c), 
                                                                                          FUN_0000_4c87:0000:4c8c(c), 
                                                                                          FUN_0000_4cf2:0000:4cf7(c), 
                                                                                          FUN_0000_4cf2:0000:4d5a(c)  
       0000:4bc4 50              PUSH       AX
       0000:4bc5 53              PUSH       BX
       0000:4bc6 51              PUSH       CX
       0000:4bc7 52              PUSH       DX
       0000:4bc8 b8 00 00        MOV        AX,0x0
       0000:4bcb bb 00 00        MOV        BX,0x0
       0000:4bce b9 7f 02        MOV        CX,0x27f
       0000:4bd1 ba 5d 01        MOV        DX,0x15d
       0000:4bd4 e8 1b f7        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:4bd7 b8 1c 00        MOV        AX,0x1c
       0000:4bda bb 15 00        MOV        BX,0x15
       0000:4bdd b9 63 02        MOV        CX,0x263
       0000:4be0 ba 48 01        MOV        DX,0x148
       0000:4be3 e8 8c f7        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:4be6 5a              POP        DX
       0000:4be7 59              POP        CX
       0000:4be8 5b              POP        BX
       0000:4be9 58              POP        AX
       0000:4bea c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4beb()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4beb                                   XREF[1]:     0000:4bb4(c)  
       0000:4beb 50              PUSH       AX
       0000:4bec 53              PUSH       BX
       0000:4bed 51              PUSH       CX
       0000:4bee 52              PUSH       DX
       0000:4bef 57              PUSH       DI
       0000:4bf0 e8 d1 ff        CALL       FUN_0000_4bc4                                    undefined FUN_0000_4bc4()
       0000:4bf3 c6 06 cc        MOV        byte ptr [0xcecc],0xa
                 ce 0a
       0000:4bf8 b8 0a 00        MOV        AX,0xa
       0000:4bfb bb 21 00        MOV        BX,0x21
       0000:4bfe bf 84 0d        MOV        DI,0xd84
                             LAB_0000_4c01                                   XREF[1]:     0000:4c15(j)  
       0000:4c01 8a 0d           MOV        CL,byte ptr [DI]
       0000:4c03 80 f9 ff        CMP        CL,0xff
       0000:4c06 74 0f           JZ         LAB_0000_4c17
       0000:4c08 e8 7f f2        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4c0b 83 c3 0e        ADD        BX,0xe
                             LAB_0000_4c0e                                   XREF[1]:     0000:4c13(j)  
       0000:4c0e 47              INC        DI
       0000:4c0f f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:4c13 75 f9           JNZ        LAB_0000_4c0e
       0000:4c15 eb ea           JMP        LAB_0000_4c01
                             LAB_0000_4c17                                   XREF[1]:     0000:4c06(j)  
       0000:4c17 c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4c1c bf 83 13        MOV        DI,0x1383
       0000:4c1f b8 1d 00        MOV        AX,0x1d
       0000:4c22 bb 03 00        MOV        BX,0x3
       0000:4c25 e8 62 f2        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4c28 bf df 13        MOV        DI,0x13df
       0000:4c2b b8 19 00        MOV        AX,0x19
       0000:4c2e bb 4c 01        MOV        BX,0x14c
       0000:4c31 e8 56 f2        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4c34 e8 04 19        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4c37 e8 38 03        CALL       FUN_0000_4f72                                    undefined FUN_0000_4f72()
       0000:4c3a e8 87 ff        CALL       FUN_0000_4bc4                                    undefined FUN_0000_4bc4()
       0000:4c3d c6 06 cc        MOV        byte ptr [0xcecc],0xa
                 ce 0a
       0000:4c42 b8 0a 00        MOV        AX,0xa
       0000:4c45 bb 21 00        MOV        BX,0x21
       0000:4c48 bf 0d 11        MOV        DI,0x110d
                             LAB_0000_4c4b                                   XREF[1]:     0000:4c5f(j)  
       0000:4c4b 8a 0d           MOV        CL,byte ptr [DI]
       0000:4c4d 80 f9 ff        CMP        CL,0xff
       0000:4c50 74 0f           JZ         LAB_0000_4c61
       0000:4c52 e8 35 f2        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4c55 83 c3 0e        ADD        BX,0xe
                             LAB_0000_4c58                                   XREF[1]:     0000:4c5d(j)  
       0000:4c58 47              INC        DI
       0000:4c59 f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:4c5d 75 f9           JNZ        LAB_0000_4c58
       0000:4c5f eb ea           JMP        LAB_0000_4c4b
                             LAB_0000_4c61                                   XREF[1]:     0000:4c50(j)  
       0000:4c61 c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4c66 bf 83 13        MOV        DI,0x1383
       0000:4c69 b8 1d 00        MOV        AX,0x1d
       0000:4c6c bb 03 00        MOV        BX,0x3
       0000:4c6f e8 18 f2        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4c72 bf 9a 13        MOV        DI,0x139a
       0000:4c75 b8 17 00        MOV        AX,0x17
       0000:4c78 bb 4c 01        MOV        BX,0x14c
       0000:4c7b e8 0c f2        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4c7e e8 ba 18        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4c81 5f              POP        DI
       0000:4c82 5a              POP        DX
       0000:4c83 59              POP        CX
       0000:4c84 5b              POP        BX
       0000:4c85 58              POP        AX
       0000:4c86 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4c87()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4c87                                   XREF[1]:     0000:4bba(c)  
       0000:4c87 50              PUSH       AX
       0000:4c88 53              PUSH       BX
       0000:4c89 51              PUSH       CX
       0000:4c8a 52              PUSH       DX
       0000:4c8b 56              PUSH       SI
       0000:4c8c e8 35 ff        CALL       FUN_0000_4bc4                                    undefined FUN_0000_4bc4()
       0000:4c8f be 1f 14        MOV        SI,0x141f
       0000:4c92 b1 01           MOV        CL,0x1
                             LAB_0000_4c94                                   XREF[1]:     0000:4ca9(j)  
       0000:4c94 8b 04           MOV        AX,word ptr [SI]
       0000:4c96 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:4c99 83 c6 04        ADD        SI,0x4
       0000:4c9c 3d ff ff        CMP        AX,0xffff
       0000:4c9f 74 03           JZ         LAB_0000_4ca4
       0000:4ca1 e8 0c 0e        CALL       FUN_0000_5ab0                                    undefined FUN_0000_5ab0()
                             LAB_0000_4ca4                                   XREF[1]:     0000:4c9f(j)  
       0000:4ca4 fe c1           INC        CL
       0000:4ca6 80 f9 20        CMP        CL,0x20
       0000:4ca9 75 e9           JNZ        LAB_0000_4c94
       0000:4cab c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4cb0 bf 83 13        MOV        DI,0x1383
       0000:4cb3 b8 1d 00        MOV        AX,0x1d
       0000:4cb6 bb 03 00        MOV        BX,0x3
       0000:4cb9 e8 ce f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4cbc bf bd 13        MOV        DI,0x13bd
       0000:4cbf b8 17 00        MOV        AX,0x17
       0000:4cc2 bb 4c 01        MOV        BX,0x14c
       0000:4cc5 e8 c2 f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4cc8 c6 06 cc        MOV        byte ptr [0xcecc],0xa
                 ce 0a
       0000:4ccd bf 9b 14        MOV        DI,0x149b
                             LAB_0000_4cd0                                   XREF[1]:     0000:4ce7(j)  
       0000:4cd0 8b 05           MOV        AX,word ptr [DI]
       0000:4cd2 3d ff ff        CMP        AX,0xffff
       0000:4cd5 74 12           JZ         LAB_0000_4ce9
       0000:4cd7 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       0000:4cda 83 c7 04        ADD        DI,0x4
       0000:4cdd e8 aa f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
                             LAB_0000_4ce0                                   XREF[1]:     0000:4ce5(j)  
       0000:4ce0 47              INC        DI
       0000:4ce1 f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:4ce5 75 f9           JNZ        LAB_0000_4ce0
       0000:4ce7 eb e7           JMP        LAB_0000_4cd0
                             LAB_0000_4ce9                                   XREF[1]:     0000:4cd5(j)  
       0000:4ce9 e8 4f 18        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4cec 5e              POP        SI
       0000:4ced 5a              POP        DX
       0000:4cee 59              POP        CX
       0000:4cef 5b              POP        BX
       0000:4cf0 58              POP        AX
       0000:4cf1 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4cf2()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4cf2                                   XREF[1]:     0000:4bc0(c)  
       0000:4cf2 50              PUSH       AX
       0000:4cf3 53              PUSH       BX
       0000:4cf4 51              PUSH       CX
       0000:4cf5 52              PUSH       DX
       0000:4cf6 56              PUSH       SI
       0000:4cf7 e8 ca fe        CALL       FUN_0000_4bc4                                    undefined FUN_0000_4bc4()
       0000:4cfa c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4cff bf 83 13        MOV        DI,0x1383
       0000:4d02 b8 1d 00        MOV        AX,0x1d
       0000:4d05 bb 03 00        MOV        BX,0x3
       0000:4d08 e8 7f f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4d0b bf df 13        MOV        DI,0x13df
       0000:4d0e b8 19 00        MOV        AX,0x19
       0000:4d11 bb 4c 01        MOV        BX,0x14c
       0000:4d14 e8 73 f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4d17 c6 06 cc        MOV        byte ptr [0xcecc],0xa
                 ce 0a
       0000:4d1c b8 0e 00        MOV        AX,0xe
       0000:4d1f bb 21 00        MOV        BX,0x21
       0000:4d22 bf b1 16        MOV        DI,0x16b1
                             LAB_0000_4d25                                   XREF[1]:     0000:4d39(j)  
       0000:4d25 8a 0d           MOV        CL,byte ptr [DI]
       0000:4d27 80 f9 ff        CMP        CL,0xff
       0000:4d2a 74 0f           JZ         LAB_0000_4d3b
       0000:4d2c e8 5b f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4d2f 83 c3 0e        ADD        BX,0xe
                             LAB_0000_4d32                                   XREF[1]:     0000:4d37(j)  
       0000:4d32 47              INC        DI
       0000:4d33 f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:4d37 75 f9           JNZ        LAB_0000_4d32
       0000:4d39 eb ea           JMP        LAB_0000_4d25
                             LAB_0000_4d3b                                   XREF[1]:     0000:4d2a(j)  
       0000:4d3b e8 8d 00        CALL       FUN_0000_4dcb                                    undefined FUN_0000_4dcb()
       0000:4d3e e8 1a 01        CALL       FUN_0000_4e5b                                    undefined FUN_0000_4e5b()
       0000:4d41 e8 f7 17        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4d44 e8 1e 19        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
                             LAB_0000_4d47                                   XREF[1]:     0000:4d54(j)  
       0000:4d47 e8 51 01        CALL       FUN_0000_4e9b                                    undefined FUN_0000_4e9b()
       0000:4d4a e8 0e 01        CALL       FUN_0000_4e5b                                    undefined FUN_0000_4e5b()
       0000:4d4d e8 eb 17        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4d50 b4 01           MOV        AH,0x1
       0000:4d52 cd 16           INT        0x16
       0000:4d54 74 f1           JZ         LAB_0000_4d47
       0000:4d56 b4 00           MOV        AH,0x0
       0000:4d58 cd 16           INT        0x16
       0000:4d5a e8 67 fe        CALL       FUN_0000_4bc4                                    undefined FUN_0000_4bc4()
       0000:4d5d c6 06 cc        MOV        byte ptr [0xcecc],0x0
                 ce 00
       0000:4d62 bf 83 13        MOV        DI,0x1383
       0000:4d65 b8 1d 00        MOV        AX,0x1d
       0000:4d68 bb 03 00        MOV        BX,0x3
       0000:4d6b e8 1c f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4d6e bf fd 13        MOV        DI,0x13fd
       0000:4d71 b8 17 00        MOV        AX,0x17
       0000:4d74 bb 4c 01        MOV        BX,0x14c
       0000:4d77 e8 10 f1        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4d7a c6 06 cc        MOV        byte ptr [0xcecc],0xa
                 ce 0a
       0000:4d7f b8 0e 00        MOV        AX,0xe
       0000:4d82 bb 23 00        MOV        BX,0x23
       0000:4d85 bf 3a 19        MOV        DI,0x193a
                             LAB_0000_4d88                                   XREF[1]:     0000:4da4(j)  
       0000:4d88 8a 0d           MOV        CL,byte ptr [DI]
       0000:4d8a 80 f9 ff        CMP        CL,0xff
       0000:4d8d 74 17           JZ         LAB_0000_4da6
       0000:4d8f 80 f9 00        CMP        CL,0x0
       0000:4d92 75 03           JNZ        LAB_0000_4d97
       0000:4d94 83 c3 05        ADD        BX,0x5
                             LAB_0000_4d97                                   XREF[1]:     0000:4d92(j)  
       0000:4d97 e8 f0 f0        CALL       FUN_0000_3e8a                                    undefined FUN_0000_3e8a()
       0000:4d9a 83 c3 0e        ADD        BX,0xe
                             LAB_0000_4d9d                                   XREF[1]:     0000:4da2(j)  
       0000:4d9d 47              INC        DI
       0000:4d9e f6 45 ff ff     TEST       byte ptr [DI + -0x1],0xff
       0000:4da2 75 f9           JNZ        LAB_0000_4d9d
       0000:4da4 eb e2           JMP        LAB_0000_4d88
                             LAB_0000_4da6                                   XREF[1]:     0000:4d8d(j)  
       0000:4da6 e8 6a 00        CALL       FUN_0000_4e13                                    undefined FUN_0000_4e13()
       0000:4da9 e8 af 00        CALL       FUN_0000_4e5b                                    undefined FUN_0000_4e5b()
       0000:4dac e8 8c 17        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4daf e8 b3 18        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
                             LAB_0000_4db2                                   XREF[1]:     0000:4dbf(j)  
       0000:4db2 e8 e6 00        CALL       FUN_0000_4e9b                                    undefined FUN_0000_4e9b()
       0000:4db5 e8 a3 00        CALL       FUN_0000_4e5b                                    undefined FUN_0000_4e5b()
       0000:4db8 e8 80 17        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:4dbb b4 01           MOV        AH,0x1
       0000:4dbd cd 16           INT        0x16
       0000:4dbf 74 f1           JZ         LAB_0000_4db2
       0000:4dc1 b4 00           MOV        AH,0x0
       0000:4dc3 cd 16           INT        0x16
       0000:4dc5 5e              POP        SI
       0000:4dc6 5a              POP        DX
       0000:4dc7 59              POP        CX
       0000:4dc8 5b              POP        BX
       0000:4dc9 58              POP        AX
       0000:4dca c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4dcb()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4dcb                                   XREF[1]:     FUN_0000_4cf2:0000:4d3b(c)  
       0000:4dcb 50              PUSH       AX
       0000:4dcc 51              PUSH       CX
       0000:4dcd 56              PUSH       SI
       0000:4dce 57              PUSH       DI
       0000:4dcf be 31 0c        MOV        SI,0xc31
       0000:4dd2 bf d3 ce        MOV        DI,0xced3
       0000:4dd5 b9 06 00        MOV        CX,0x6
                             LAB_0000_4dd8                                   XREF[1]:     0000:4dec(j)  
       0000:4dd8 8a 04           MOV        AL,byte ptr [SI]
       0000:4dda 88 45 04        MOV        byte ptr [DI + 0x4],AL
       0000:4ddd 88 45 05        MOV        byte ptr [DI + 0x5],AL
       0000:4de0 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       0000:4de3 88 45 06        MOV        byte ptr [DI + 0x6],AL
       0000:4de6 83 c6 02        ADD        SI,0x2
       0000:4de9 83 c7 07        ADD        DI,0x7
       0000:4dec e2 ea           LOOP       LAB_0000_4dd8
       0000:4dee 80 06 ec        ADD        byte ptr [0xceec],0x2
                 ce 02
       0000:4df3 be 22 19        MOV        SI,0x1922
       0000:4df6 bf d3 ce        MOV        DI,0xced3
       0000:4df9 b9 06 00        MOV        CX,0x6
                             LAB_0000_4dfc                                   XREF[1]:     0000:4e0c(j)  
       0000:4dfc 8b 04           MOV        AX,word ptr [SI]
       0000:4dfe 89 05           MOV        word ptr [DI],AX
       0000:4e00 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       0000:4e03 89 45 02        MOV        word ptr [DI + 0x2],AX
       0000:4e06 83 c6 04        ADD        SI,0x4
       0000:4e09 83 c7 07        ADD        DI,0x7
       0000:4e0c e2 ee           LOOP       LAB_0000_4dfc
       0000:4e0e 5f              POP        DI
       0000:4e0f 5e              POP        SI
       0000:4e10 59              POP        CX
       0000:4e11 58              POP        AX
       0000:4e12 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4e13()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4e13                                   XREF[1]:     FUN_0000_4cf2:0000:4da6(c)  
       0000:4e13 50              PUSH       AX
       0000:4e14 51              PUSH       CX
       0000:4e15 56              PUSH       SI
       0000:4e16 57              PUSH       DI
       0000:4e17 be 3d 0c        MOV        SI,0xc3d
       0000:4e1a bf d3 ce        MOV        DI,0xced3
       0000:4e1d b9 06 00        MOV        CX,0x6
                             LAB_0000_4e20                                   XREF[1]:     0000:4e34(j)  
       0000:4e20 8a 04           MOV        AL,byte ptr [SI]
       0000:4e22 88 45 04        MOV        byte ptr [DI + 0x4],AL
       0000:4e25 88 45 05        MOV        byte ptr [DI + 0x5],AL
       0000:4e28 8a 44 01        MOV        AL,byte ptr [SI + 0x1]
       0000:4e2b 88 45 06        MOV        byte ptr [DI + 0x6],AL
       0000:4e2e 83 c6 02        ADD        SI,0x2
       0000:4e31 83 c7 07        ADD        DI,0x7
       0000:4e34 e2 ea           LOOP       LAB_0000_4e20
       0000:4e36 80 06 ec        ADD        byte ptr [0xceec],0x2
                 ce 02
       0000:4e3b be 87 1b        MOV        SI,0x1b87
       0000:4e3e bf d3 ce        MOV        DI,0xced3
       0000:4e41 b9 06 00        MOV        CX,0x6
                             LAB_0000_4e44                                   XREF[1]:     0000:4e54(j)  
       0000:4e44 8b 04           MOV        AX,word ptr [SI]
       0000:4e46 89 05           MOV        word ptr [DI],AX
       0000:4e48 8b 44 02        MOV        AX,word ptr [SI + 0x2]
       0000:4e4b 89 45 02        MOV        word ptr [DI + 0x2],AX
       0000:4e4e 83 c6 04        ADD        SI,0x4
       0000:4e51 83 c7 07        ADD        DI,0x7
       0000:4e54 e2 ee           LOOP       LAB_0000_4e44
       0000:4e56 5f              POP        DI
       0000:4e57 5e              POP        SI
       0000:4e58 59              POP        CX
       0000:4e59 58              POP        AX
       0000:4e5a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4e5b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4e5b                                   XREF[4]:     FUN_0000_4cf2:0000:4d3e(c), 
                                                                                          FUN_0000_4cf2:0000:4d4a(c), 
                                                                                          FUN_0000_4cf2:0000:4da9(c), 
                                                                                          FUN_0000_4cf2:0000:4db5(c)  
       0000:4e5b 50              PUSH       AX
       0000:4e5c 53              PUSH       BX
       0000:4e5d 51              PUSH       CX
       0000:4e5e 52              PUSH       DX
       0000:4e5f 56              PUSH       SI
       0000:4e60 57              PUSH       DI
       0000:4e61 ba ce 03        MOV        DX,0x3ce
       0000:4e64 b0 05           MOV        AL,0x5
       0000:4e66 ee              OUT        DX,AL
       0000:4e67 42              INC        DX
       0000:4e68 b0 11           MOV        AL,0x11
       0000:4e6a ee              OUT        DX,AL
       0000:4e6b bf d3 ce        MOV        DI,0xced3
       0000:4e6e b9 06 00        MOV        CX,0x6
                             LAB_0000_4e71                                   XREF[1]:     0000:4e88(j)  
       0000:4e71 8b 05           MOV        AX,word ptr [DI]
       0000:4e73 8b 5d 02        MOV        BX,word ptr [DI + 0x2]
       0000:4e76 be a9 0b        MOV        SI,0xba9
       0000:4e79 8a 55 04        MOV        DL,byte ptr [DI + 0x4]
       0000:4e7c 32 f6           XOR        DH,DH
       0000:4e7e 03 f2           ADD        SI,DX
       0000:4e80 8b 34           MOV        SI,word ptr [SI]
       0000:4e82 e8 94 0a        CALL       FUN_0000_5919                                    undefined FUN_0000_5919()
       0000:4e85 83 c7 07        ADD        DI,0x7
       0000:4e88 e2 e7           LOOP       LAB_0000_4e71
       0000:4e8a ba ce 03        MOV        DX,0x3ce
       0000:4e8d b0 05           MOV        AL,0x5
       0000:4e8f ee              OUT        DX,AL
       0000:4e90 42              INC        DX
       0000:4e91 b0 10           MOV        AL,0x10
       0000:4e93 ee              OUT        DX,AL
       0000:4e94 5f              POP        DI
       0000:4e95 5e              POP        SI
       0000:4e96 5a              POP        DX
       0000:4e97 59              POP        CX
       0000:4e98 5b              POP        BX
       0000:4e99 58              POP        AX
       0000:4e9a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4e9b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4e9b                                   XREF[2]:     FUN_0000_4cf2:0000:4d47(c), 
                                                                                          FUN_0000_4cf2:0000:4db2(c)  
       0000:4e9b 50              PUSH       AX
       0000:4e9c 51              PUSH       CX
       0000:4e9d 56              PUSH       SI
       0000:4e9e 8a 0e 3a d2     MOV        CL,byte ptr [0xd23a]
       0000:4ea2 84 c9           TEST       CL,CL
       0000:4ea4 74 06           JZ         LAB_0000_4eac
       0000:4ea6 fe 0e 3a d2     DEC        byte ptr [0xd23a]
       0000:4eaa eb 20           JMP        LAB_0000_4ecc
                             LAB_0000_4eac                                   XREF[1]:     0000:4ea4(j)  
       0000:4eac c6 06 3a        MOV        byte ptr [0xd23a],0x4
                 d2 04
       0000:4eb1 be d3 ce        MOV        SI,0xced3
       0000:4eb4 b9 06 00        MOV        CX,0x6
                             LAB_0000_4eb7                                   XREF[1]:     0000:4eca(j)  
       0000:4eb7 8a 44 04        MOV        AL,byte ptr [SI + 0x4]
       0000:4eba 04 02           ADD        AL,0x2
       0000:4ebc 3a 44 06        CMP        AL,byte ptr [SI + 0x6]
       0000:4ebf 76 03           JBE        LAB_0000_4ec4
       0000:4ec1 8a 44 05        MOV        AL,byte ptr [SI + 0x5]
                             LAB_0000_4ec4                                   XREF[1]:     0000:4ebf(j)  
       0000:4ec4 88 44 04        MOV        byte ptr [SI + 0x4],AL
       0000:4ec7 83 c6 07        ADD        SI,0x7
       0000:4eca e2 eb           LOOP       LAB_0000_4eb7
                             LAB_0000_4ecc                                   XREF[1]:     0000:4eaa(j)  
       0000:4ecc 5e              POP        SI
       0000:4ecd 59              POP        CX
       0000:4ece 58              POP        AX
       0000:4ecf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4ed0()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4ed0                                   XREF[1]:     FUN_0000_4f26:0000:4f2e(c)  
       0000:4ed0 50              PUSH       AX
       0000:4ed1 51              PUSH       CX
       0000:4ed2 56              PUSH       SI
       0000:4ed3 57              PUSH       DI
       0000:4ed4 be 9f 1b        MOV        SI,0x1b9f
       0000:4ed7 bf a2 00        MOV        DI,0xa2
       0000:4eda b4 0f           MOV        AH,0xf
                             LAB_0000_4edc                                   XREF[1]:     0000:4eef(j)  
       0000:4edc 80 3c ff        CMP        byte ptr [SI],0xff
       0000:4edf 74 10           JZ         LAB_0000_4ef1
       0000:4ee1 e8 2a 00        CALL       FUN_0000_4f0e                                    undefined FUN_0000_4f0e()
                             LAB_0000_4ee4                                   XREF[1]:     0000:4ee9(j)  
       0000:4ee4 46              INC        SI
       0000:4ee5 f6 44 ff ff     TEST       byte ptr [SI + -0x1],0xff
       0000:4ee9 75 f9           JNZ        LAB_0000_4ee4
       0000:4eeb 81 c7 a0 00     ADD        DI,0xa0
       0000:4eef eb eb           JMP        LAB_0000_4edc
                             LAB_0000_4ef1                                   XREF[1]:     0000:4edf(j)  
       0000:4ef1 bf 57 01        MOV        DI,0x157
       0000:4ef4 b0 13           MOV        AL,0x13
                             LAB_0000_4ef6                                   XREF[1]:     0000:4f07(j)  
       0000:4ef6 b9 3a 00        MOV        CX,0x3a
                             LAB_0000_4ef9                                   XREF[1]:     0000:4f00(j)  
       0000:4ef9 26 c6 05 1e     MOV        byte ptr ES:[DI],0x1e
       0000:4efd 83 c7 02        ADD        DI,0x2
       0000:4f00 e2 f7           LOOP       LAB_0000_4ef9
       0000:4f02 83 c7 2c        ADD        DI,0x2c
       0000:4f05 fe c8           DEC        AL
       0000:4f07 75 ed           JNZ        LAB_0000_4ef6
       0000:4f09 5f              POP        DI
       0000:4f0a 5e              POP        SI
       0000:4f0b 59              POP        CX
       0000:4f0c 58              POP        AX
       0000:4f0d c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4f0e()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4f0e                                   XREF[1]:     FUN_0000_4ed0:0000:4ee1(c)  
       0000:4f0e 50              PUSH       AX
       0000:4f0f 56              PUSH       SI
       0000:4f10 57              PUSH       DI
                             LAB_0000_4f11                                   XREF[1]:     0000:4f20(j)  
       0000:4f11 8a 04           MOV        AL,byte ptr [SI]
       0000:4f13 84 c0           TEST       AL,AL
       0000:4f15 74 0b           JZ         LAB_0000_4f22
       0000:4f17 f6 d0           NOT        AL
       0000:4f19 26 89 05        MOV        word ptr ES:[DI],AX
       0000:4f1c 46              INC        SI
       0000:4f1d 83 c7 02        ADD        DI,0x2
       0000:4f20 eb ef           JMP        LAB_0000_4f11
                             LAB_0000_4f22                                   XREF[1]:     0000:4f15(j)  
       0000:4f22 5f              POP        DI
       0000:4f23 5e              POP        SI
       0000:4f24 58              POP        AX
       0000:4f25 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4f26()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4f26                                   XREF[1]:     FUN_0000_3c95:0000:3ca7(c)  
       0000:4f26 50              PUSH       AX
       0000:4f27 53              PUSH       BX
       0000:4f28 52              PUSH       DX
       0000:4f29 b8 00 b8        MOV        AX,0xb800
       0000:4f2c 8e c0           MOV        ES,AX
       0000:4f2e e8 9f ff        CALL       FUN_0000_4ed0                                    undefined FUN_0000_4ed0()
       0000:4f31 b4 02           MOV        AH,0x2
       0000:4f33 b7 00           MOV        BH,0x0
       0000:4f35 ba ff ff        MOV        DX,0xffff
       0000:4f38 cd 10           INT        0x10
       0000:4f3a e8 f9 00        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:4f3d e8 32 00        CALL       FUN_0000_4f72                                    undefined FUN_0000_4f72()
       0000:4f40 b4 02           MOV        AH,0x2
       0000:4f42 b7 00           MOV        BH,0x0
       0000:4f44 ba 00 18        MOV        DX,0x1800
       0000:4f47 cd 10           INT        0x10
       0000:4f49 5a              POP        DX
       0000:4f4a 5b              POP        BX
       0000:4f4b 58              POP        AX
       0000:4f4c c3              RET
       0000:4f4d 31 00           XOR        word ptr [BX + SI],AX
       0000:4f4f e2 7e           LOOP       LAB_0000_4fce+1
       0000:4f51 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4f53()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4f53                                   XREF[1]:     FUN_0000_3658:0000:3670(c)  
       0000:4f53 53              PUSH       BX
       0000:4f54 51              PUSH       CX
       0000:4f55 56              PUSH       SI
       0000:4f56 bb 2c d4        MOV        BX,0xd42c
       0000:4f59 be 13 01        MOV        SI,0x113
       0000:4f5c b9 04 00        MOV        CX,0x4
                             LAB_0000_4f5f                                   XREF[1]:     0000:4f68(j)  
       0000:4f5f 80 3f 01        CMP        byte ptr [BX],0x1
       0000:4f62 74 08           JZ         LAB_0000_4f6c
       0000:4f64 43              INC        BX
       0000:4f65 83 c6 02        ADD        SI,0x2
       0000:4f68 e2 f5           LOOP       LAB_0000_4f5f
       0000:4f6a eb 02           JMP        LAB_0000_4f6e
                             LAB_0000_4f6c                                   XREF[1]:     0000:4f62(j)  
       0000:4f6c ff 14           CALL       word ptr [SI]
                             LAB_0000_4f6e                                   XREF[1]:     0000:4f6a(j)  
       0000:4f6e 5e              POP        SI
       0000:4f6f 59              POP        CX
       0000:4f70 5b              POP        BX
       0000:4f71 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4f72()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_4f72                                   XREF[5]:     FUN_0000_3caf:0000:3cbc(c), 
                                                                                          0000:4bb7(c), 0000:4bbd(c), 
                                                                                          FUN_0000_4beb:0000:4c37(c), 
                                                                                          FUN_0000_4f26:0000:4f3d(c)  
       0000:4f72 50              PUSH       AX
                             LAB_0000_4f73                                   XREF[1]:     0000:4f77(j)  
       0000:4f73 b4 01           MOV        AH,0x1
       0000:4f75 cd 16           INT        0x16
       0000:4f77 74 fa           JZ         LAB_0000_4f73
       0000:4f79 b4 00           MOV        AH,0x0
       0000:4f7b cd 16           INT        0x16
       0000:4f7d 58              POP        AX
       0000:4f7e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_4f7f()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0xe]:2  local_e                                 XREF[6]:     0000:4fa0(*), 
                                                                                                   0000:4fc9(*), 
                                                                                                   0000:4feb(*), 
                                                                                                   0000:5004(*), 
                                                                                                   0000:500b(*), 
                                                                                                   0000:501a(*)  
             undefined2        Stack[-0x10]:2 local_10                                XREF[3]:     0000:4f9a(*), 
                                                                                                   0000:4fa6(*), 
                                                                                                   0000:5027(*)  
                             FUN_0000_4f7f                                   XREF[1]:     FUN_0000_48c0:0000:48fa(c)  
       0000:4f7f 50              PUSH       AX
       0000:4f80 53              PUSH       BX
       0000:4f81 51              PUSH       CX
       0000:4f82 52              PUSH       DX
       0000:4f83 56              PUSH       SI
       0000:4f84 55              PUSH       BP
       0000:4f85 89 e5           MOV        BP,SP
       0000:4f87 f6 05 ff        TEST       byte ptr [DI],0xff
       0000:4f8a 75 03           JNZ        LAB_0000_4f8f
       0000:4f8c e9 9e 00        JMP        LAB_0000_502d
                             LAB_0000_4f8f                                   XREF[1]:     0000:4f8a(j)  
       0000:4f8f 50              PUSH       AX
       0000:4f90 50              PUSH       AX
       0000:4f91 c6 45 01 00     MOV        byte ptr [DI + 0x1],0x0
       0000:4f95 89 fe           MOV        SI,DI
       0000:4f97 83 c6 02        ADD        SI,0x2
                             LAB_0000_4f9a                                   XREF[8]:     0000:4fc1(j), 0000:4fc5(j), 
                                                                                          0000:4fe5(j), 0000:4fee(j), 
                                                                                          0000:4ff3(j), 0000:4ffb(j), 
                                                                                          0000:5015(j), 0000:5024(j)  
       0000:4f9a 8b 46 fc        MOV        AX,word ptr [BP + local_10]
       0000:4f9d e8 6b f7        CALL       FUN_0000_470b                                    undefined FUN_0000_470b()
       0000:4fa0 8b 46 fe        MOV        AX,word ptr [BP + local_e]
       0000:4fa3 e8 19 f7        CALL       FUN_0000_46bf                                    undefined FUN_0000_46bf()
       0000:4fa6 89 46 fc        MOV        word ptr [BP + local_10],AX
       0000:4fa9 32 e4           XOR        AH,AH
       0000:4fab cd 16           INT        0x16
       0000:4fad 3c 08           CMP        AL,0x8
       0000:4faf 74 44           JZ         LAB_0000_4ff5
       0000:4fb1 3c 0d           CMP        AL,0xd
       0000:4fb3 74 72           JZ         LAB_0000_5027
       0000:4fb5 3c 20           CMP        AL,0x20
       0000:4fb7 72 06           JC         LAB_0000_4fbf
       0000:4fb9 3c 5f           CMP        AL,0x5f
       0000:4fbb 77 02           JA         LAB_0000_4fbf
       0000:4fbd eb 08           JMP        LAB_0000_4fc7
                             LAB_0000_4fbf                                   XREF[2]:     0000:4fb7(j), 0000:4fbb(j)  
       0000:4fbf 3c 61           CMP        AL,0x61
       0000:4fc1 72 d7           JC         LAB_0000_4f9a
       0000:4fc3 3c 7a           CMP        AL,0x7a
       0000:4fc5 77 d3           JA         LAB_0000_4f9a
                             LAB_0000_4fc7                                   XREF[1]:     0000:4fbd(j)  
       0000:4fc7 88 04           MOV        byte ptr [SI],AL
       0000:4fc9 8b 46 fe        MOV        AX,word ptr [BP + local_e]
       0000:4fcc b1 01           MOV        CL,0x1
                             LAB_0000_4fce+1                                 XREF[0,1]:   0000:4f4f(j)  
       0000:4fce b2 08           MOV        DL,0x8
       0000:4fd0 e8 43 f5        CALL       FUN_0000_4516                                    undefined FUN_0000_4516()
       0000:4fd3 8a 14           MOV        DL,byte ptr [SI]
       0000:4fd5 e8 3e f5        CALL       FUN_0000_4516                                    undefined FUN_0000_4516()
       0000:4fd8 8a 45 01        MOV        AL,byte ptr [DI + 0x1]
       0000:4fdb fe c0           INC        AL
       0000:4fdd 3a 05           CMP        AL,byte ptr [DI]
       0000:4fdf 74 0f           JZ         LAB_0000_4ff0
       0000:4fe1 fe c8           DEC        AL
       0000:4fe3 3a 05           CMP        AL,byte ptr [DI]
       0000:4fe5 74 b3           JZ         LAB_0000_4f9a
       0000:4fe7 46              INC        SI
       0000:4fe8 fe 45 01        INC        byte ptr [DI + 0x1]
       0000:4feb ff 46 fe        INC        word ptr [BP + local_e]
       0000:4fee eb aa           JMP        LAB_0000_4f9a
                             LAB_0000_4ff0                                   XREF[1]:     0000:4fdf(j)  
       0000:4ff0 fe 45 01        INC        byte ptr [DI + 0x1]
       0000:4ff3 eb a5           JMP        LAB_0000_4f9a
                             LAB_0000_4ff5                                   XREF[1]:     0000:4faf(j)  
       0000:4ff5 f6 45 01 ff     TEST       byte ptr [DI + 0x1],0xff
       0000:4ff9 75 02           JNZ        LAB_0000_4ffd
       0000:4ffb eb 9d           JMP        LAB_0000_4f9a
                             LAB_0000_4ffd                                   XREF[1]:     0000:4ff9(j)  
       0000:4ffd 8a 45 01        MOV        AL,byte ptr [DI + 0x1]
                             LAB_0000_5000                                   XREF[1]:     0000:0a25(*)  
       0000:5000 3a 05           CMP        AL,byte ptr [DI]
       0000:5002 74 13           JZ         LAB_0000_5017
       0000:5004 ff 4e fe        DEC        word ptr [BP + local_e]
       0000:5007 fe 4d 01        DEC        byte ptr [DI + 0x1]
       0000:500a 4e              DEC        SI
       0000:500b 8b 46 fe        MOV        AX,word ptr [BP + local_e]
       0000:500e b2 08           MOV        DL,0x8
       0000:5010 b1 01           MOV        CL,0x1
       0000:5012 e8 01 f5        CALL       FUN_0000_4516                                    undefined FUN_0000_4516()
       0000:5015 eb 83           JMP        LAB_0000_4f9a
                             LAB_0000_5017                                   XREF[1]:     0000:5002(j)  
       0000:5017 fe 4d 01        DEC        byte ptr [DI + 0x1]
       0000:501a 8b 46 fe        MOV        AX,word ptr [BP + local_e]
       0000:501d b2 08           MOV        DL,0x8
       0000:501f b1 01           MOV        CL,0x1
       0000:5021 e8 f2 f4        CALL       FUN_0000_4516                                    undefined FUN_0000_4516()
       0000:5024 e9 73 ff        JMP        LAB_0000_4f9a
                             LAB_0000_5027                                   XREF[1]:     0000:4fb3(j)  
       0000:5027 8b 46 fc        MOV        AX,word ptr [BP + local_10]
       0000:502a e8 de f6        CALL       FUN_0000_470b                                    undefined FUN_0000_470b()
                             LAB_0000_502d                                   XREF[1]:     0000:4f8c(j)  
       0000:502d 58              POP        AX
       0000:502e 58              POP        AX
       0000:502f 5d              POP        BP
       0000:5030 5e              POP        SI
       0000:5031 5a              POP        DX
       0000:5032 59              POP        CX
       0000:5033 5b              POP        BX
       0000:5034 58              POP        AX
       0000:5035 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5036()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5036                                   XREF[9]:     FUN_0000_37db:0000:3810(c), 
                                                                                          FUN_0000_3b29:0000:3b2c(c), 
                                                                                          FUN_0000_3b4c:0000:3b4f(c), 
                                                                                          FUN_0000_3c38:0000:3c3c(c), 
                                                                                          FUN_0000_3c38:0000:3c47(c), 
                                                                                          FUN_0000_3c95:0000:3c9e(c), 
                                                                                          FUN_0000_3caf:0000:3cb9(c), 
                                                                                          FUN_0000_4f26:0000:4f3a(c), 
                                                                                          FUN_0000_6367:0000:6373(c)  
       0000:5036 50              PUSH       AX
                             LAB_0000_5037                                   XREF[1]:     0000:5041(j)  
       0000:5037 b4 01           MOV        AH,0x1
       0000:5039 cd 16           INT        0x16
       0000:503b 74 06           JZ         LAB_0000_5043
       0000:503d b4 00           MOV        AH,0x0
       0000:503f cd 16           INT        0x16
       0000:5041 eb f4           JMP        LAB_0000_5037
                             LAB_0000_5043                                   XREF[1]:     0000:503b(j)  
       0000:5043 58              POP        AX
       0000:5044 c3              RET
       0000:5045 50              PUSH       AX
       0000:5046 53              PUSH       BX
       0000:5047 57              PUSH       DI
       0000:5048 e4 60           IN         AL,0x60
       0000:504a 50              PUSH       AX
       0000:504b e4 61           IN         AL,0x61
       0000:504d 88 c4           MOV        AH,AL
       0000:504f 0c 80           OR         AL,0x80
       0000:5051 e6 61           OUT        0x61,AL
       0000:5053 86 c4           XCHG       AH,AL
       0000:5055 e6 61           OUT        0x61,AL
       0000:5057 58              POP        AX
       0000:5058 3c e0           CMP        AL,0xe0
       0000:505a 75 08           JNZ        LAB_0000_5064
       0000:505c 2e c6 06        MOV        byte ptr CS:[DAT_0000_d41c],0x1
                 1c d4 01
       0000:5062 eb 49           JMP        LAB_0000_50ad
                             LAB_0000_5064                                   XREF[1]:     0000:505a(j)  
       0000:5064 88 c4           MOV        AH,AL
       0000:5066 80 e4 80        AND        AH,0x80
       0000:5069 24 7f           AND        AL,0x7f
       0000:506b bb 1d d4        MOV        BX,0xd41d
       0000:506e bf 2a d4        MOV        DI,0xd42a
                             LAB_0000_5071                                   XREF[1]:     0000:50a5(j)  
       0000:5071 2e 80 3f ff     CMP        byte ptr CS:[BX]=>DAT_0000_d41d,0xff
       0000:5075 74 30           JZ         LAB_0000_50a7
       0000:5077 2e 3a 07        CMP        AL,byte ptr CS:[BX]=>DAT_0000_d41d
       0000:507a 74 10           JZ         LAB_0000_508c
       0000:507c 2e f6 06        TEST       byte ptr CS:[DAT_0000_d41c],0xff
                 1c d4 ff
       0000:5082 74 1d           JZ         LAB_0000_50a1
       0000:5084 2e 3a 47 01     CMP        AL,byte ptr CS:[BX + 0x1]=>DAT_0000_d41e
       0000:5088 75 17           JNZ        LAB_0000_50a1
       0000:508a eb 08           JMP        LAB_0000_5094
                             LAB_0000_508c                                   XREF[1]:     0000:507a(j)  
       0000:508c 2e f6 06        TEST       byte ptr CS:[DAT_0000_d41c],0xff
                 1c d4 ff
       0000:5092 75 0d           JNZ        LAB_0000_50a1
                             LAB_0000_5094                                   XREF[1]:     0000:508a(j)  
       0000:5094 2e c6 05 00     MOV        byte ptr CS:[DI]=>DAT_0000_d42a,0x0
       0000:5098 84 e4           TEST       AH,AH
       0000:509a 78 03           JS         LAB_0000_509f
       0000:509c 2e fe 05        INC        byte ptr CS:[DI]=>DAT_0000_d42a
                             LAB_0000_509f                                   XREF[1]:     0000:509a(j)  
       0000:509f eb 06           JMP        LAB_0000_50a7
                             LAB_0000_50a1                                   XREF[3]:     0000:5082(j), 0000:5088(j), 
                                                                                          0000:5092(j)  
       0000:50a1 83 c3 02        ADD        BX,0x2
       0000:50a4 47              INC        DI
       0000:50a5 eb ca           JMP        LAB_0000_5071
                             LAB_0000_50a7                                   XREF[2]:     0000:5075(j), 0000:509f(j)  
       0000:50a7 2e c6 06        MOV        byte ptr CS:[DAT_0000_d41c],0x0
                 1c d4 00
                             LAB_0000_50ad                                   XREF[1]:     0000:5062(j)  
       0000:50ad b0 20           MOV        AL,0x20
       0000:50af e6 20           OUT        0x20,AL
       0000:50b1 fb              STI
       0000:50b2 5f              POP        DI
       0000:50b3 5b              POP        BX
       0000:50b4 58              POP        AX
       0000:50b5 cf              IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_50b6()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_50b6                                   XREF[1]:     FUN_0000_5134:0000:5138(c)  
       0000:50b6 50              PUSH       AX
       0000:50b7 53              PUSH       BX
       0000:50b8 06              PUSH       ES
       0000:50b9 b8 09 35        MOV        AX,0x3509
       0000:50bc cd 21           INT        0x21
       0000:50be 8c c0           MOV        AX,ES
       0000:50c0 a3 18 d4        MOV        [0xd418],AX
       0000:50c3 89 1e 1a d4     MOV        word ptr [0xd41a],BX
       0000:50c7 07              POP        ES
       0000:50c8 5b              POP        BX
       0000:50c9 58              POP        AX
       0000:50ca c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_50cb()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_50cb                                   XREF[1]:     FUN_0000_3658:0000:365d(c)  
       0000:50cb 50              PUSH       AX
       0000:50cc 51              PUSH       CX
       0000:50cd 52              PUSH       DX
       0000:50ce 57              PUSH       DI
       0000:50cf b8 09 25        MOV        AX,0x2509
       0000:50d2 ba 45 50        MOV        DX,0x5045
       0000:50d5 cd 21           INT        0x21
       0000:50d7 bf 2a d4        MOV        DI,0xd42a
       0000:50da b9 06 00        MOV        CX,0x6
                             LAB_0000_50dd                                   XREF[1]:     0000:50e1(j)  
       0000:50dd c6 05 00        MOV        byte ptr [DI],0x0
       0000:50e0 47              INC        DI
       0000:50e1 e2 fa           LOOP       LAB_0000_50dd
       0000:50e3 5f              POP        DI
       0000:50e4 5a              POP        DX
       0000:50e5 59              POP        CX
       0000:50e6 58              POP        AX
       0000:50e7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_50e8()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_50e8                                   XREF[2]:     0000:36f6(c), 
                                                                                          FUN_0000_3c95:0000:3c9b(c)  
       0000:50e8 50              PUSH       AX
       0000:50e9 52              PUSH       DX
       0000:50ea 1e              PUSH       DS
       0000:50eb 8b 16 1a d4     MOV        DX,word ptr [0xd41a]
       0000:50ef a1 18 d4        MOV        AX,[0xd418]
       0000:50f2 8e d8           MOV        DS,AX
       0000:50f4 b8 09 25        MOV        AX,0x2509
       0000:50f7 cd 21           INT        0x21
       0000:50f9 b8 40 00        MOV        AX,0x40
       0000:50fc 8e d8           MOV        DS,AX
       0000:50fe 80 26 17        AND        byte ptr [0x17]=>s_e_in_charge_of_programming_   = "e in charge of programming - 
                 00 f0
       0000:5103 80 26 18        AND        byte ptr [0x18]=>s_in_charge_of_programming_-_   = " in charge of programming - B
                 00 fc
       0000:5108 80 26 96        AND        byte ptr [0x96]=>s_n_-_Ben_North_..._Graphics_   = "n - Ben North   ...   Graphic
                 00 f3
       0000:510d 1f              POP        DS
       0000:510e 5a              POP        DX
       0000:510f 58              POP        AX
       0000:5110 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_0000_5111()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5111                                   XREF[1]:     0000:0100(c)  
       0000:5111 e8 20 00        CALL       FUN_0000_5134                                    undefined FUN_0000_5134()
       0000:5114 e8 ee 0f        CALL       FUN_0000_6105                                    undefined FUN_0000_6105()
       0000:5117 e8 dd 0f        CALL       FUN_0000_60f7                                    undefined FUN_0000_60f7()
       0000:511a e8 78 e1        CALL       FUN_0000_3295                                    undefined FUN_0000_3295()
       0000:511d e8 55 e3        CALL       FUN_0000_3475                                    undefined FUN_0000_3475()
       0000:5120 e8 c7 e2        CALL       FUN_0000_33ea                                    undefined FUN_0000_33ea()
       0000:5123 e8 e6 13        CALL       FUN_0000_650c                                    undefined FUN_0000_650c()
       0000:5126 e8 79 e1        CALL       FUN_0000_32a2                                    undefined FUN_0000_32a2()
       0000:5129 e8 3c e2        CALL       FUN_0000_3368                                    undefined FUN_0000_3368()
       0000:512c e8 38 12        CALL       FUN_0000_6367                                    undefined FUN_0000_6367()
       0000:512f b0 00           MOV        AL,0x0
       0000:5131 e9 a2 00        JMP        FUN_0000_51d6                                    undefined FUN_0000_51d6()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5134()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5134                                   XREF[1]:     FUN_0000_5111:0000:5111(c)  
       0000:5134 50              PUSH       AX
       0000:5135 51              PUSH       CX
       0000:5136 56              PUSH       SI
       0000:5137 57              PUSH       DI
       0000:5138 e8 7b ff        CALL       FUN_0000_50b6                                    undefined FUN_0000_50b6()
       0000:513b c6 06 d1        MOV        byte ptr [0xced1],0x0
                 ce 00
       0000:5140 c6 06 d2        MOV        byte ptr [0xced2],0x0
                 ce 00
       0000:5145 be 8c 07        MOV        SI,0x78c
       0000:5148 bf 4e 80        MOV        DI,0x804e
                             LAB_0000_514b                                   XREF[1]:     0000:5155(j)  
       0000:514b 8a 04           MOV        AL,byte ptr [SI]
       0000:514d 88 05           MOV        byte ptr [DI],AL
       0000:514f 3c 24           CMP        AL,0x24
       0000:5151 74 04           JZ         LAB_0000_5157
       0000:5153 46              INC        SI
       0000:5154 47              INC        DI
       0000:5155 eb f4           JMP        LAB_0000_514b
                             LAB_0000_5157                                   XREF[1]:     0000:5151(j)  
       0000:5157 c6 06 3c        MOV        byte ptr [0xd23c],0x0
                 d2 00
       0000:515c c6 06 a1        MOV        byte ptr [0xd3a1],0xff
                 d3 ff
       0000:5161 c6 06 aa        MOV        byte ptr [0xd3aa],0xff
                 d3 ff
       0000:5166 c6 06 ad        MOV        byte ptr [0xd3ad],0xff
                 d3 ff
       0000:516b c7 06 99        MOV        word ptr [0xd399],0x0
                 d3 00 00
       0000:5171 c6 06 0e        MOV        byte ptr [0xcf0e],0x0
                 cf 00
       0000:5176 c6 06 98        MOV        byte ptr [0xd398],0x1
                 d3 01
       0000:517b c6 06 3a        MOV        byte ptr [0xd23a],0x4
                 d2 04
       0000:5180 c6 06 3b        MOV        byte ptr [0xd23b],0x1
                 d2 01
       0000:5185 c7 06 3d        MOV        word ptr [0xd23d],LAB_0000_05fe+2
                 d2 00 06
       0000:518b c6 06 39        MOV        byte ptr [0xd239],0x1
                 d2 01
       0000:5190 c7 06 37        MOV        word ptr [0xd237],0x6e00
                 d2 00 6e
       0000:5196 e8 2c e6        CALL       FUN_0000_37c5                                    undefined FUN_0000_37c5()
       0000:5199 c7 06 ce        MOV        word ptr [0xcece],LAB_0000_0774+1
                 ce 75 07
       0000:519f c6 06 6c        MOV        byte ptr [0xc16c],0xff
                 c1 ff
       0000:51a4 be 05 01        MOV        SI,0x105
       0000:51a7 bf 1d d4        MOV        DI,0xd41d
                             LAB_0000_51aa                                   XREF[1]:     0000:51b9(j)  
       0000:51aa 8b 04           MOV        AX,word ptr [SI]
       0000:51ac 3d ff ff        CMP        AX,0xffff
       0000:51af 74 0a           JZ         LAB_0000_51bb
       0000:51b1 89 05           MOV        word ptr [DI],AX
       0000:51b3 83 c6 02        ADD        SI,0x2
       0000:51b6 83 c7 02        ADD        DI,0x2
       0000:51b9 eb ef           JMP        LAB_0000_51aa
                             LAB_0000_51bb                                   XREF[1]:     0000:51af(j)  
       0000:51bb c6 06 29        MOV        byte ptr [0xd429],0xff
                 d4 ff
       0000:51c0 bf 2a d4        MOV        DI,0xd42a
       0000:51c3 b9 06 00        MOV        CX,0x6
                             LAB_0000_51c6                                   XREF[1]:     0000:51ca(j)  
       0000:51c6 c6 05 00        MOV        byte ptr [DI],0x0
       0000:51c9 47              INC        DI
       0000:51ca e2 fa           LOOP       LAB_0000_51c6
       0000:51cc c6 06 1c        MOV        byte ptr [0xd41c],0x0
                 d4 00
       0000:51d1 5f              POP        DI
       0000:51d2 5e              POP        SI
       0000:51d3 59              POP        CX
       0000:51d4 58              POP        AX
       0000:51d5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_0000_51d6()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_51d6                                   XREF[2]:     FUN_0000_5111:0000:5131(c), 
                                                                                          0000:51dc(j)  
       0000:51d6 e8 5f ea        CALL       FUN_0000_3c38                                    undefined FUN_0000_3c38()
       0000:51d9 e8 99 ea        CALL       FUN_0000_3c75                                    undefined FUN_0000_3c75()
       0000:51dc eb f8           JMP        FUN_0000_51d6
       0000:51de df              ??         DFh
       0000:51df df              ??         DFh
       0000:51e0 df              ??         DFh
       0000:51e1 df              ??         DFh
       0000:51e2 df              ??         DFh
       0000:51e3 df              ??         DFh
       0000:51e4 df              ??         DFh
       0000:51e5 df              ??         DFh
       0000:51e6 df              ??         DFh
       0000:51e7 df              ??         DFh
       0000:51e8 df              ??         DFh
       0000:51e9 df              ??         DFh
       0000:51ea df              ??         DFh
       0000:51eb df              ??         DFh
       0000:51ec df              ??         DFh
       0000:51ed df              ??         DFh
       0000:51ee df              ??         DFh
       0000:51ef df              ??         DFh
       0000:51f0 df 00           FILD       word ptr [BX + SI]
       0000:51f2 df              ??         DFh
       0000:51f3 df              ??         DFh
       0000:51f4 df              ??         DFh
       0000:51f5 df              ??         DFh
       0000:51f6 df              ??         DFh
       0000:51f7 df              ??         DFh
       0000:51f8 df              ??         DFh
       0000:51f9 df              ??         DFh
       0000:51fa df              ??         DFh
       0000:51fb df              ??         DFh
       0000:51fc df              ??         DFh
       0000:51fd df              ??         DFh
       0000:51fe df              ??         DFh
       0000:51ff df              ??         DFh
       0000:5200 df              ??         DFh
       0000:5201 df              ??         DFh
       0000:5202 df              ??         DFh
       0000:5203 df              ??         DFh
       0000:5204 df 00           FILD       word ptr [BX + SI]
       0000:5206 ba a9 be        MOV        DX,0xbea9
       0000:5209 b3 aa           MOV        BL,0xaa
       0000:520b be ab b6        MOV        SI,0xb6ab
       0000:520e b0 b1           MOV        AL,0xb1
       0000:5210 df bc b0 af     FISTP      qword ptr [SI + 0xafb0]
       0000:5214 a6              CMPSB      ES:DI,SI
       0000:5215 df              ??         DFh
       0000:5216 df              ??         DFh
       0000:5217 df              ??         DFh
       0000:5218 df 00           FILD       word ptr [BX + SI]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_521a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_521a                                   XREF[2]:     0000:36b2(c), 
                                                                                          FUN_0000_36fd:0000:372a(c)  
       0000:521a 50              PUSH       AX
       0000:521b 53              PUSH       BX
       0000:521c 52              PUSH       DX
       0000:521d f6 06 0e        TEST       byte ptr [0xcf0e],0xff
                 cf ff
       0000:5222 75 03           JNZ        LAB_0000_5227
       0000:5224 e9 b4 00        JMP        LAB_0000_52db
                             LAB_0000_5227                                   XREF[1]:     0000:5222(j)  
       0000:5227 f6 06 d1        TEST       byte ptr [0xced1],0xff
                 ce ff
       0000:522c 74 03           JZ         LAB_0000_5231
       0000:522e e9 aa 00        JMP        LAB_0000_52db
                             LAB_0000_5231                                   XREF[1]:     0000:522c(j)  
       0000:5231 c6 06 54        MOV        byte ptr [0xd254],0x0
                 d2 00
       0000:5236 f6 06 0f        TEST       byte ptr [0xcf0f],0xff
                 cf ff
       0000:523b 74 28           JZ         LAB_0000_5265
       0000:523d 8b 1e 10 cf     MOV        BX,word ptr [0xcf10]
       0000:5241 8b 17           MOV        DX,word ptr [BX]
       0000:5243 89 16 13 cf     MOV        word ptr [0xcf13],DX
       0000:5247 b0 b6           MOV        AL,0xb6
       0000:5249 e6 43           OUT        0x43,AL
       0000:524b 8a c2           MOV        AL,DL
       0000:524d e6 42           OUT        0x42,AL
       0000:524f 8a c6           MOV        AL,DH
       0000:5251 e6 42           OUT        0x42,AL
       0000:5253 83 06 10        ADD        word ptr [0xcf10],0x2
                 cf 02
       0000:5258 c6 06 0f        MOV        byte ptr [0xcf0f],0x0
                 cf 00
       0000:525d e4 61           IN         AL,0x61
       0000:525f 0c 03           OR         AL,0x3
       0000:5261 e6 61           OUT        0x61,AL
       0000:5263 eb 07           JMP        LAB_0000_526c
                             LAB_0000_5265                                   XREF[1]:     0000:523b(j)  
       0000:5265 f6 06 12        TEST       byte ptr [0xcf12],0xff
                 cf ff
       0000:526a 75 4f           JNZ        LAB_0000_52bb
                             LAB_0000_526c                                   XREF[1]:     0000:5263(j)  
       0000:526c 8b 1e 10 cf     MOV        BX,word ptr [0xcf10]
       0000:5270 ff 06 10 cf     INC        word ptr [0xcf10]
       0000:5274 8a 07           MOV        AL,byte ptr [BX]
       0000:5276 a2 12 cf        MOV        [0xcf12],AL
       0000:5279 80 3e 12        CMP        byte ptr [0xcf12],0xff
                 cf ff
       0000:527e 75 0d           JNZ        LAB_0000_528d
       0000:5280 e4 61           IN         AL,0x61
       0000:5282 24 fc           AND        AL,0xfc
       0000:5284 e6 61           OUT        0x61,AL
       0000:5286 c6 06 0e        MOV        byte ptr [0xcf0e],0x0
                 cf 00
       0000:528b eb 4e           JMP        LAB_0000_52db
                             LAB_0000_528d                                   XREF[1]:     0000:527e(j)  
       0000:528d 43              INC        BX
       0000:528e ff 37           PUSH       word ptr [BX]
       0000:5290 8f 06 15 cf     POP        word ptr [0xcf15]
       0000:5294 83 06 10        ADD        word ptr [0xcf10],0x2
                 cf 02
       0000:5299 fe 0e 12 cf     DEC        byte ptr [0xcf12]
       0000:529d a1 15 cf        MOV        AX,[0xcf15]
       0000:52a0 85 c0           TEST       AX,AX
       0000:52a2 74 37           JZ         LAB_0000_52db
       0000:52a4 03 06 13 cf     ADD        AX,word ptr [0xcf13]
       0000:52a8 a3 13 cf        MOV        [0xcf13],AX
       0000:52ab 8b d0           MOV        DX,AX
       0000:52ad b0 b6           MOV        AL,0xb6
       0000:52af e6 43           OUT        0x43,AL
       0000:52b1 8a c2           MOV        AL,DL
       0000:52b3 e6 42           OUT        0x42,AL
       0000:52b5 8a c6           MOV        AL,DH
       0000:52b7 e6 42           OUT        0x42,AL
       0000:52b9 eb 20           JMP        LAB_0000_52db
                             LAB_0000_52bb                                   XREF[1]:     0000:526a(j)  
       0000:52bb fe 0e 12 cf     DEC        byte ptr [0xcf12]
       0000:52bf a1 15 cf        MOV        AX,[0xcf15]
       0000:52c2 85 c0           TEST       AX,AX
       0000:52c4 74 15           JZ         LAB_0000_52db
       0000:52c6 03 06 13 cf     ADD        AX,word ptr [0xcf13]
       0000:52ca a3 13 cf        MOV        [0xcf13],AX
       0000:52cd 8b d0           MOV        DX,AX
       0000:52cf b0 b6           MOV        AL,0xb6
       0000:52d1 e6 43           OUT        0x43,AL
       0000:52d3 8a c2           MOV        AL,DL
       0000:52d5 e6 42           OUT        0x42,AL
       0000:52d7 8a c6           MOV        AL,DH
       0000:52d9 e6 42           OUT        0x42,AL
                             LAB_0000_52db                                   XREF[6]:     0000:5224(j), 0000:522e(j), 
                                                                                          0000:528b(j), 0000:52a2(j), 
                                                                                          0000:52b9(j), 0000:52c4(j)  
       0000:52db 5a              POP        DX
       0000:52dc 5b              POP        BX
       0000:52dd 58              POP        AX
       0000:52de c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_52df()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_52df                                   XREF[13]:    FUN_0000_21e0:0000:2205(c), 
                                                                                          FUN_0000_2255:0000:228c(c), 
                                                                                          FUN_0000_2493:0000:24ed(c), 
                                                                                          FUN_0000_2b0b:0000:2b13(c), 
                                                                                          FUN_0000_2b49:0000:2b51(c), 
                                                                                          FUN_0000_2b8c:0000:2ba7(c), 
                                                                                          FUN_0000_2b8c:0000:2bbe(c), 
                                                                                          FUN_0000_2b8c:0000:2bda(c), 
                                                                                          FUN_0000_2bec:0000:2c4c(c), 
                                                                                          FUN_0000_2cd3:0000:2d02(c), 
                                                                                          0000:36da(c), 0000:36e6(c), 
                                                                                          FUN_0000_5f79:0000:5f8c(c)  
       0000:52df 50              PUSH       AX
       0000:52e0 57              PUSH       DI
       0000:52e1 8a 05           MOV        AL,byte ptr [DI]
       0000:52e3 3a 06 0e cf     CMP        AL,byte ptr [0xcf0e]
       0000:52e7 72 0d           JC         LAB_0000_52f6
       0000:52e9 a2 0e cf        MOV        [0xcf0e],AL
       0000:52ec c6 06 0f        MOV        byte ptr [0xcf0f],0x1
                 cf 01
       0000:52f1 47              INC        DI
       0000:52f2 89 3e 10 cf     MOV        word ptr [0xcf10],DI
                             LAB_0000_52f6                                   XREF[1]:     0000:52e7(j)  
       0000:52f6 5f              POP        DI
       0000:52f7 58              POP        AX
       0000:52f8 c3              RET
       0000:52f9 31 00           XOR        word ptr [BX + SI],AX
       0000:52fb e2 7e           LOOP       LAB_0000_537b
       0000:52fd 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_52ff()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[1]:     0000:534b(*)  
                             FUN_0000_52ff                                   XREF[1]:     FUN_0000_564a:0000:5674(c)  
       0000:52ff 50              PUSH       AX
       0000:5300 53              PUSH       BX
       0000:5301 51              PUSH       CX
       0000:5302 52              PUSH       DX
       0000:5303 56              PUSH       SI
       0000:5304 55              PUSH       BP
       0000:5305 89 e5           MOV        BP,SP
       0000:5307 c6 06 40        MOV        byte ptr [0xd240],0x0
                 d2 00
       0000:530c c6 06 41        MOV        byte ptr [0xd241],0x0
                 d2 00
       0000:5311 c6 06 42        MOV        byte ptr [0xd242],0x0
                 d2 00
       0000:5316 c6 06 43        MOV        byte ptr [0xd243],0x0
                 d2 00
       0000:531b c6 06 44        MOV        byte ptr [0xd244],0x0
                 d2 00
       0000:5320 c6 06 45        MOV        byte ptr [0xd245],0x0
                 d2 00
       0000:5325 b9 52 01        MOV        CX,0x152
       0000:5328 29 d9           SUB        CX,BX
       0000:532a 83 f9 06        CMP        CX,0x6
       0000:532d 76 03           JBE        LAB_0000_5332
       0000:532f b9 06 00        MOV        CX,0x6
                             LAB_0000_5332                                   XREF[1]:     0000:532d(j)  
       0000:5332 be 40 d2        MOV        SI,0xd240
                             LAB_0000_5335                                   XREF[1]:     0000:5339(j)  
       0000:5335 c6 04 01        MOV        byte ptr [SI],0x1
       0000:5338 46              INC        SI
       0000:5339 e2 fa           LOOP       LAB_0000_5335
       0000:533b 8b c3           MOV        AX,BX
       0000:533d d1 e3           SHL        BX,0x1
       0000:533f d1 e3           SHL        BX,0x1
       0000:5341 01 c3           ADD        BX,AX
       0000:5343 d1 e3           SHL        BX,0x1
       0000:5345 d1 e3           SHL        BX,0x1
       0000:5347 d1 e3           SHL        BX,0x1
       0000:5349 d1 e3           SHL        BX,0x1
       0000:534b 8b 46 0a        MOV        AX,word ptr [BP + local_2]
       0000:534e 8b f0           MOV        SI,AX
       0000:5350 d1 e8           SHR        AX,0x1
       0000:5352 d1 e8           SHR        AX,0x1
       0000:5354 d1 e8           SHR        AX,0x1
       0000:5356 01 c3           ADD        BX,AX
       0000:5358 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:535c 83 e6 07        AND        SI,0x7
       0000:535f d1 e6           SHL        SI,0x1
       0000:5361 8b c6           MOV        AX,SI
       0000:5363 d1 e6           SHL        SI,0x1
       0000:5365 01 c6           ADD        SI,AX
       0000:5367 81 c6 53 0a     ADD        SI,0xa53
       0000:536b 8a 0c           MOV        CL,byte ptr [SI]=>LAB_0000_0a52+1
       0000:536d 80 f9 00        CMP        CL,0x0
       0000:5370 74 2a           JZ         LAB_0000_539c
       0000:5372 ba ce 03        MOV        DX,0x3ce
       0000:5375 b0 08           MOV        AL,0x8
       0000:5377 ee              OUT        DX,AL
       0000:5378 42              INC        DX
       0000:5379 88 c8           MOV        AL,CL
                             LAB_0000_537b                                   XREF[1]:     0000:52fb(j)  
       0000:537b ee              OUT        DX,AL
       0000:537c f6 06 40        TEST       byte ptr [0xd240],0xff
                 d2 ff
       0000:5381 74 07           JZ         LAB_0000_538a
       0000:5383 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5386 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
                             LAB_0000_538a                                   XREF[1]:     0000:5381(j)  
       0000:538a f6 06 45        TEST       byte ptr [0xd245],0xff
                 d2 ff
       0000:538f 74 0b           JZ         LAB_0000_539c
       0000:5391 26 8a 87        MOV        AL,byte ptr ES:[BX + 0x190]
                 90 01
       0000:5396 26 c6 87        MOV        byte ptr ES:[BX + 0x190],0xff
                 90 01 ff
                             LAB_0000_539c                                   XREF[2]:     0000:5370(j), 0000:538f(j)  
       0000:539c 8a 4c 01        MOV        CL,byte ptr [SI + 0x1]=>LAB_0000_0a54
       0000:539f 80 f9 00        CMP        CL,0x0
       0000:53a2 74 2c           JZ         LAB_0000_53d0
       0000:53a4 ba ce 03        MOV        DX,0x3ce
       0000:53a7 b0 08           MOV        AL,0x8
       0000:53a9 ee              OUT        DX,AL
       0000:53aa 42              INC        DX
       0000:53ab 88 c8           MOV        AL,CL
       0000:53ad ee              OUT        DX,AL
       0000:53ae f6 06 40        TEST       byte ptr [0xd240],0xff
                 d2 ff
       0000:53b3 74 09           JZ         LAB_0000_53be
       0000:53b5 26 8a 47 01     MOV        AL,byte ptr ES:[BX + 0x1]
       0000:53b9 26 c6 47        MOV        byte ptr ES:[BX + 0x1],0xff
                 01 ff
                             LAB_0000_53be                                   XREF[1]:     0000:53b3(j)  
       0000:53be f6 06 45        TEST       byte ptr [0xd245],0xff
                 d2 ff
       0000:53c3 74 0b           JZ         LAB_0000_53d0
       0000:53c5 26 8a 87        MOV        AL,byte ptr ES:[BX + 0x191]
                 91 01
       0000:53ca 26 c6 87        MOV        byte ptr ES:[BX + 0x191],0xff
                 91 01 ff
                             LAB_0000_53d0                                   XREF[2]:     0000:53a2(j), 0000:53c3(j)  
       0000:53d0 8a 4c 02        MOV        CL,byte ptr [SI + 0x2]=>LAB_0000_0a54+1
       0000:53d3 80 f9 00        CMP        CL,0x0
       0000:53d6 74 2c           JZ         LAB_0000_5404
       0000:53d8 ba ce 03        MOV        DX,0x3ce
       0000:53db b0 08           MOV        AL,0x8
       0000:53dd ee              OUT        DX,AL
       0000:53de 42              INC        DX
       0000:53df 88 c8           MOV        AL,CL
       0000:53e1 ee              OUT        DX,AL
       0000:53e2 f6 06 41        TEST       byte ptr [0xd241],0xff
                 d2 ff
       0000:53e7 74 09           JZ         LAB_0000_53f2
       0000:53e9 26 8a 47 50     MOV        AL,byte ptr ES:[BX + 0x50]
       0000:53ed 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
                             LAB_0000_53f2                                   XREF[1]:     0000:53e7(j)  
       0000:53f2 f6 06 44        TEST       byte ptr [0xd244],0xff
                 d2 ff
       0000:53f7 74 0b           JZ         LAB_0000_5404
       0000:53f9 26 8a 87        MOV        AL,byte ptr ES:[BX + 0x140]
                 40 01
       0000:53fe 26 c6 87        MOV        byte ptr ES:[BX + 0x140],0xff
                 40 01 ff
                             LAB_0000_5404                                   XREF[2]:     0000:53d6(j), 0000:53f7(j)  
       0000:5404 8a 4c 03        MOV        CL,byte ptr [SI + 0x3]=>LAB_0000_0a54+2
       0000:5407 80 f9 00        CMP        CL,0x0
       0000:540a 74 2c           JZ         LAB_0000_5438
       0000:540c ba ce 03        MOV        DX,0x3ce
       0000:540f b0 08           MOV        AL,0x8
       0000:5411 ee              OUT        DX,AL
       0000:5412 42              INC        DX
       0000:5413 88 c8           MOV        AL,CL
       0000:5415 ee              OUT        DX,AL
       0000:5416 f6 06 41        TEST       byte ptr [0xd241],0xff
                 d2 ff
       0000:541b 74 09           JZ         LAB_0000_5426
       0000:541d 26 8a 47 51     MOV        AL,byte ptr ES:[BX + 0x51]
       0000:5421 26 c6 47        MOV        byte ptr ES:[BX + 0x51],0xff
                 51 ff
                             LAB_0000_5426                                   XREF[1]:     0000:541b(j)  
       0000:5426 f6 06 44        TEST       byte ptr [0xd244],0xff
                 d2 ff
       0000:542b 74 0b           JZ         LAB_0000_5438
       0000:542d 26 8a 87        MOV        AL,byte ptr ES:[BX + 0x141]
                 41 01
       0000:5432 26 c6 87        MOV        byte ptr ES:[BX + 0x141],0xff
                 41 01 ff
                             LAB_0000_5438                                   XREF[2]:     0000:540a(j), 0000:542b(j)  
       0000:5438 8a 4c 04        MOV        CL,byte ptr [SI + 0x4]=>LAB_0000_0a57
       0000:543b 80 f9 00        CMP        CL,0x0
       0000:543e 74 2e           JZ         LAB_0000_546e
       0000:5440 ba ce 03        MOV        DX,0x3ce
       0000:5443 b0 08           MOV        AL,0x8
       0000:5445 ee              OUT        DX,AL
       0000:5446 42              INC        DX
       0000:5447 88 c8           MOV        AL,CL
       0000:5449 ee              OUT        DX,AL
       0000:544a f6 06 42        TEST       byte ptr [0xd242],0xff
                 d2 ff
       0000:544f 74 0b           JZ         LAB_0000_545c
       0000:5451 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa0]
                 a0 00
       0000:5456 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
                             LAB_0000_545c                                   XREF[1]:     0000:544f(j)  
       0000:545c f6 06 43        TEST       byte ptr [0xd243],0xff
                 d2 ff
       0000:5461 74 0b           JZ         LAB_0000_546e
       0000:5463 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf0]
                 f0 00
       0000:5468 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
                             LAB_0000_546e                                   XREF[2]:     0000:543e(j), 0000:5461(j)  
       0000:546e 8a 4c 05        MOV        CL,byte ptr [SI + 0x5]=>LAB_0000_0a57+1
       0000:5471 80 f9 00        CMP        CL,0x0
       0000:5474 74 2e           JZ         LAB_0000_54a4
       0000:5476 ba ce 03        MOV        DX,0x3ce
       0000:5479 b0 08           MOV        AL,0x8
       0000:547b ee              OUT        DX,AL
       0000:547c 42              INC        DX
       0000:547d 88 c8           MOV        AL,CL
       0000:547f ee              OUT        DX,AL
       0000:5480 f6 06 42        TEST       byte ptr [0xd242],0xff
                 d2 ff
       0000:5485 74 0b           JZ         LAB_0000_5492
       0000:5487 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa1]
                 a1 00
       0000:548c 26 c6 87        MOV        byte ptr ES:[BX + 0xa1],0xff
                 a1 00 ff
                             LAB_0000_5492                                   XREF[1]:     0000:5485(j)  
       0000:5492 f6 06 43        TEST       byte ptr [0xd243],0xff
                 d2 ff
       0000:5497 74 0b           JZ         LAB_0000_54a4
       0000:5499 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf1]
                 f1 00
       0000:549e 26 c6 87        MOV        byte ptr ES:[BX + 0xf1],0xff
                 f1 00 ff
                             LAB_0000_54a4                                   XREF[2]:     0000:5474(j), 0000:5497(j)  
       0000:54a4 ba ce 03        MOV        DX,0x3ce
       0000:54a7 b0 08           MOV        AL,0x8
       0000:54a9 ee              OUT        DX,AL
       0000:54aa 42              INC        DX
       0000:54ab b0 ff           MOV        AL,0xff
       0000:54ad ee              OUT        DX,AL
       0000:54ae 5d              POP        BP
       0000:54af 5e              POP        SI
       0000:54b0 5a              POP        DX
       0000:54b1 59              POP        CX
       0000:54b2 5b              POP        BX
       0000:54b3 58              POP        AX
       0000:54b4 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_54b5()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x2]:1  local_2                                 XREF[1]:     0000:5509(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:550f(*)  
                             FUN_0000_54b5                                   XREF[2]:     FUN_0000_2e77:0000:2ec2(c), 
                                                                                          FUN_0000_55f9:0000:5629(c)  
       0000:54b5 50              PUSH       AX
       0000:54b6 53              PUSH       BX
       0000:54b7 51              PUSH       CX
       0000:54b8 52              PUSH       DX
       0000:54b9 56              PUSH       SI
       0000:54ba 57              PUSH       DI
       0000:54bb 55              PUSH       BP
       0000:54bc 89 e5           MOV        BP,SP
       0000:54be 89 de           MOV        SI,BX
       0000:54c0 d1 e3           SHL        BX,0x1
       0000:54c2 d1 e3           SHL        BX,0x1
       0000:54c4 03 f3           ADD        SI,BX
       0000:54c6 d1 e6           SHL        SI,0x1
       0000:54c8 d1 e6           SHL        SI,0x1
       0000:54ca d1 e6           SHL        SI,0x1
       0000:54cc d1 e6           SHL        SI,0x1
       0000:54ce d1 e8           SHR        AX,0x1
       0000:54d0 d1 e8           SHR        AX,0x1
       0000:54d2 d1 e8           SHR        AX,0x1
       0000:54d4 01 c6           ADD        SI,AX
       0000:54d6 03 36 37 d2     ADD        SI,word ptr [0xd237]
       0000:54da 32 f6           XOR        DH,DH
       0000:54dc 8a ca           MOV        CL,DL
       0000:54de d0 e2           SHL        DL,0x1
       0000:54e0 89 d7           MOV        DI,DX
       0000:54e2 00 ca           ADD        DL,CL
       0000:54e4 d0 e2           SHL        DL,0x1
       0000:54e6 d0 e2           SHL        DL,0x1
       0000:54e8 89 d3           MOV        BX,DX
       0000:54ea 81 c3 b4 e2     ADD        BX,0xe2b4
       0000:54ee f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:54f3 74 04           JZ         LAB_0000_54f9
       0000:54f5 81 c3 c0 00     ADD        BX,0xc0
                             LAB_0000_54f9                                   XREF[1]:     0000:54f3(j)  
       0000:54f9 81 c7 6d c2     ADD        DI,0xc26d
       0000:54fd f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5502 74 03           JZ         LAB_0000_5507
       0000:5504 83 c7 20        ADD        DI,0x20
                             LAB_0000_5507                                   XREF[1]:     0000:5502(j)  
       0000:5507 89 35           MOV        word ptr [DI],SI
       0000:5509 8a 56 0c        MOV        DL,byte ptr [BP + local_2]
       0000:550c 80 e2 07        AND        DL,0x7
       0000:550f 8a 46 06        MOV        AL,byte ptr [BP + local_8]
       0000:5512 32 e4           XOR        AH,AH
       0000:5514 05 ad c2        ADD        AX,0xc2ad
       0000:5517 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:551c 74 03           JZ         LAB_0000_5521
       0000:551e 05 10 00        ADD        AX,0x10
                             LAB_0000_5521                                   XREF[1]:     0000:551c(j)  
       0000:5521 8b f8           MOV        DI,AX
       0000:5523 88 15           MOV        byte ptr [DI],DL
       0000:5525 b9 06 00        MOV        CX,0x6
                             LAB_0000_5528                                   XREF[1]:     0000:553e(j)  
       0000:5528 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:552b 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:552e 43              INC        BX
       0000:552f 84 d2           TEST       DL,DL
       0000:5531 74 08           JZ         LAB_0000_553b
       0000:5533 26 8a 44 01     MOV        AL,byte ptr ES:[SI + 0x1]
       0000:5537 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:553a 43              INC        BX
                             LAB_0000_553b                                   XREF[1]:     0000:5531(j)  
       0000:553b 83 c6 50        ADD        SI,0x50
       0000:553e e2 e8           LOOP       LAB_0000_5528
       0000:5540 5d              POP        BP
       0000:5541 5f              POP        DI
       0000:5542 5e              POP        SI
       0000:5543 5a              POP        DX
       0000:5544 59              POP        CX
       0000:5545 5b              POP        BX
       0000:5546 58              POP        AX
       0000:5547 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5548()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x8]:1  local_8                                 XREF[1]:     0000:5580(*)  
                             FUN_0000_5548                                   XREF[1]:     FUN_0000_55b9:0000:55e0(c)  
       0000:5548 50              PUSH       AX
       0000:5549 53              PUSH       BX
       0000:554a 51              PUSH       CX
       0000:554b 52              PUSH       DX
       0000:554c 56              PUSH       SI
       0000:554d 57              PUSH       DI
       0000:554e 55              PUSH       BP
       0000:554f 89 e5           MOV        BP,SP
       0000:5551 32 f6           XOR        DH,DH
       0000:5553 8a ca           MOV        CL,DL
       0000:5555 d0 e2           SHL        DL,0x1
       0000:5557 89 d7           MOV        DI,DX
       0000:5559 00 ca           ADD        DL,CL
       0000:555b d0 e2           SHL        DL,0x1
       0000:555d d0 e2           SHL        DL,0x1
       0000:555f 89 d3           MOV        BX,DX
       0000:5561 81 c3 b4 e2     ADD        BX,0xe2b4
       0000:5565 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:556a 74 04           JZ         LAB_0000_5570
       0000:556c 81 c3 c0 00     ADD        BX,0xc0
                             LAB_0000_5570                                   XREF[1]:     0000:556a(j)  
       0000:5570 81 c7 6d c2     ADD        DI,0xc26d
       0000:5574 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5579 74 03           JZ         LAB_0000_557e
       0000:557b 83 c7 20        ADD        DI,0x20
                             LAB_0000_557e                                   XREF[1]:     0000:5579(j)  
       0000:557e 8b 35           MOV        SI,word ptr [DI]
       0000:5580 8a 46 06        MOV        AL,byte ptr [BP + local_8]
       0000:5583 32 e4           XOR        AH,AH
       0000:5585 05 ad c2        ADD        AX,0xc2ad
       0000:5588 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:558d 74 03           JZ         LAB_0000_5592
       0000:558f 05 10 00        ADD        AX,0x10
                             LAB_0000_5592                                   XREF[1]:     0000:558d(j)  
       0000:5592 8b f8           MOV        DI,AX
       0000:5594 8a 15           MOV        DL,byte ptr [DI]
       0000:5596 b9 06 00        MOV        CX,0x6
                             LAB_0000_5599                                   XREF[1]:     0000:55af(j)  
       0000:5599 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:559c 43              INC        BX
       0000:559d 26 88 04        MOV        byte ptr ES:[SI],AL
       0000:55a0 84 d2           TEST       DL,DL
       0000:55a2 74 08           JZ         LAB_0000_55ac
       0000:55a4 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:55a7 43              INC        BX
       0000:55a8 26 88 44 01     MOV        byte ptr ES:[SI + 0x1],AL
                             LAB_0000_55ac                                   XREF[1]:     0000:55a2(j)  
       0000:55ac 83 c6 50        ADD        SI,0x50
       0000:55af e2 e8           LOOP       LAB_0000_5599
       0000:55b1 5d              POP        BP
       0000:55b2 5f              POP        DI
       0000:55b3 5e              POP        SI
       0000:55b4 5a              POP        DX
       0000:55b5 59              POP        CX
       0000:55b6 5b              POP        BX
       0000:55b7 58              POP        AX
       0000:55b8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_55b9()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_55b9                                   XREF[5]:     FUN_0000_3658:0000:3673(c), 
                                                                                          FUN_0000_36fd:0000:3701(c), 
                                                                                          FUN_0000_3bbd:0000:3bd5(c), 
                                                                                          FUN_0000_4b19:0000:4b29(c), 
                                                                                          FUN_0000_648d:0000:649d(c)  
       0000:55b9 50              PUSH       AX
       0000:55ba 53              PUSH       BX
       0000:55bb 51              PUSH       CX
       0000:55bc 52              PUSH       DX
       0000:55bd 56              PUSH       SI
       0000:55be 57              PUSH       DI
       0000:55bf ba ce 03        MOV        DX,0x3ce
       0000:55c2 b0 05           MOV        AL,0x5
       0000:55c4 ee              OUT        DX,AL
       0000:55c5 42              INC        DX
       0000:55c6 b0 11           MOV        AL,0x11
       0000:55c8 ee              OUT        DX,AL
       0000:55c9 b2 00           MOV        DL,0x0
       0000:55cb be ad c2        MOV        SI,0xc2ad
       0000:55ce f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:55d3 74 03           JZ         LAB_0000_55d8
       0000:55d5 83 c6 10        ADD        SI,0x10
                             LAB_0000_55d8                                   XREF[1]:     0000:55d3(j)  
       0000:55d8 b9 10 00        MOV        CX,0x10
                             LAB_0000_55db                                   XREF[1]:     0000:55e6(j)  
       0000:55db 80 3c ff        CMP        byte ptr [SI],0xff
       0000:55de 74 03           JZ         LAB_0000_55e3
       0000:55e0 e8 65 ff        CALL       FUN_0000_5548                                    undefined FUN_0000_5548()
                             LAB_0000_55e3                                   XREF[1]:     0000:55de(j)  
       0000:55e3 fe c2           INC        DL
       0000:55e5 46              INC        SI
       0000:55e6 e2 f3           LOOP       LAB_0000_55db
       0000:55e8 ba ce 03        MOV        DX,0x3ce
       0000:55eb b0 05           MOV        AL,0x5
       0000:55ed ee              OUT        DX,AL
       0000:55ee 42              INC        DX
       0000:55ef b0 10           MOV        AL,0x10
       0000:55f1 ee              OUT        DX,AL
       0000:55f2 5f              POP        DI
       0000:55f3 5e              POP        SI
       0000:55f4 5a              POP        DX
       0000:55f5 59              POP        CX
       0000:55f6 5b              POP        BX
       0000:55f7 58              POP        AX
       0000:55f8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_55f9()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_55f9                                   XREF[6]:     FUN_0000_3610:0000:363e(c), 
                                                                                          0000:369a(c), 
                                                                                          FUN_0000_3b94:0000:3b9d(c), 
                                                                                          FUN_0000_3bbd:0000:3bf0(c), 
                                                                                          FUN_0000_4b19:0000:4b2f(c), 
                                                                                          FUN_0000_648d:0000:64a3(c)  
       0000:55f9 50              PUSH       AX
       0000:55fa 53              PUSH       BX
       0000:55fb 51              PUSH       CX
       0000:55fc 52              PUSH       DX
       0000:55fd 56              PUSH       SI
       0000:55fe 57              PUSH       DI
       0000:55ff ba ce 03        MOV        DX,0x3ce
       0000:5602 b0 05           MOV        AL,0x5
       0000:5604 ee              OUT        DX,AL
       0000:5605 42              INC        DX
       0000:5606 b0 11           MOV        AL,0x11
       0000:5608 ee              OUT        DX,AL
       0000:5609 b2 00           MOV        DL,0x0
       0000:560b be 6d c1        MOV        SI,0xc16d
       0000:560e bf ad c2        MOV        DI,0xc2ad
       0000:5611 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5616 74 03           JZ         LAB_0000_561b
       0000:5618 83 c7 10        ADD        DI,0x10
                             LAB_0000_561b                                   XREF[1]:     0000:5616(j)  
       0000:561b b9 10 00        MOV        CX,0x10
                             LAB_0000_561e                                   XREF[1]:     0000:5637(j)  
       0000:561e f6 44 08 01     TEST       byte ptr [SI + 0x8],0x1
       0000:5622 74 0a           JZ         LAB_0000_562e
       0000:5624 8b 04           MOV        AX,word ptr [SI]
       0000:5626 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:5629 e8 89 fe        CALL       FUN_0000_54b5                                    undefined FUN_0000_54b5()
       0000:562c eb 03           JMP        LAB_0000_5631
                             LAB_0000_562e                                   XREF[1]:     0000:5622(j)  
       0000:562e c6 05 ff        MOV        byte ptr [DI],0xff
                             LAB_0000_5631                                   XREF[1]:     0000:562c(j)  
       0000:5631 47              INC        DI
       0000:5632 fe c2           INC        DL
       0000:5634 83 c6 10        ADD        SI,0x10
       0000:5637 e2 e5           LOOP       LAB_0000_561e
       0000:5639 ba ce 03        MOV        DX,0x3ce
       0000:563c b0 05           MOV        AL,0x5
       0000:563e ee              OUT        DX,AL
       0000:563f 42              INC        DX
       0000:5640 b0 10           MOV        AL,0x10
       0000:5642 ee              OUT        DX,AL
       0000:5643 5f              POP        DI
       0000:5644 5e              POP        SI
       0000:5645 5a              POP        DX
       0000:5646 59              POP        CX
       0000:5647 5b              POP        BX
       0000:5648 58              POP        AX
       0000:5649 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_564a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_564a                                   XREF[6]:     FUN_0000_3610:0000:3644(c), 
                                                                                          0000:36a9(c), 
                                                                                          FUN_0000_3b94:0000:3ba3(c), 
                                                                                          FUN_0000_3bbd:0000:3bf9(c), 
                                                                                          FUN_0000_4b19:0000:4b32(c), 
                                                                                          FUN_0000_648d:0000:64a6(c)  
       0000:564a 50              PUSH       AX
       0000:564b 53              PUSH       BX
       0000:564c 51              PUSH       CX
       0000:564d 52              PUSH       DX
       0000:564e 56              PUSH       SI
       0000:564f ba ce 03        MOV        DX,0x3ce
       0000:5652 b0 01           MOV        AL,0x1
       0000:5654 ee              OUT        DX,AL
       0000:5655 42              INC        DX
       0000:5656 b0 0f           MOV        AL,0xf
       0000:5658 ee              OUT        DX,AL
       0000:5659 ba ce 03        MOV        DX,0x3ce
       0000:565c 32 c0           XOR        AL,AL
       0000:565e ee              OUT        DX,AL
       0000:565f 42              INC        DX
       0000:5660 b0 0f           MOV        AL,0xf
       0000:5662 ee              OUT        DX,AL
       0000:5663 b9 10 00        MOV        CX,0x10
       0000:5666 be 6d c1        MOV        SI,0xc16d
                             LAB_0000_5669                                   XREF[1]:     0000:567a(j)  
       0000:5669 f6 44 08 01     TEST       byte ptr [SI + 0x8],0x1
       0000:566d 74 08           JZ         LAB_0000_5677
       0000:566f 8b 04           MOV        AX,word ptr [SI]
       0000:5671 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:5674 e8 88 fc        CALL       FUN_0000_52ff                                    undefined FUN_0000_52ff()
                             LAB_0000_5677                                   XREF[1]:     0000:566d(j)  
       0000:5677 83 c6 10        ADD        SI,0x10
       0000:567a e2 ed           LOOP       LAB_0000_5669
       0000:567c ba ce 03        MOV        DX,0x3ce
       0000:567f b0 01           MOV        AL,0x1
       0000:5681 ee              OUT        DX,AL
       0000:5682 42              INC        DX
       0000:5683 b0 00           MOV        AL,0x0
       0000:5685 ee              OUT        DX,AL
       0000:5686 5e              POP        SI
       0000:5687 5a              POP        DX
       0000:5688 59              POP        CX
       0000:5689 5b              POP        BX
       0000:568a 58              POP        AX
       0000:568b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_568c()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x2]:2  local_2                                 XREF[1]:     0000:571a(*)  
             undefined1        Stack[-0x8]:1  local_8                                 XREF[2]:     0000:56f9(*), 
                                                                                                   0000:57a7(*)  
                             FUN_0000_568c                                   XREF[1]:     FUN_0000_5808:0000:5811(c)  
       0000:568c 50              PUSH       AX
       0000:568d 53              PUSH       BX
       0000:568e 51              PUSH       CX
       0000:568f 52              PUSH       DX
       0000:5690 56              PUSH       SI
       0000:5691 55              PUSH       BP
       0000:5692 89 e5           MOV        BP,SP
       0000:5694 8b d8           MOV        BX,AX
       0000:5696 d1 eb           SHR        BX,0x1
       0000:5698 d1 eb           SHR        BX,0x1
       0000:569a d1 eb           SHR        BX,0x1
       0000:569c 81 c3 d0 66     ADD        BX,0x66d0
       0000:56a0 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:56a4 be 81 0a        MOV        SI,0xa81
       0000:56a7 25 07 00        AND        AX,0x7
       0000:56aa 75 03           JNZ        LAB_0000_56af
       0000:56ac e9 bd 00        JMP        LAB_0000_576c
                             LAB_0000_56af                                   XREF[1]:     0000:56aa(j)  
       0000:56af d1 e0           SHL        AX,0x1
       0000:56b1 01 c6           ADD        SI,AX
       0000:56b3 ba ce 03        MOV        DX,0x3ce
       0000:56b6 b0 08           MOV        AL,0x8
       0000:56b8 ee              OUT        DX,AL
       0000:56b9 42              INC        DX
       0000:56ba 8a 04           MOV        AL,byte ptr [SI]=>LAB_0000_0a81
       0000:56bc ee              OUT        DX,AL
       0000:56bd 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:56c0 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:56c4 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf0]
                 f0 00
       0000:56c9 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
       0000:56cf ba ce 03        MOV        DX,0x3ce
       0000:56d2 b0 08           MOV        AL,0x8
       0000:56d4 ee              OUT        DX,AL
       0000:56d5 42              INC        DX
       0000:56d6 8a 44 01        MOV        AL,byte ptr [SI + 0x1]=>LAB_0000_0a81+1
       0000:56d9 ee              OUT        DX,AL
       0000:56da 26 8a 47 50     MOV        AL,byte ptr ES:[BX + 0x50]
       0000:56de 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
       0000:56e3 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa0]
                 a0 00
       0000:56e8 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
       0000:56ee ba ce 03        MOV        DX,0x3ce
       0000:56f1 b0 08           MOV        AL,0x8
       0000:56f3 ee              OUT        DX,AL
       0000:56f4 42              INC        DX
       0000:56f5 b0 ff           MOV        AL,0xff
       0000:56f7 ee              OUT        DX,AL
       0000:56f8 43              INC        BX
       0000:56f9 8a 4e 04        MOV        CL,byte ptr [BP + local_8]
       0000:56fc 32 ed           XOR        CH,CH
       0000:56fe 49              DEC        CX
                             LAB_0000_56ff                                   XREF[1]:     0000:5715(j)  
       0000:56ff 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:5703 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
       0000:5708 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
       0000:570e 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
       0000:5714 43              INC        BX
       0000:5715 e2 e8           LOOP       LAB_0000_56ff
       0000:5717 be 8f 0a        MOV        SI,0xa8f
       0000:571a 8b 46 0a        MOV        AX,word ptr [BP + local_2]
       0000:571d 25 07 00        AND        AX,0x7
       0000:5720 d1 e0           SHL        AX,0x1
       0000:5722 01 c6           ADD        SI,AX
       0000:5724 ba ce 03        MOV        DX,0x3ce
       0000:5727 b0 08           MOV        AL,0x8
       0000:5729 ee              OUT        DX,AL
       0000:572a 42              INC        DX
       0000:572b 8a 04           MOV        AL,byte ptr [SI]=>LAB_0000_0a8f
       0000:572d ee              OUT        DX,AL
       0000:572e 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5731 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:5735 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf0]
                 f0 00
       0000:573a 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
       0000:5740 ba ce 03        MOV        DX,0x3ce
       0000:5743 b0 08           MOV        AL,0x8
       0000:5745 ee              OUT        DX,AL
       0000:5746 42              INC        DX
       0000:5747 8a 44 01        MOV        AL,byte ptr [SI + 0x1]=>LAB_0000_0a8f+1
       0000:574a ee              OUT        DX,AL
       0000:574b 26 8a 47 50     MOV        AL,byte ptr ES:[BX + 0x50]
       0000:574f 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
       0000:5754 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa0]
                 a0 00
       0000:5759 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
       0000:575f ba ce 03        MOV        DX,0x3ce
       0000:5762 b0 08           MOV        AL,0x8
       0000:5764 ee              OUT        DX,AL
       0000:5765 42              INC        DX
       0000:5766 b0 ff           MOV        AL,0xff
       0000:5768 ee              OUT        DX,AL
       0000:5769 e9 95 00        JMP        LAB_0000_5801
                             LAB_0000_576c                                   XREF[1]:     0000:56ac(j)  
       0000:576c ba ce 03        MOV        DX,0x3ce
       0000:576f b0 08           MOV        AL,0x8
       0000:5771 ee              OUT        DX,AL
       0000:5772 42              INC        DX
       0000:5773 b0 7f           MOV        AL,0x7f
       0000:5775 ee              OUT        DX,AL
       0000:5776 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5779 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:577d 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf0]
                 f0 00
       0000:5782 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
       0000:5788 ba ce 03        MOV        DX,0x3ce
       0000:578b b0 08           MOV        AL,0x8
       0000:578d ee              OUT        DX,AL
       0000:578e 42              INC        DX
       0000:578f b0 ff           MOV        AL,0xff
       0000:5791 ee              OUT        DX,AL
       0000:5792 26 8a 47 50     MOV        AL,byte ptr ES:[BX + 0x50]
       0000:5796 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
       0000:579b 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa0]
                 a0 00
       0000:57a0 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
       0000:57a6 43              INC        BX
       0000:57a7 8a 4e 04        MOV        CL,byte ptr [BP + local_8]
       0000:57aa 32 ed           XOR        CH,CH
       0000:57ac 83 e9 02        SUB        CX,0x2
                             LAB_0000_57af                                   XREF[1]:     0000:57c5(j)  
       0000:57af 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:57b3 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
       0000:57b8 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
       0000:57be 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
       0000:57c4 43              INC        BX
       0000:57c5 e2 e8           LOOP       LAB_0000_57af
       0000:57c7 ba ce 03        MOV        DX,0x3ce
       0000:57ca b0 08           MOV        AL,0x8
       0000:57cc ee              OUT        DX,AL
       0000:57cd 42              INC        DX
       0000:57ce b0 fe           MOV        AL,0xfe
       0000:57d0 ee              OUT        DX,AL
       0000:57d1 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:57d4 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:57d8 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf0]
                 f0 00
       0000:57dd 26 c6 87        MOV        byte ptr ES:[BX + 0xf0],0xff
                 f0 00 ff
       0000:57e3 ba ce 03        MOV        DX,0x3ce
       0000:57e6 b0 08           MOV        AL,0x8
       0000:57e8 ee              OUT        DX,AL
       0000:57e9 42              INC        DX
       0000:57ea b0 ff           MOV        AL,0xff
       0000:57ec ee              OUT        DX,AL
       0000:57ed 26 8a 47 50     MOV        AL,byte ptr ES:[BX + 0x50]
       0000:57f1 26 c6 47        MOV        byte ptr ES:[BX + 0x50],0xff
                 50 ff
       0000:57f6 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa0]
                 a0 00
       0000:57fb 26 c6 87        MOV        byte ptr ES:[BX + 0xa0],0xff
                 a0 00 ff
                             LAB_0000_5801                                   XREF[1]:     0000:5769(j)  
       0000:5801 5d              POP        BP
       0000:5802 5e              POP        SI
       0000:5803 5a              POP        DX
       0000:5804 59              POP        CX
       0000:5805 5b              POP        BX
       0000:5806 58              POP        AX
       0000:5807 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5808()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5808                                   XREF[4]:     FUN_0000_3610:0000:3647(c), 
                                                                                          0000:36ac(c), 
                                                                                          FUN_0000_3b94:0000:3ba6(c), 
                                                                                          FUN_0000_3bbd:0000:3bfc(c)  
       0000:5808 50              PUSH       AX
       0000:5809 52              PUSH       DX
       0000:580a a1 47 d2        MOV        AX,[0xd247]
       0000:580d 8a 16 49 d2     MOV        DL,byte ptr [0xd249]
       0000:5811 e8 78 fe        CALL       FUN_0000_568c                                    undefined FUN_0000_568c()
       0000:5814 5a              POP        DX
       0000:5815 58              POP        AX
       0000:5816 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5817()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5817                                   XREF[4]:     FUN_0000_3610:0000:3641(c), 
                                                                                          0000:369d(c), 
                                                                                          FUN_0000_3b94:0000:3ba0(c), 
                                                                                          FUN_0000_3bbd:0000:3bf3(c)  
       0000:5817 50              PUSH       AX
       0000:5818 53              PUSH       BX
       0000:5819 51              PUSH       CX
       0000:581a 52              PUSH       DX
       0000:581b 56              PUSH       SI
       0000:581c 57              PUSH       DI
       0000:581d ba ce 03        MOV        DX,0x3ce
       0000:5820 b0 05           MOV        AL,0x5
       0000:5822 ee              OUT        DX,AL
       0000:5823 42              INC        DX
       0000:5824 b0 11           MOV        AL,0x11
       0000:5826 ee              OUT        DX,AL
       0000:5827 a1 47 d2        MOV        AX,[0xd247]
       0000:582a 8b d8           MOV        BX,AX
       0000:582c d1 eb           SHR        BX,0x1
       0000:582e d1 eb           SHR        BX,0x1
       0000:5830 d1 eb           SHR        BX,0x1
       0000:5832 81 c3 d0 66     ADD        BX,0x66d0
       0000:5836 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:583a be 5e c3        MOV        SI,0xc35e
       0000:583d f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5842 74 03           JZ         LAB_0000_5847
       0000:5844 83 c6 02        ADD        SI,0x2
                             LAB_0000_5847                                   XREF[1]:     0000:5842(j)  
       0000:5847 89 1c           MOV        word ptr [SI],BX
       0000:5849 8a 0e 49 d2     MOV        CL,byte ptr [0xd249]
       0000:584d 32 ed           XOR        CH,CH
       0000:584f 25 07 00        AND        AX,0x7
       0000:5852 74 01           JZ         LAB_0000_5855
       0000:5854 41              INC        CX
                             LAB_0000_5855                                   XREF[1]:     0000:5852(j)  
       0000:5855 be 62 c3        MOV        SI,0xc362
       0000:5858 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:585d 74 01           JZ         LAB_0000_5860
       0000:585f 46              INC        SI
                             LAB_0000_5860                                   XREF[1]:     0000:585d(j)  
       0000:5860 88 0c           MOV        byte ptr [SI],CL
       0000:5862 bf 34 e4        MOV        DI,0xe434
       0000:5865 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:586a 74 03           JZ         LAB_0000_586f
       0000:586c 83 c7 24        ADD        DI,0x24
                             LAB_0000_586f                                   XREF[2]:     0000:586a(j), 0000:5891(j)  
       0000:586f 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5872 26 88 05        MOV        byte ptr ES:[DI],AL
       0000:5875 47              INC        DI
       0000:5876 26 8a 47 50     MOV        AL,byte ptr ES:[BX + 0x50]
       0000:587a 26 88 05        MOV        byte ptr ES:[DI],AL
       0000:587d 47              INC        DI
       0000:587e 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xa0]
                 a0 00
       0000:5883 26 88 05        MOV        byte ptr ES:[DI],AL
       0000:5886 47              INC        DI
       0000:5887 26 8a 87        MOV        AL,byte ptr ES:[BX + 0xf0]
                 f0 00
       0000:588c 26 88 05        MOV        byte ptr ES:[DI],AL
       0000:588f 47              INC        DI
       0000:5890 43              INC        BX
       0000:5891 e2 dc           LOOP       LAB_0000_586f
       0000:5893 ba ce 03        MOV        DX,0x3ce
       0000:5896 b0 05           MOV        AL,0x5
       0000:5898 ee              OUT        DX,AL
       0000:5899 42              INC        DX
       0000:589a b0 10           MOV        AL,0x10
       0000:589c ee              OUT        DX,AL
       0000:589d 5f              POP        DI
       0000:589e 5e              POP        SI
       0000:589f 5a              POP        DX
       0000:58a0 59              POP        CX
       0000:58a1 5b              POP        BX
       0000:58a2 58              POP        AX
       0000:58a3 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_58a4()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_58a4                                   XREF[3]:     FUN_0000_3658:0000:367c(c), 
                                                                                          FUN_0000_36fd:0000:3704(c), 
                                                                                          FUN_0000_3bbd:0000:3bdb(c)  
       0000:58a4 50              PUSH       AX
       0000:58a5 53              PUSH       BX
       0000:58a6 51              PUSH       CX
       0000:58a7 52              PUSH       DX
       0000:58a8 56              PUSH       SI
       0000:58a9 57              PUSH       DI
       0000:58aa ba ce 03        MOV        DX,0x3ce
       0000:58ad b0 05           MOV        AL,0x5
       0000:58af ee              OUT        DX,AL
       0000:58b0 42              INC        DX
       0000:58b1 b0 11           MOV        AL,0x11
       0000:58b3 ee              OUT        DX,AL
       0000:58b4 be 5e c3        MOV        SI,0xc35e
       0000:58b7 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:58bc 74 03           JZ         LAB_0000_58c1
       0000:58be 83 c6 02        ADD        SI,0x2
                             LAB_0000_58c1                                   XREF[1]:     0000:58bc(j)  
       0000:58c1 8b 1c           MOV        BX,word ptr [SI]
       0000:58c3 83 fb ff        CMP        BX,-0x1
       0000:58c6 74 40           JZ         LAB_0000_5908
       0000:58c8 be 62 c3        MOV        SI,0xc362
       0000:58cb f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:58d0 74 01           JZ         LAB_0000_58d3
       0000:58d2 46              INC        SI
                             LAB_0000_58d3                                   XREF[1]:     0000:58d0(j)  
       0000:58d3 8a 0c           MOV        CL,byte ptr [SI]
       0000:58d5 32 ed           XOR        CH,CH
       0000:58d7 bf 34 e4        MOV        DI,0xe434
       0000:58da f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:58df 74 03           JZ         LAB_0000_58e4
       0000:58e1 83 c7 24        ADD        DI,0x24
                             LAB_0000_58e4                                   XREF[2]:     0000:58df(j), 0000:5906(j)  
       0000:58e4 26 8a 05        MOV        AL,byte ptr ES:[DI]
       0000:58e7 47              INC        DI
       0000:58e8 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:58eb 26 8a 05        MOV        AL,byte ptr ES:[DI]
       0000:58ee 47              INC        DI
       0000:58ef 26 88 47 50     MOV        byte ptr ES:[BX + 0x50],AL
       0000:58f3 26 8a 05        MOV        AL,byte ptr ES:[DI]
       0000:58f6 47              INC        DI
       0000:58f7 26 88 87        MOV        byte ptr ES:[BX + 0xa0],AL
                 a0 00
       0000:58fc 26 8a 05        MOV        AL,byte ptr ES:[DI]
       0000:58ff 47              INC        DI
       0000:5900 26 88 87        MOV        byte ptr ES:[BX + 0xf0],AL
                 f0 00
       0000:5905 43              INC        BX
       0000:5906 e2 dc           LOOP       LAB_0000_58e4
                             LAB_0000_5908                                   XREF[1]:     0000:58c6(j)  
       0000:5908 ba ce 03        MOV        DX,0x3ce
       0000:590b b0 05           MOV        AL,0x5
       0000:590d ee              OUT        DX,AL
       0000:590e 42              INC        DX
       0000:590f b0 10           MOV        AL,0x10
       0000:5911 ee              OUT        DX,AL
       0000:5912 5f              POP        DI
       0000:5913 5e              POP        SI
       0000:5914 5a              POP        DX
       0000:5915 59              POP        CX
       0000:5916 5b              POP        BX
       0000:5917 58              POP        AX
       0000:5918 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5919()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5919                                   XREF[2]:     FUN_0000_240b:0000:2438(c), 
                                                                                          FUN_0000_4e5b:0000:4e82(c)  
       0000:5919 50              PUSH       AX
       0000:591a 53              PUSH       BX
       0000:591b 51              PUSH       CX
       0000:591c 56              PUSH       SI
       0000:591d 57              PUSH       DI
       0000:591e 81 fb 51 01     CMP        BX,0x151
       0000:5922 77 37           JA         LAB_0000_595b
       0000:5924 89 df           MOV        DI,BX
       0000:5926 d1 e7           SHL        DI,0x1
       0000:5928 d1 e7           SHL        DI,0x1
       0000:592a 03 fb           ADD        DI,BX
       0000:592c d1 e7           SHL        DI,0x1
       0000:592e d1 e7           SHL        DI,0x1
       0000:5930 d1 e7           SHL        DI,0x1
       0000:5932 d1 e7           SHL        DI,0x1
       0000:5934 01 c7           ADD        DI,AX
       0000:5936 03 3e 37 d2     ADD        DI,word ptr [0xd237]
       0000:593a b9 52 01        MOV        CX,0x152
       0000:593d 29 d9           SUB        CX,BX
       0000:593f 83 f9 0c        CMP        CX,0xc
       0000:5942 76 03           JBE        LAB_0000_5947
       0000:5944 b9 0c 00        MOV        CX,0xc
                             LAB_0000_5947                                   XREF[2]:     0000:5942(j), 0000:5959(j)  
       0000:5947 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:594a 46              INC        SI
       0000:594b 26 88 05        MOV        byte ptr ES:[DI],AL
       0000:594e 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5951 46              INC        SI
       0000:5952 26 88 45 01     MOV        byte ptr ES:[DI + 0x1],AL
       0000:5956 83 c7 50        ADD        DI,0x50
       0000:5959 e2 ec           LOOP       LAB_0000_5947
                             LAB_0000_595b                                   XREF[1]:     0000:5922(j)  
       0000:595b 5f              POP        DI
       0000:595c 5e              POP        SI
       0000:595d 59              POP        CX
       0000:595e 5b              POP        BX
       0000:595f 58              POP        AX
       0000:5960 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5961()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5961                                   XREF[1]:     FUN_0000_237e:0000:23b2(c)  
       0000:5961 50              PUSH       AX
       0000:5962 53              PUSH       BX
       0000:5963 51              PUSH       CX
       0000:5964 52              PUSH       DX
       0000:5965 56              PUSH       SI
       0000:5966 57              PUSH       DI
       0000:5967 89 de           MOV        SI,BX
       0000:5969 d1 e3           SHL        BX,0x1
       0000:596b d1 e3           SHL        BX,0x1
       0000:596d 03 f3           ADD        SI,BX
       0000:596f d1 e6           SHL        SI,0x1
       0000:5971 d1 e6           SHL        SI,0x1
       0000:5973 d1 e6           SHL        SI,0x1
       0000:5975 d1 e6           SHL        SI,0x1
       0000:5977 01 c6           ADD        SI,AX
       0000:5979 03 36 37 d2     ADD        SI,word ptr [0xd237]
       0000:597d 32 f6           XOR        DH,DH
       0000:597f 8a ca           MOV        CL,DL
       0000:5981 d0 e2           SHL        DL,0x1
       0000:5983 89 d7           MOV        DI,DX
       0000:5985 00 ca           ADD        DL,CL
       0000:5987 d0 e2           SHL        DL,0x1
       0000:5989 d0 e2           SHL        DL,0x1
       0000:598b d0 e2           SHL        DL,0x1
       0000:598d 89 d3           MOV        BX,DX
       0000:598f 81 c3 14 e9     ADD        BX,0xe914
       0000:5993 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5998 74 03           JZ         LAB_0000_599d
       0000:599a 83 c3 78        ADD        BX,0x78
                             LAB_0000_599d                                   XREF[1]:     0000:5998(j)  
       0000:599d 81 c7 fa c2     ADD        DI,0xc2fa
       0000:59a1 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:59a6 74 03           JZ         LAB_0000_59ab
       0000:59a8 83 c7 0a        ADD        DI,0xa
                             LAB_0000_59ab                                   XREF[1]:     0000:59a6(j)  
       0000:59ab 89 35           MOV        word ptr [DI],SI
       0000:59ad b9 0c 00        MOV        CX,0xc
                             LAB_0000_59b0                                   XREF[1]:     0000:59c2(j)  
       0000:59b0 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:59b3 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:59b6 43              INC        BX
       0000:59b7 26 8a 44 01     MOV        AL,byte ptr ES:[SI + 0x1]
       0000:59bb 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:59be 43              INC        BX
       0000:59bf 83 c6 50        ADD        SI,0x50
       0000:59c2 e2 ec           LOOP       LAB_0000_59b0
       0000:59c4 5f              POP        DI
       0000:59c5 5e              POP        SI
       0000:59c6 5a              POP        DX
       0000:59c7 59              POP        CX
       0000:59c8 5b              POP        BX
       0000:59c9 58              POP        AX
       0000:59ca c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_59cb()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_59cb                                   XREF[1]:     FUN_0000_2451:0000:2478(c)  
       0000:59cb 50              PUSH       AX
       0000:59cc 53              PUSH       BX
       0000:59cd 51              PUSH       CX
       0000:59ce 52              PUSH       DX
       0000:59cf 56              PUSH       SI
       0000:59d0 57              PUSH       DI
       0000:59d1 32 f6           XOR        DH,DH
       0000:59d3 8a ca           MOV        CL,DL
       0000:59d5 d0 e2           SHL        DL,0x1
       0000:59d7 89 d7           MOV        DI,DX
       0000:59d9 00 ca           ADD        DL,CL
       0000:59db d0 e2           SHL        DL,0x1
       0000:59dd d0 e2           SHL        DL,0x1
       0000:59df d0 e2           SHL        DL,0x1
       0000:59e1 89 d3           MOV        BX,DX
       0000:59e3 81 c3 14 e9     ADD        BX,0xe914
       0000:59e7 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:59ec 74 03           JZ         LAB_0000_59f1
       0000:59ee 83 c3 78        ADD        BX,0x78
                             LAB_0000_59f1                                   XREF[1]:     0000:59ec(j)  
       0000:59f1 81 c7 fa c2     ADD        DI,0xc2fa
       0000:59f5 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:59fa 74 03           JZ         LAB_0000_59ff
       0000:59fc 83 c7 0a        ADD        DI,0xa
                             LAB_0000_59ff                                   XREF[1]:     0000:59fa(j)  
       0000:59ff 8b 35           MOV        SI,word ptr [DI]
       0000:5a01 b9 0c 00        MOV        CX,0xc
                             LAB_0000_5a04                                   XREF[1]:     0000:5a16(j)  
       0000:5a04 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5a07 43              INC        BX
       0000:5a08 26 88 04        MOV        byte ptr ES:[SI],AL
       0000:5a0b 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5a0e 43              INC        BX
       0000:5a0f 26 88 44 01     MOV        byte ptr ES:[SI + 0x1],AL
       0000:5a13 83 c6 50        ADD        SI,0x50
       0000:5a16 e2 ec           LOOP       LAB_0000_5a04
       0000:5a18 5f              POP        DI
       0000:5a19 5e              POP        SI
       0000:5a1a 5a              POP        DX
       0000:5a1b 59              POP        CX
       0000:5a1c 5b              POP        BX
       0000:5a1d 58              POP        AX
       0000:5a1e c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5a1f()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x1]:1  local_1                                 XREF[1]:     0000:5a5c(*)  
                             FUN_0000_5a1f                                   XREF[3]:     FUN_0000_406d:0000:407a(c), 
                                                                                          FUN_0000_5b26:0000:5b7d(c), 
                                                                                          FUN_0000_5b26:0000:5ba1(c)  
       0000:5a1f 50              PUSH       AX
       0000:5a20 53              PUSH       BX
       0000:5a21 51              PUSH       CX
       0000:5a22 56              PUSH       SI
       0000:5a23 55              PUSH       BP
       0000:5a24 89 e5           MOV        BP,SP
       0000:5a26 32 ed           XOR        CH,CH
       0000:5a28 d1 e1           SHL        CX,0x1
       0000:5a2a d1 e1           SHL        CX,0x1
       0000:5a2c d1 e1           SHL        CX,0x1
       0000:5a2e d1 e1           SHL        CX,0x1
       0000:5a30 8b d9           MOV        BX,CX
       0000:5a32 d1 e1           SHL        CX,0x1
       0000:5a34 01 d9           ADD        CX,BX
       0000:5a36 8b f1           MOV        SI,CX
       0000:5a38 81 c6 84 dc     ADD        SI,0xdc84
       0000:5a3c 32 ff           XOR        BH,BH
       0000:5a3e 32 e4           XOR        AH,AH
       0000:5a40 8a d8           MOV        BL,AL
       0000:5a42 8b cb           MOV        CX,BX
       0000:5a44 d1 e3           SHL        BX,0x1
       0000:5a46 01 cb           ADD        BX,CX
       0000:5a48 8b cb           MOV        CX,BX
       0000:5a4a d1 e3           SHL        BX,0x1
       0000:5a4c d1 e3           SHL        BX,0x1
       0000:5a4e 01 cb           ADD        BX,CX
       0000:5a50 d1 e3           SHL        BX,0x1
       0000:5a52 d1 e3           SHL        BX,0x1
       0000:5a54 d1 e3           SHL        BX,0x1
       0000:5a56 d1 e3           SHL        BX,0x1
       0000:5a58 d1 e3           SHL        BX,0x1
       0000:5a5a d1 e3           SHL        BX,0x1
       0000:5a5c 8a 46 09        MOV        AL,byte ptr [BP + local_1]
       0000:5a5f 32 e4           XOR        AH,AH
       0000:5a61 d1 e0           SHL        AX,0x1
       0000:5a63 d1 e0           SHL        AX,0x1
       0000:5a65 01 c3           ADD        BX,AX
       0000:5a67 81 c3 c2 03     ADD        BX,0x3c2
       0000:5a6b 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:5a6f ba ce 03        MOV        DX,0x3ce
       0000:5a72 b0 05           MOV        AL,0x5
       0000:5a74 ee              OUT        DX,AL
       0000:5a75 42              INC        DX
       0000:5a76 b0 11           MOV        AL,0x11
       0000:5a78 ee              OUT        DX,AL
       0000:5a79 b9 0c 00        MOV        CX,0xc
                             LAB_0000_5a7c                                   XREF[1]:     0000:5a9e(j)  
       0000:5a7c 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5a7f 46              INC        SI
       0000:5a80 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5a83 43              INC        BX
       0000:5a84 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5a87 46              INC        SI
       0000:5a88 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5a8b 43              INC        BX
       0000:5a8c 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5a8f 46              INC        SI
       0000:5a90 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5a93 43              INC        BX
       0000:5a94 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5a97 46              INC        SI
       0000:5a98 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5a9b 83 c3 4d        ADD        BX,0x4d
       0000:5a9e e2 dc           LOOP       LAB_0000_5a7c
       0000:5aa0 ba ce 03        MOV        DX,0x3ce
       0000:5aa3 b0 05           MOV        AL,0x5
       0000:5aa5 ee              OUT        DX,AL
       0000:5aa6 42              INC        DX
       0000:5aa7 b0 10           MOV        AL,0x10
       0000:5aa9 ee              OUT        DX,AL
       0000:5aaa 5d              POP        BP
       0000:5aab 5e              POP        SI
       0000:5aac 59              POP        CX
       0000:5aad 5b              POP        BX
       0000:5aae 58              POP        AX
       0000:5aaf c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5ab0()
             undefined         <UNASSIGNED>   <RETURN>
             undefined2        Stack[-0x4]:2  local_4                                 XREF[2]:     0000:5acd(*), 
                                                                                                   0000:5ad4(*)  
                             FUN_0000_5ab0                                   XREF[1]:     FUN_0000_4c87:0000:4ca1(c)  
       0000:5ab0 50              PUSH       AX
       0000:5ab1 53              PUSH       BX
       0000:5ab2 51              PUSH       CX
       0000:5ab3 56              PUSH       SI
       0000:5ab4 55              PUSH       BP
       0000:5ab5 89 e5           MOV        BP,SP
       0000:5ab7 32 ed           XOR        CH,CH
       0000:5ab9 d1 e1           SHL        CX,0x1
       0000:5abb d1 e1           SHL        CX,0x1
       0000:5abd d1 e1           SHL        CX,0x1
       0000:5abf d1 e1           SHL        CX,0x1
       0000:5ac1 8b d9           MOV        BX,CX
       0000:5ac3 d1 e1           SHL        CX,0x1
       0000:5ac5 01 d9           ADD        CX,BX
       0000:5ac7 8b f1           MOV        SI,CX
       0000:5ac9 81 c6 84 dc     ADD        SI,0xdc84
       0000:5acd 8b 5e 06        MOV        BX,word ptr [BP + local_4]
       0000:5ad0 d1 e3           SHL        BX,0x1
       0000:5ad2 d1 e3           SHL        BX,0x1
       0000:5ad4 03 5e 06        ADD        BX,word ptr [BP + local_4]
       0000:5ad7 d1 e3           SHL        BX,0x1
       0000:5ad9 d1 e3           SHL        BX,0x1
       0000:5adb d1 e3           SHL        BX,0x1
       0000:5add d1 e3           SHL        BX,0x1
       0000:5adf 01 c3           ADD        BX,AX
       0000:5ae1 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:5ae5 ba ce 03        MOV        DX,0x3ce
       0000:5ae8 b0 05           MOV        AL,0x5
       0000:5aea ee              OUT        DX,AL
       0000:5aeb 42              INC        DX
       0000:5aec b0 11           MOV        AL,0x11
       0000:5aee ee              OUT        DX,AL
       0000:5aef b9 0c 00        MOV        CX,0xc
                             LAB_0000_5af2                                   XREF[1]:     0000:5b14(j)  
       0000:5af2 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5af5 46              INC        SI
       0000:5af6 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5af9 43              INC        BX
       0000:5afa 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5afd 46              INC        SI
       0000:5afe 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5b01 43              INC        BX
       0000:5b02 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5b05 46              INC        SI
       0000:5b06 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5b09 43              INC        BX
       0000:5b0a 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5b0d 46              INC        SI
       0000:5b0e 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5b11 83 c3 4d        ADD        BX,0x4d
       0000:5b14 e2 dc           LOOP       LAB_0000_5af2
       0000:5b16 ba ce 03        MOV        DX,0x3ce
       0000:5b19 b0 05           MOV        AL,0x5
       0000:5b1b ee              OUT        DX,AL
       0000:5b1c 42              INC        DX
       0000:5b1d b0 10           MOV        AL,0x10
       0000:5b1f ee              OUT        DX,AL
       0000:5b20 5d              POP        BP
       0000:5b21 5e              POP        SI
       0000:5b22 59              POP        CX
       0000:5b23 5b              POP        BX
       0000:5b24 58              POP        AX
       0000:5b25 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5b26()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5b26                                   XREF[3]:     0000:368e(c), 
                                                                                          FUN_0000_36fd:0000:3724(c), 
                                                                                          FUN_0000_3bbd:0000:3bea(c)  
       0000:5b26 50              PUSH       AX
       0000:5b27 53              PUSH       BX
       0000:5b28 51              PUSH       CX
       0000:5b29 52              PUSH       DX
       0000:5b2a f6 06 35        TEST       byte ptr [0xd235],0xff
                 d2 ff
       0000:5b2f 75 03           JNZ        LAB_0000_5b34
       0000:5b31 e9 84 00        JMP        LAB_0000_5bb8
                             LAB_0000_5b34                                   XREF[1]:     0000:5b2f(j)  
       0000:5b34 c6 06 54        MOV        byte ptr [0xd254],0x0
                 d2 00
       0000:5b39 bb 17 cf        MOV        BX,0xcf17
       0000:5b3c c6 06 36        MOV        byte ptr [0xd236],0x40
                 d2 40
       0000:5b41 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5b46 74 04           JZ         LAB_0000_5b4c
       0000:5b48 d0 26 36 d2     SHL        byte ptr [0xd236],0x1
                             LAB_0000_5b4c                                   XREF[1]:     0000:5b46(j)  
       0000:5b4c 8a 2e 35 d2     MOV        CH,byte ptr [0xd235]
                             LAB_0000_5b50                                   XREF[1]:     0000:5bb6(j)  
       0000:5b50 f6 47 02 ff     TEST       byte ptr [BX + 0x2],0xff
       0000:5b54 74 5b           JZ         LAB_0000_5bb1
       0000:5b56 fe cd           DEC        CH
       0000:5b58 8a 77 02        MOV        DH,byte ptr [BX + 0x2]
       0000:5b5b 84 36 36 d2     TEST       byte ptr [0xd236],DH
       0000:5b5f 74 39           JZ         LAB_0000_5b9a
       0000:5b61 80 e6 3f        AND        DH,0x3f
       0000:5b64 74 05           JZ         LAB_0000_5b6b
       0000:5b66 fe 4f 02        DEC        byte ptr [BX + 0x2]
       0000:5b69 eb 46           JMP        LAB_0000_5bb1
                             LAB_0000_5b6b                                   XREF[1]:     0000:5b64(j)  
       0000:5b6b 8a 07           MOV        AL,byte ptr [BX]
       0000:5b6d 32 e4           XOR        AH,AH
       0000:5b6f 53              PUSH       BX
       0000:5b70 8a 5f 01        MOV        BL,byte ptr [BX + 0x1]
       0000:5b73 32 ff           XOR        BH,BH
       0000:5b75 e8 82 ce        CALL       FUN_0000_29fa                                    undefined FUN_0000_29fa()
       0000:5b78 88 c4           MOV        AH,AL
       0000:5b7a 8a c3           MOV        AL,BL
       0000:5b7c 5b              POP        BX
       0000:5b7d e8 9f fe        CALL       FUN_0000_5a1f                                    undefined FUN_0000_5a1f()
       0000:5b80 f6 16 36 d2     NOT        byte ptr [0xd236]
       0000:5b84 8a 47 02        MOV        AL,byte ptr [BX + 0x2]
       0000:5b87 22 06 36 d2     AND        AL,byte ptr [0xd236]
       0000:5b8b 88 47 02        MOV        byte ptr [BX + 0x2],AL
       0000:5b8e f6 16 36 d2     NOT        byte ptr [0xd236]
       0000:5b92 75 04           JNZ        LAB_0000_5b98
       0000:5b94 fe 0e 35 d2     DEC        byte ptr [0xd235]
                             LAB_0000_5b98                                   XREF[1]:     0000:5b92(j)  
       0000:5b98 eb 17           JMP        LAB_0000_5bb1
                             LAB_0000_5b9a                                   XREF[1]:     0000:5b5f(j)  
       0000:5b9a 8a 27           MOV        AH,byte ptr [BX]
       0000:5b9c 8a 47 01        MOV        AL,byte ptr [BX + 0x1]
       0000:5b9f b1 20           MOV        CL,0x20
       0000:5ba1 e8 7b fe        CALL       FUN_0000_5a1f                                    undefined FUN_0000_5a1f()
       0000:5ba4 8a 47 02        MOV        AL,byte ptr [BX + 0x2]
       0000:5ba7 0a 06 36 d2     OR         AL,byte ptr [0xd236]
       0000:5bab 88 47 02        MOV        byte ptr [BX + 0x2],AL
       0000:5bae fe 4f 02        DEC        byte ptr [BX + 0x2]
                             LAB_0000_5bb1                                   XREF[3]:     0000:5b54(j), 0000:5b69(j), 
                                                                                          0000:5b98(j)  
       0000:5bb1 83 c3 03        ADD        BX,0x3
       0000:5bb4 84 ed           TEST       CH,CH
       0000:5bb6 75 98           JNZ        LAB_0000_5b50
                             LAB_0000_5bb8                                   XREF[1]:     0000:5b31(j)  
       0000:5bb8 5a              POP        DX
       0000:5bb9 59              POP        CX
       0000:5bba 5b              POP        BX
       0000:5bbb 58              POP        AX
       0000:5bbc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5bbd()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5bbd                                   XREF[2]:     FUN_0000_2a73:0000:2ac8(c), 
                                                                                          FUN_0000_2a73:0000:2aff(c)  
       0000:5bbd 53              PUSH       BX
       0000:5bbe bb 17 cf        MOV        BX,0xcf17
                             LAB_0000_5bc1                                   XREF[1]:     0000:5bce(j)  
       0000:5bc1 f6 47 02 ff     TEST       byte ptr [BX + 0x2],0xff
       0000:5bc5 74 0b           JZ         LAB_0000_5bd2
       0000:5bc7 83 c3 03        ADD        BX,0x3
       0000:5bca 81 fb 35 d2     CMP        BX,0xd235
       0000:5bce 72 f1           JC         LAB_0000_5bc1
       0000:5bd0 eb 10           JMP        LAB_0000_5be2
                             LAB_0000_5bd2                                   XREF[1]:     0000:5bc5(j)  
       0000:5bd2 88 27           MOV        byte ptr [BX],AH
       0000:5bd4 88 47 01        MOV        byte ptr [BX + 0x1],AL
       0000:5bd7 c6 47 02 05     MOV        byte ptr [BX + 0x2],0x5
       0000:5bdb fe 06 35 d2     INC        byte ptr [0xd235]
       0000:5bdf f8              CLC
                             LAB_0000_5be0                                   XREF[1]:     0000:5be3(j)  
       0000:5be0 5b              POP        BX
       0000:5be1 c3              RET
                             LAB_0000_5be2                                   XREF[1]:     0000:5bd0(j)  
       0000:5be2 f9              STC
       0000:5be3 eb fb           JMP        LAB_0000_5be0
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5be5()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5be5                                   XREF[1]:     0000:3691(c)  
       0000:5be5 50              PUSH       AX
       0000:5be6 53              PUSH       BX
       0000:5be7 51              PUSH       CX
       0000:5be8 52              PUSH       DX
       0000:5be9 b2 01           MOV        DL,0x1
       0000:5beb f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5bf0 74 02           JZ         LAB_0000_5bf4
       0000:5bf2 d0 e2           SHL        DL,0x1
                             LAB_0000_5bf4                                   XREF[1]:     0000:5bf0(j)  
       0000:5bf4 88 d6           MOV        DH,DL
       0000:5bf6 22 16 58 d2     AND        DL,byte ptr [0xd258]
       0000:5bfa 74 02           JZ         LAB_0000_5bfe
       0000:5bfc b2 01           MOV        DL,0x1
                             LAB_0000_5bfe                                   XREF[1]:     0000:5bfa(j)  
       0000:5bfe 3a 16 57 d2     CMP        DL,byte ptr [0xd257]
       0000:5c02 74 31           JZ         LAB_0000_5c35
       0000:5c04 b2 00           MOV        DL,0x0
       0000:5c06 f6 06 57        TEST       byte ptr [0xd257],0xff
                 d2 ff
       0000:5c0b 74 02           JZ         LAB_0000_5c0f
       0000:5c0d b2 0f           MOV        DL,0xf
                             LAB_0000_5c0f                                   XREF[1]:     0000:5c0b(j)  
       0000:5c0f b8 0f 00        MOV        AX,0xf
       0000:5c12 bb cf 01        MOV        BX,0x1cf
       0000:5c15 b9 4f 01        MOV        CX,0x14f
       0000:5c18 e8 81 e5        CALL       FUN_0000_419c                                    undefined FUN_0000_419c()
       0000:5c1b 8a 16 58 d2     MOV        DL,byte ptr [0xd258]
       0000:5c1f a0 57 d2        MOV        AL,[0xd257]
       0000:5c22 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5c27 74 02           JZ         LAB_0000_5c2b
       0000:5c29 d0 e0           SHL        AL,0x1
                             LAB_0000_5c2b                                   XREF[1]:     0000:5c27(j)  
       0000:5c2b f6 d6           NOT        DH
       0000:5c2d 22 d6           AND        DL,DH
       0000:5c2f 08 c2           OR         DL,AL
       0000:5c31 88 16 58 d2     MOV        byte ptr [0xd258],DL
                             LAB_0000_5c35                                   XREF[1]:     0000:5c02(j)  
       0000:5c35 5a              POP        DX
       0000:5c36 59              POP        CX
       0000:5c37 5b              POP        BX
       0000:5c38 58              POP        AX
       0000:5c39 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5c3a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5c3a                                   XREF[1]:     FUN_0000_5e23:0000:5e4d(c)  
       0000:5c3a 50              PUSH       AX
       0000:5c3b 53              PUSH       BX
       0000:5c3c 51              PUSH       CX
       0000:5c3d 52              PUSH       DX
       0000:5c3e 56              PUSH       SI
       0000:5c3f 8b cb           MOV        CX,BX
       0000:5c41 83 e9 07        SUB        CX,0x7
       0000:5c44 83 f9 08        CMP        CX,0x8
       0000:5c47 76 03           JBE        LAB_0000_5c4c
       0000:5c49 b9 08 00        MOV        CX,0x8
                             LAB_0000_5c4c                                   XREF[1]:     0000:5c47(j)  
       0000:5c4c 8b d0           MOV        DX,AX
       0000:5c4e 8b c3           MOV        AX,BX
       0000:5c50 d1 e3           SHL        BX,0x1
       0000:5c52 d1 e3           SHL        BX,0x1
       0000:5c54 01 c3           ADD        BX,AX
       0000:5c56 d1 e3           SHL        BX,0x1
       0000:5c58 d1 e3           SHL        BX,0x1
       0000:5c5a d1 e3           SHL        BX,0x1
       0000:5c5c d1 e3           SHL        BX,0x1
       0000:5c5e 8b c2           MOV        AX,DX
       0000:5c60 8b f0           MOV        SI,AX
       0000:5c62 d1 e8           SHR        AX,0x1
       0000:5c64 d1 e8           SHR        AX,0x1
       0000:5c66 d1 e8           SHR        AX,0x1
       0000:5c68 01 c3           ADD        BX,AX
       0000:5c6a 03 1e 37 d2     ADD        BX,word ptr [0xd237]
       0000:5c6e 81 c3 30 02     ADD        BX,0x230
       0000:5c72 83 e6 07        AND        SI,0x7
       0000:5c75 d1 e6           SHL        SI,0x1
       0000:5c77 81 c6 9f 0a     ADD        SI,0xa9f
       0000:5c7b f6 04 ff        TEST       byte ptr [SI],offset DAT_0000_0a9f               = E0h
       0000:5c7e 74 1a           JZ         LAB_0000_5c9a
       0000:5c80 ba ce 03        MOV        DX,0x3ce
       0000:5c83 b0 08           MOV        AL,0x8
       0000:5c85 ee              OUT        DX,AL
       0000:5c86 42              INC        DX
       0000:5c87 8a 04           MOV        AL,byte ptr [SI]=>DAT_0000_0a9f                  = E0h
       0000:5c89 ee              OUT        DX,AL
       0000:5c8a 51              PUSH       CX
       0000:5c8b 53              PUSH       BX
                             LAB_0000_5c8c                                   XREF[1]:     0000:5c96(j)  
       0000:5c8c 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5c8f 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:5c93 83 eb 50        SUB        BX,0x50
       0000:5c96 e2 f4           LOOP       LAB_0000_5c8c
       0000:5c98 5b              POP        BX
       0000:5c99 59              POP        CX
                             LAB_0000_5c9a                                   XREF[1]:     0000:5c7e(j)  
       0000:5c9a 43              INC        BX
       0000:5c9b f6 44 01 ff     TEST       byte ptr [SI + 0x1],offset LAB_0000_0aa0
       0000:5c9f 74 17           JZ         LAB_0000_5cb8
       0000:5ca1 ba ce 03        MOV        DX,0x3ce
       0000:5ca4 b0 08           MOV        AL,0x8
       0000:5ca6 ee              OUT        DX,AL
       0000:5ca7 42              INC        DX
       0000:5ca8 8a 44 01        MOV        AL,byte ptr [SI + 0x1]=>LAB_0000_0aa0
       0000:5cab ee              OUT        DX,AL
                             LAB_0000_5cac                                   XREF[1]:     0000:5cb6(j)  
       0000:5cac 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5caf 26 c6 07 ff     MOV        byte ptr ES:[BX],0xff
       0000:5cb3 83 eb 50        SUB        BX,0x50
       0000:5cb6 e2 f4           LOOP       LAB_0000_5cac
                             LAB_0000_5cb8                                   XREF[1]:     0000:5c9f(j)  
       0000:5cb8 ba ce 03        MOV        DX,0x3ce
       0000:5cbb b0 08           MOV        AL,0x8
       0000:5cbd ee              OUT        DX,AL
       0000:5cbe 42              INC        DX
       0000:5cbf b0 ff           MOV        AL,0xff
       0000:5cc1 ee              OUT        DX,AL
       0000:5cc2 5e              POP        SI
       0000:5cc3 5a              POP        DX
       0000:5cc4 59              POP        CX
       0000:5cc5 5b              POP        BX
       0000:5cc6 58              POP        AX
       0000:5cc7 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5cc8()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5cc8                                   XREF[1]:     FUN_0000_5d8c:0000:5dbd(c)  
       0000:5cc8 50              PUSH       AX
       0000:5cc9 53              PUSH       BX
       0000:5cca 51              PUSH       CX
       0000:5ccb 52              PUSH       DX
       0000:5ccc 56              PUSH       SI
       0000:5ccd 57              PUSH       DI
       0000:5cce 55              PUSH       BP
       0000:5ccf 89 e5           MOV        BP,SP
       0000:5cd1 89 de           MOV        SI,BX
       0000:5cd3 d1 e3           SHL        BX,0x1
       0000:5cd5 d1 e3           SHL        BX,0x1
       0000:5cd7 03 f3           ADD        SI,BX
       0000:5cd9 d1 e6           SHL        SI,0x1
       0000:5cdb d1 e6           SHL        SI,0x1
       0000:5cdd d1 e6           SHL        SI,0x1
       0000:5cdf d1 e6           SHL        SI,0x1
       0000:5ce1 d1 e8           SHR        AX,0x1
       0000:5ce3 d1 e8           SHR        AX,0x1
       0000:5ce5 d1 e8           SHR        AX,0x1
       0000:5ce7 01 c6           ADD        SI,AX
       0000:5ce9 03 36 37 d2     ADD        SI,word ptr [0xd237]
       0000:5ced 32 f6           XOR        DH,DH
       0000:5cef d0 e2           SHL        DL,0x1
       0000:5cf1 89 d7           MOV        DI,DX
       0000:5cf3 d0 e2           SHL        DL,0x1
       0000:5cf5 d0 e2           SHL        DL,0x1
       0000:5cf7 d0 e2           SHL        DL,0x1
       0000:5cf9 89 d3           MOV        BX,DX
       0000:5cfb 81 c3 04 ea     ADD        BX,0xea04
       0000:5cff f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5d04 74 03           JZ         LAB_0000_5d09
       0000:5d06 83 c3 40        ADD        BX,0x40
                             LAB_0000_5d09                                   XREF[1]:     0000:5d04(j)  
       0000:5d09 81 c7 4e c3     ADD        DI,0xc34e
       0000:5d0d f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5d12 74 03           JZ         LAB_0000_5d17
       0000:5d14 83 c7 08        ADD        DI,0x8
                             LAB_0000_5d17                                   XREF[1]:     0000:5d12(j)  
       0000:5d17 89 35           MOV        word ptr [DI],SI
       0000:5d19 b9 08 00        MOV        CX,0x8
                             LAB_0000_5d1c                                   XREF[1]:     0000:5d2e(j)  
       0000:5d1c 26 8a 04        MOV        AL,byte ptr ES:[SI]
       0000:5d1f 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5d22 43              INC        BX
       0000:5d23 26 8a 44 01     MOV        AL,byte ptr ES:[SI + 0x1]
       0000:5d27 26 88 07        MOV        byte ptr ES:[BX],AL
       0000:5d2a 43              INC        BX
       0000:5d2b 83 c6 50        ADD        SI,0x50
       0000:5d2e e2 ec           LOOP       LAB_0000_5d1c
       0000:5d30 5d              POP        BP
       0000:5d31 5f              POP        DI
       0000:5d32 5e              POP        SI
       0000:5d33 5a              POP        DX
       0000:5d34 59              POP        CX
       0000:5d35 5b              POP        BX
       0000:5d36 58              POP        AX
       0000:5d37 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5d38()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5d38                                   XREF[1]:     FUN_0000_5de1:0000:5e08(c)  
       0000:5d38 50              PUSH       AX
       0000:5d39 53              PUSH       BX
       0000:5d3a 51              PUSH       CX
       0000:5d3b 52              PUSH       DX
       0000:5d3c 56              PUSH       SI
       0000:5d3d 57              PUSH       DI
       0000:5d3e 55              PUSH       BP
       0000:5d3f 89 e5           MOV        BP,SP
       0000:5d41 32 f6           XOR        DH,DH
       0000:5d43 d0 e2           SHL        DL,0x1
       0000:5d45 89 d7           MOV        DI,DX
       0000:5d47 d0 e2           SHL        DL,0x1
       0000:5d49 d0 e2           SHL        DL,0x1
       0000:5d4b d0 e2           SHL        DL,0x1
       0000:5d4d 89 d3           MOV        BX,DX
       0000:5d4f 81 c3 04 ea     ADD        BX,0xea04
       0000:5d53 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5d58 74 03           JZ         LAB_0000_5d5d
       0000:5d5a 83 c3 40        ADD        BX,0x40
                             LAB_0000_5d5d                                   XREF[1]:     0000:5d58(j)  
       0000:5d5d 81 c7 4e c3     ADD        DI,0xc34e
       0000:5d61 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5d66 74 03           JZ         LAB_0000_5d6b
       0000:5d68 83 c7 08        ADD        DI,0x8
                             LAB_0000_5d6b                                   XREF[1]:     0000:5d66(j)  
       0000:5d6b 8b 35           MOV        SI,word ptr [DI]
       0000:5d6d b9 08 00        MOV        CX,0x8
                             LAB_0000_5d70                                   XREF[1]:     0000:5d82(j)  
       0000:5d70 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5d73 43              INC        BX
       0000:5d74 26 88 04        MOV        byte ptr ES:[SI],AL
       0000:5d77 26 8a 07        MOV        AL,byte ptr ES:[BX]
       0000:5d7a 43              INC        BX
       0000:5d7b 26 88 44 01     MOV        byte ptr ES:[SI + 0x1],AL
       0000:5d7f 83 c6 50        ADD        SI,0x50
       0000:5d82 e2 ec           LOOP       LAB_0000_5d70
       0000:5d84 5d              POP        BP
       0000:5d85 5f              POP        DI
       0000:5d86 5e              POP        SI
       0000:5d87 5a              POP        DX
       0000:5d88 59              POP        CX
       0000:5d89 5b              POP        BX
       0000:5d8a 58              POP        AX
       0000:5d8b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5d8c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5d8c                                   XREF[1]:     0000:36a0(c)  
       0000:5d8c 50              PUSH       AX
       0000:5d8d 53              PUSH       BX
       0000:5d8e 51              PUSH       CX
       0000:5d8f 52              PUSH       DX
       0000:5d90 56              PUSH       SI
       0000:5d91 57              PUSH       DI
       0000:5d92 ba ce 03        MOV        DX,0x3ce
       0000:5d95 b0 05           MOV        AL,0x5
       0000:5d97 ee              OUT        DX,AL
       0000:5d98 42              INC        DX
       0000:5d99 b0 11           MOV        AL,0x11
       0000:5d9b ee              OUT        DX,AL
       0000:5d9c b2 00           MOV        DL,0x0
       0000:5d9e be 0e c3        MOV        SI,0xc30e
       0000:5da1 bf 4e c3        MOV        DI,0xc34e
       0000:5da4 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5da9 74 03           JZ         LAB_0000_5dae
       0000:5dab 83 c7 08        ADD        DI,0x8
                             LAB_0000_5dae                                   XREF[1]:     0000:5da9(j)  
       0000:5dae b9 04 00        MOV        CX,0x4
                             LAB_0000_5db1                                   XREF[1]:     0000:5dce(j)  
       0000:5db1 f7 44 04        TEST       word ptr [SI + 0x4],0x1
                 01 00
       0000:5db6 74 0a           JZ         LAB_0000_5dc2
       0000:5db8 8b 04           MOV        AX,word ptr [SI]
       0000:5dba 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:5dbd e8 08 ff        CALL       FUN_0000_5cc8                                    undefined FUN_0000_5cc8()
       0000:5dc0 eb 04           JMP        LAB_0000_5dc6
                             LAB_0000_5dc2                                   XREF[1]:     0000:5db6(j)  
       0000:5dc2 c7 05 ff ff     MOV        word ptr [DI],0xffff
                             LAB_0000_5dc6                                   XREF[1]:     0000:5dc0(j)  
       0000:5dc6 83 c7 02        ADD        DI,0x2
       0000:5dc9 fe c2           INC        DL
       0000:5dcb 83 c6 10        ADD        SI,0x10
       0000:5dce e2 e1           LOOP       LAB_0000_5db1
       0000:5dd0 ba ce 03        MOV        DX,0x3ce
       0000:5dd3 b0 05           MOV        AL,0x5
       0000:5dd5 ee              OUT        DX,AL
       0000:5dd6 42              INC        DX
       0000:5dd7 b0 10           MOV        AL,0x10
       0000:5dd9 ee              OUT        DX,AL
       0000:5dda 5f              POP        DI
       0000:5ddb 5e              POP        SI
       0000:5ddc 5a              POP        DX
       0000:5ddd 59              POP        CX
       0000:5dde 5b              POP        BX
       0000:5ddf 58              POP        AX
       0000:5de0 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5de1()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5de1                                   XREF[2]:     FUN_0000_3658:0000:3679(c), 
                                                                                          FUN_0000_36fd:0000:3707(c)  
       0000:5de1 50              PUSH       AX
       0000:5de2 53              PUSH       BX
       0000:5de3 51              PUSH       CX
       0000:5de4 52              PUSH       DX
       0000:5de5 56              PUSH       SI
       0000:5de6 57              PUSH       DI
       0000:5de7 ba ce 03        MOV        DX,0x3ce
       0000:5dea b0 05           MOV        AL,0x5
       0000:5dec ee              OUT        DX,AL
       0000:5ded 42              INC        DX
       0000:5dee b0 11           MOV        AL,0x11
       0000:5df0 ee              OUT        DX,AL
       0000:5df1 b2 00           MOV        DL,0x0
       0000:5df3 be 4e c3        MOV        SI,0xc34e
       0000:5df6 f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5dfb 74 03           JZ         LAB_0000_5e00
       0000:5dfd 83 c6 08        ADD        SI,0x8
                             LAB_0000_5e00                                   XREF[1]:     0000:5dfb(j)  
       0000:5e00 b9 04 00        MOV        CX,0x4
                             LAB_0000_5e03                                   XREF[1]:     0000:5e10(j)  
       0000:5e03 83 3c ff        CMP        word ptr [SI],-0x1
       0000:5e06 74 03           JZ         LAB_0000_5e0b
       0000:5e08 e8 2d ff        CALL       FUN_0000_5d38                                    undefined FUN_0000_5d38()
                             LAB_0000_5e0b                                   XREF[1]:     0000:5e06(j)  
       0000:5e0b fe c2           INC        DL
       0000:5e0d 83 c6 02        ADD        SI,0x2
       0000:5e10 e2 f1           LOOP       LAB_0000_5e03
       0000:5e12 ba ce 03        MOV        DX,0x3ce
       0000:5e15 b0 05           MOV        AL,0x5
       0000:5e17 ee              OUT        DX,AL
       0000:5e18 42              INC        DX
       0000:5e19 b0 10           MOV        AL,0x10
       0000:5e1b ee              OUT        DX,AL
       0000:5e1c 5f              POP        DI
       0000:5e1d 5e              POP        SI
       0000:5e1e 5a              POP        DX
       0000:5e1f 59              POP        CX
       0000:5e20 5b              POP        BX
       0000:5e21 58              POP        AX
       0000:5e22 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5e23()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5e23                                   XREF[1]:     0000:36a6(c)  
       0000:5e23 50              PUSH       AX
       0000:5e24 53              PUSH       BX
       0000:5e25 51              PUSH       CX
       0000:5e26 52              PUSH       DX
       0000:5e27 56              PUSH       SI
       0000:5e28 ba ce 03        MOV        DX,0x3ce
       0000:5e2b b0 01           MOV        AL,0x1
       0000:5e2d ee              OUT        DX,AL
       0000:5e2e 42              INC        DX
       0000:5e2f b0 0f           MOV        AL,0xf
       0000:5e31 ee              OUT        DX,AL
       0000:5e32 ba ce 03        MOV        DX,0x3ce
       0000:5e35 32 c0           XOR        AL,AL
       0000:5e37 ee              OUT        DX,AL
       0000:5e38 42              INC        DX
       0000:5e39 b0 0e           MOV        AL,0xe
       0000:5e3b ee              OUT        DX,AL
       0000:5e3c b9 04 00        MOV        CX,0x4
       0000:5e3f be 0e c3        MOV        SI,0xc30e
                             LAB_0000_5e42                                   XREF[1]:     0000:5e53(j)  
       0000:5e42 f6 44 04 01     TEST       byte ptr [SI + 0x4],0x1
       0000:5e46 74 08           JZ         LAB_0000_5e50
       0000:5e48 8b 04           MOV        AX,word ptr [SI]
       0000:5e4a 8b 5c 02        MOV        BX,word ptr [SI + 0x2]
       0000:5e4d e8 ea fd        CALL       FUN_0000_5c3a                                    undefined FUN_0000_5c3a()
                             LAB_0000_5e50                                   XREF[1]:     0000:5e46(j)  
       0000:5e50 83 c6 10        ADD        SI,0x10
       0000:5e53 e2 ed           LOOP       LAB_0000_5e42
       0000:5e55 ba ce 03        MOV        DX,0x3ce
       0000:5e58 b0 01           MOV        AL,0x1
       0000:5e5a ee              OUT        DX,AL
       0000:5e5b 42              INC        DX
       0000:5e5c b0 00           MOV        AL,0x0
       0000:5e5e ee              OUT        DX,AL
       0000:5e5f 5e              POP        SI
       0000:5e60 5a              POP        DX
       0000:5e61 59              POP        CX
       0000:5e62 5b              POP        BX
       0000:5e63 58              POP        AX
       0000:5e64 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5e65()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5e65                                   XREF[1]:     0000:3694(c)  
       0000:5e65 50              PUSH       AX
       0000:5e66 56              PUSH       SI
       0000:5e67 be 59 d2        MOV        SI,0xd259
       0000:5e6a 8a 04           MOV        AL,byte ptr [SI]
       0000:5e6c 46              INC        SI
       0000:5e6d f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:5e72 74 01           JZ         LAB_0000_5e75
       0000:5e74 46              INC        SI
                             LAB_0000_5e75                                   XREF[1]:     0000:5e72(j)  
       0000:5e75 8a 24           MOV        AH,byte ptr [SI]
       0000:5e77 3a e0           CMP        AH,AL
       0000:5e79 74 05           JZ         LAB_0000_5e80
       0000:5e7b e8 05 00        CALL       FUN_0000_5e83                                    undefined FUN_0000_5e83()
       0000:5e7e 88 04           MOV        byte ptr [SI],AL
                             LAB_0000_5e80                                   XREF[1]:     0000:5e79(j)  
       0000:5e80 5e              POP        SI
       0000:5e81 58              POP        AX
       0000:5e82 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5e83()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5e83                                   XREF[1]:     FUN_0000_5e65:0000:5e7b(c)  
       0000:5e83 50              PUSH       AX
       0000:5e84 53              PUSH       BX
       0000:5e85 51              PUSH       CX
       0000:5e86 52              PUSH       DX
       0000:5e87 56              PUSH       SI
       0000:5e88 57              PUSH       DI
       0000:5e89 bf 5c d2        MOV        DI,0xd25c
       0000:5e8c be e3 0a        MOV        SI,0xae3
       0000:5e8f b9 06 00        MOV        CX,0x6
                             LAB_0000_5e92                                   XREF[1]:     0000:5e98(j)  
       0000:5e92 8a 04           MOV        AL,byte ptr [SI]
       0000:5e94 88 05           MOV        byte ptr [DI],AL
       0000:5e96 47              INC        DI
       0000:5e97 46              INC        SI
       0000:5e98 e2 f8           LOOP       LAB_0000_5e92
       0000:5e9a b2 07           MOV        DL,0x7
       0000:5e9c b8 25 02        MOV        AX,0x225
       0000:5e9f bb c4 00        MOV        BX,0xc4
       0000:5ea2 bf 5c d2        MOV        DI,0xd25c
       0000:5ea5 e8 fe de        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:5ea8 8a 36 59 d2     MOV        DH,byte ptr [0xd259]
       0000:5eac bf 5c d2        MOV        DI,0xd25c
       0000:5eaf b9 05 00        MOV        CX,0x5
                             LAB_0000_5eb2                                   XREF[1]:     0000:5eba(j)  
       0000:5eb2 d0 de           RCR        DH,0x1
       0000:5eb4 72 03           JC         LAB_0000_5eb9
       0000:5eb6 c6 05 20        MOV        byte ptr [DI],0x20
                             LAB_0000_5eb9                                   XREF[1]:     0000:5eb4(j)  
       0000:5eb9 47              INC        DI
       0000:5eba e2 f6           LOOP       LAB_0000_5eb2
       0000:5ebc b2 0e           MOV        DL,0xe
       0000:5ebe b8 25 02        MOV        AX,0x225
       0000:5ec1 bb c4 00        MOV        BX,0xc4
       0000:5ec4 bf 5c d2        MOV        DI,0xd25c
       0000:5ec7 e8 dc de        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:5eca a0 59 d2        MOV        AL,[0xd259]
       0000:5ecd 3c 1f           CMP        AL,0x1f
       0000:5ecf 75 03           JNZ        LAB_0000_5ed4
       0000:5ed1 e8 fd db        CALL       FUN_0000_3ad1                                    undefined FUN_0000_3ad1()
                             LAB_0000_5ed4                                   XREF[1]:     0000:5ecf(j)  
       0000:5ed4 5f              POP        DI
       0000:5ed5 5e              POP        SI
       0000:5ed6 5a              POP        DX
       0000:5ed7 59              POP        CX
       0000:5ed8 5b              POP        BX
       0000:5ed9 58              POP        AX
       0000:5eda c3              RET
       0000:5edb 31 00           XOR        word ptr [BX + SI],AX
       0000:5edd e2 7e           LOOP       LAB_0000_5f5c+1
       0000:5edf 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5ee1()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5ee1                                   XREF[2]:     0000:36af(c), 
                                                                                          FUN_0000_36fd:0000:3727(c)  
       0000:5ee1 50              PUSH       AX
       0000:5ee2 52              PUSH       DX
       0000:5ee3 f7 06 99        TEST       word ptr [0xd399],0xffff
                 d3 ff ff
       0000:5ee9 74 05           JZ         LAB_0000_5ef0
       0000:5eeb c6 06 54        MOV        byte ptr [0xd254],0x0
                 d2 00
                             LAB_0000_5ef0                                   XREF[1]:     0000:5ee9(j)  
       0000:5ef0 f6 06 98        TEST       byte ptr [0xd398],0xff
                 d3 ff
       0000:5ef5 75 7c           JNZ        LAB_0000_5f73
       0000:5ef7 c6 06 98        MOV        byte ptr [0xd398],0x2
                 d3 02
       0000:5efc a1 99 d3        MOV        AX,[0xd399]
       0000:5eff 3d 00 00        CMP        AX,0x0
       0000:5f02 74 6c           JZ         LAB_0000_5f70
       0000:5f04 48              DEC        AX
       0000:5f05 a3 99 d3        MOV        [0xd399],AX
       0000:5f08 fe 06 a0 d3     INC        byte ptr [0xd3a0]
       0000:5f0c 80 3e a0        CMP        byte ptr [0xd3a0],0xa
                 d3 0a
       0000:5f11 75 55           JNZ        LAB_0000_5f68
       0000:5f13 c6 06 a0        MOV        byte ptr [0xd3a0],0x0
                 d3 00
       0000:5f18 fe 06 9f d3     INC        byte ptr [0xd39f]
       0000:5f1c 80 3e 9f        CMP        byte ptr [0xd39f],0xa
                 d3 0a
       0000:5f21 75 45           JNZ        LAB_0000_5f68
       0000:5f23 c6 06 9f        MOV        byte ptr [0xd39f],0x0
                 d3 00
       0000:5f28 fe 06 9e d3     INC        byte ptr [0xd39e]
       0000:5f2c 80 3e 9e        CMP        byte ptr [0xd39e],0xa
                 d3 0a
       0000:5f31 75 35           JNZ        LAB_0000_5f68
       0000:5f33 c6 06 9e        MOV        byte ptr [0xd39e],0x0
                 d3 00
       0000:5f38 fe 06 9d d3     INC        byte ptr [0xd39d]
       0000:5f3c 80 3e 9d        CMP        byte ptr [0xd39d],0xa
                 d3 0a
       0000:5f41 75 25           JNZ        LAB_0000_5f68
       0000:5f43 c6 06 9d        MOV        byte ptr [0xd39d],0x0
                 d3 00
       0000:5f48 fe 06 9c d3     INC        byte ptr [0xd39c]
       0000:5f4c 80 3e 9c        CMP        byte ptr [0xd39c],0xa
                 d3 0a
       0000:5f51 75 15           JNZ        LAB_0000_5f68
       0000:5f53 c6 06 9c        MOV        byte ptr [0xd39c],0x0
                 d3 00
       0000:5f58 fe 06 9b d3     INC        byte ptr [0xd39b]
                             LAB_0000_5f5c+1                                 XREF[0,1]:   0000:5edd(j)  
       0000:5f5c 80 3e 9b        CMP        byte ptr [0xd39b],0xa
                 d3 0a
       0000:5f61 75 05           JNZ        LAB_0000_5f68
       0000:5f63 c6 06 9b        MOV        byte ptr [0xd39b],0x0
                 d3 00
                             LAB_0000_5f68                                   XREF[6]:     0000:5f11(j), 0000:5f21(j), 
                                                                                          0000:5f31(j), 0000:5f41(j), 
                                                                                          0000:5f51(j), 0000:5f61(j)  
       0000:5f68 b2 01           MOV        DL,0x1
       0000:5f6a e8 56 00        CALL       FUN_0000_5fc3                                    undefined FUN_0000_5fc3()
       0000:5f6d e8 09 00        CALL       FUN_0000_5f79                                    undefined FUN_0000_5f79()
                             LAB_0000_5f70                                   XREF[2]:     0000:5f02(j), 0000:5f77(j)  
       0000:5f70 5a              POP        DX
       0000:5f71 58              POP        AX
       0000:5f72 c3              RET
                             LAB_0000_5f73                                   XREF[1]:     0000:5ef5(j)  
       0000:5f73 fe 0e 98 d3     DEC        byte ptr [0xd398]
       0000:5f77 eb f7           JMP        LAB_0000_5f70
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5f79()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5f79                                   XREF[3]:     FUN_0000_253f:0000:2586(c), 
                                                                                          FUN_0000_3ad1:0000:3b1f(c), 
                                                                                          FUN_0000_5ee1:0000:5f6d(c)  
       0000:5f79 56              PUSH       SI
       0000:5f7a 57              PUSH       DI
       0000:5f7b bf 9b d3        MOV        DI,0xd39b
       0000:5f7e be a2 d3        MOV        SI,0xd3a2
       0000:5f81 e8 e2 e8        CALL       FUN_0000_4866                                    undefined FUN_0000_4866()
       0000:5f84 73 3a           JNC        LAB_0000_5fc0
       0000:5f86 e8 11 c6        CALL       FUN_0000_259a                                    undefined FUN_0000_259a()
       0000:5f89 bf 3c 0d        MOV        DI,0xd3c
       0000:5f8c e8 50 f3        CALL       FUN_0000_52df                                    undefined FUN_0000_52df()
       0000:5f8f 80 06 a4        ADD        byte ptr [0xd3a4],0x4
                 d3 04
       0000:5f94 80 3e a4        CMP        byte ptr [0xd3a4],0xa
                 d3 0a
       0000:5f99 72 25           JC         LAB_0000_5fc0
       0000:5f9b 80 2e a4        SUB        byte ptr [0xd3a4],0xa
                 d3 0a
       0000:5fa0 fe 06 a3 d3     INC        byte ptr [0xd3a3]
       0000:5fa4 80 3e a3        CMP        byte ptr [0xd3a3],0xa
                 d3 0a
       0000:5fa9 72 15           JC         LAB_0000_5fc0
       0000:5fab 80 2e a3        SUB        byte ptr [0xd3a3],0xa
                 d3 0a
       0000:5fb0 fe 06 a2 d3     INC        byte ptr [0xd3a2]
       0000:5fb4 80 3e a2        CMP        byte ptr [0xd3a2],0xa
                 d3 0a
       0000:5fb9 72 05           JC         LAB_0000_5fc0
       0000:5fbb 80 2e a2        SUB        byte ptr [0xd3a2],0xa
                 d3 0a
                             LAB_0000_5fc0                                   XREF[4]:     0000:5f84(j), 0000:5f99(j), 
                                                                                          0000:5fa9(j), 0000:5fb9(j)  
       0000:5fc0 5f              POP        DI
       0000:5fc1 5e              POP        SI
       0000:5fc2 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5fc3()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5fc3                                   XREF[4]:     FUN_0000_253f:0000:2583(c), 
                                                                                          FUN_0000_391f:0000:3925(c), 
                                                                                          FUN_0000_3ad1:0000:3b1c(c), 
                                                                                          FUN_0000_5ee1:0000:5f6a(c)  
       0000:5fc3 50              PUSH       AX
       0000:5fc4 53              PUSH       BX
       0000:5fc5 57              PUSH       DI
       0000:5fc6 b8 44 00        MOV        AX,0x44
       0000:5fc9 bb 25 00        MOV        BX,0x25
       0000:5fcc bf 9b d3        MOV        DI,0xd39b
       0000:5fcf e8 2e dd        CALL       FUN_0000_3d00                                    undefined FUN_0000_3d00()
       0000:5fd2 5f              POP        DI
       0000:5fd3 5b              POP        BX
       0000:5fd4 58              POP        AX
       0000:5fd5 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5fd6()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5fd6                                   XREF[1]:     FUN_0000_391f:0000:3928(c)  
       0000:5fd6 50              PUSH       AX
       0000:5fd7 53              PUSH       BX
       0000:5fd8 57              PUSH       DI
       0000:5fd9 b8 48 00        MOV        AX,0x48
       0000:5fdc bb 59 00        MOV        BX,0x59
       0000:5fdf bf a8 d3        MOV        DI,0xd3a8
       0000:5fe2 e8 1b dd        CALL       FUN_0000_3d00                                    undefined FUN_0000_3d00()
       0000:5fe5 5f              POP        DI
       0000:5fe6 5b              POP        BX
       0000:5fe7 58              POP        AX
       0000:5fe8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5fe9()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5fe9                                   XREF[3]:     FUN_0000_259a:0000:25b5(c), 
                                                                                          FUN_0000_391f:0000:392b(c), 
                                                                                          FUN_0000_3a59:0000:3a6f(c)  
       0000:5fe9 50              PUSH       AX
       0000:5fea 53              PUSH       BX
       0000:5feb 57              PUSH       DI
       0000:5fec b8 48 00        MOV        AX,0x48
       0000:5fef bb 8d 00        MOV        BX,0x8d
       0000:5ff2 bf ab d3        MOV        DI,0xd3ab
       0000:5ff5 e8 08 dd        CALL       FUN_0000_3d00                                    undefined FUN_0000_3d00()
       0000:5ff8 5f              POP        DI
       0000:5ff9 5b              POP        BX
       0000:5ffa 58              POP        AX
       0000:5ffb c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_5ffc()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_5ffc                                   XREF[1]:     FUN_0000_60f7:0000:60f7(c)  
       0000:5ffc 56              PUSH       SI
       0000:5ffd 57              PUSH       DI
       0000:5ffe be b1 07        MOV        SI,0x7b1
       0000:6001 bf ce 80        MOV        DI,0x80ce
                             LAB_0000_6004                                   XREF[1]:     0000:601c(j)  
       0000:6004 80 3c ff        CMP        byte ptr [SI],0xff
       0000:6007 74 15           JZ         LAB_0000_601e
       0000:6009 c6 05 00        MOV        byte ptr [DI],0x0
       0000:600c e8 18 00        CALL       FUN_0000_6027                                    undefined FUN_0000_6027()
       0000:600f 73 03           JNC        LAB_0000_6014
       0000:6011 c6 05 01        MOV        byte ptr [DI],0x1
                             LAB_0000_6014                                   XREF[2]:     0000:600f(j), 0000:6019(j)  
       0000:6014 46              INC        SI
       0000:6015 80 7c ff 24     CMP        byte ptr [SI + -0x1],0x24
       0000:6019 75 f9           JNZ        LAB_0000_6014
       0000:601b 47              INC        DI
       0000:601c eb e6           JMP        LAB_0000_6004
                             LAB_0000_601e                                   XREF[1]:     0000:6007(j)  
       0000:601e c6 05 ff        MOV        byte ptr [DI],0xff
       0000:6021 e8 1d 00        CALL       FUN_0000_6041                                    undefined FUN_0000_6041()
       0000:6024 5f              POP        DI
       0000:6025 5e              POP        SI
       0000:6026 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6027()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6027                                   XREF[1]:     FUN_0000_5ffc:0000:600c(c)  
       0000:6027 50              PUSH       AX
       0000:6028 53              PUSH       BX
       0000:6029 52              PUSH       DX
       0000:602a b8 00 3d        MOV        AX,0x3d00
       0000:602d 89 f2           MOV        DX,SI
       0000:602f cd 21           INT        0x21
       0000:6031 72 09           JC         LAB_0000_603c
       0000:6033 8b d8           MOV        BX,AX
       0000:6035 b4 3e           MOV        AH,0x3e
       0000:6037 cd 21           INT        0x21
       0000:6039 f8              CLC
       0000:603a eb 01           JMP        LAB_0000_603d
                             LAB_0000_603c                                   XREF[1]:     0000:6031(j)  
       0000:603c f9              STC
                             LAB_0000_603d                                   XREF[1]:     0000:603a(j)  
       0000:603d 5a              POP        DX
       0000:603e 5b              POP        BX
       0000:603f 58              POP        AX
       0000:6040 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6041()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6041                                   XREF[1]:     FUN_0000_5ffc:0000:6021(c)  
       0000:6041 50              PUSH       AX
       0000:6042 52              PUSH       DX
       0000:6043 56              PUSH       SI
       0000:6044 57              PUSH       DI
       0000:6045 be ce 80        MOV        SI,0x80ce
       0000:6048 b0 00           MOV        AL,0x0
                             LAB_0000_604a                                   XREF[1]:     0000:6057(j)  
       0000:604a 80 3c ff        CMP        byte ptr [SI],0xff
       0000:604d 74 0a           JZ         LAB_0000_6059
       0000:604f f6 04 ff        TEST       byte ptr [SI],0xff
       0000:6052 74 02           JZ         LAB_0000_6056
       0000:6054 b0 01           MOV        AL,0x1
                             LAB_0000_6056                                   XREF[1]:     0000:6052(j)  
       0000:6056 46              INC        SI
       0000:6057 eb f1           JMP        LAB_0000_604a
                             LAB_0000_6059                                   XREF[1]:     0000:604d(j)  
       0000:6059 84 c0           TEST       AL,AL
       0000:605b 74 39           JZ         LAB_0000_6096
       0000:605d b4 09           MOV        AH,0x9
       0000:605f ba ca 07        MOV        DX,0x7ca
       0000:6062 cd 21           INT        0x21
       0000:6064 be ce 80        MOV        SI,0x80ce
       0000:6067 bf b1 07        MOV        DI,0x7b1
                             LAB_0000_606a                                   XREF[1]:     0000:608a(j)  
       0000:606a 80 3c ff        CMP        byte ptr [SI],0xff
       0000:606d 74 1d           JZ         LAB_0000_608c
       0000:606f f6 04 ff        TEST       byte ptr [SI],0xff
       0000:6072 74 0e           JZ         LAB_0000_6082
       0000:6074 ba 49 08        MOV        DX,0x849
       0000:6077 cd 21           INT        0x21
       0000:6079 89 fa           MOV        DX,DI
       0000:607b cd 21           INT        0x21
       0000:607d ba 53 08        MOV        DX,0x853
       0000:6080 cd 21           INT        0x21
                             LAB_0000_6082                                   XREF[2]:     0000:6072(j), 0000:6087(j)  
       0000:6082 47              INC        DI
       0000:6083 80 7d ff 24     CMP        byte ptr [DI + -0x1],0x24
       0000:6087 75 f9           JNZ        LAB_0000_6082
       0000:6089 46              INC        SI
       0000:608a eb de           JMP        LAB_0000_606a
                             LAB_0000_608c                                   XREF[1]:     0000:606d(j)  
       0000:608c ba ff 07        MOV        DX,0x7ff
       0000:608f cd 21           INT        0x21
       0000:6091 b8 01 4c        MOV        AX,0x4c01
       0000:6094 cd 21           INT        0x21
                             LAB_0000_6096                                   XREF[1]:     0000:605b(j)  
       0000:6096 5f              POP        DI
       0000:6097 5e              POP        SI
       0000:6098 5a              POP        DX
       0000:6099 58              POP        AX
       0000:609a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_609b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_609b                                   XREF[1]:     FUN_0000_60f7:0000:6101(c)  
       0000:609b 50              PUSH       AX
       0000:609c 53              PUSH       BX
       0000:609d 52              PUSH       DX
       0000:609e 57              PUSH       DI
       0000:609f 06              PUSH       ES
       0000:60a0 b8 00 1a        MOV        AX,0x1a00
       0000:60a3 cd 10           INT        0x10
       0000:60a5 b2 01           MOV        DL,0x1
       0000:60a7 3c 1a           CMP        AL,0x1a
       0000:60a9 75 38           JNZ        LAB_0000_60e3
       0000:60ab 80 fb 04        CMP        BL,0x4
       0000:60ae 72 33           JC         LAB_0000_60e3
       0000:60b0 80 fb 08        CMP        BL,0x8
       0000:60b3 77 2e           JA         LAB_0000_60e3
       0000:60b5 1e              PUSH       DS
       0000:60b6 07              POP        ES
       0000:60b7 bf d8 d3        MOV        DI,0xd3d8
       0000:60ba b4 1b           MOV        AH,0x1b
       0000:60bc bb 00 00        MOV        BX,0x0
       0000:60bf cd 10           INT        0x10
       0000:60c1 a0 09 d4        MOV        AL,[0xd409]
       0000:60c4 b2 00           MOV        DL,0x0
       0000:60c6 3c 03           CMP        AL,0x3
       0000:60c8 72 19           JC         LAB_0000_60e3
       0000:60ca a1 da d3        MOV        AX,[0xd3da]
       0000:60cd 50              PUSH       AX
       0000:60ce 07              POP        ES
       0000:60cf 8b 3e d8 d3     MOV        DI,word ptr [0xd3d8]
       0000:60d3 b2 01           MOV        DL,0x1
       0000:60d5 26 8a 45 02     MOV        AL,byte ptr ES:[DI + 0x2]
       0000:60d9 a8 01           TEST       AL,0x1
       0000:60db 74 06           JZ         LAB_0000_60e3
       0000:60dd 07              POP        ES
       0000:60de 5f              POP        DI
       0000:60df 5a              POP        DX
       0000:60e0 5b              POP        BX
       0000:60e1 58              POP        AX
       0000:60e2 c3              RET
                             LAB_0000_60e3                                   XREF[5]:     0000:60a9(j), 0000:60ae(j), 
                                                                                          0000:60b3(j), 0000:60c8(j), 
                                                                                          0000:60db(j)  
       0000:60e3 32 f6           XOR        DH,DH
       0000:60e5 d1 e2           SHL        DX,0x1
       0000:60e7 be c6 02        MOV        SI,0x2c6
       0000:60ea 03 f2           ADD        SI,DX
       0000:60ec 8b 14           MOV        DX,word ptr [SI]
       0000:60ee b4 09           MOV        AH,0x9
       0000:60f0 cd 21           INT        0x21
       0000:60f2 b8 01 4c        MOV        AX,0x4c01
       0000:60f5 cd 21           INT        0x21
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_60f7()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_60f7                                   XREF[1]:     FUN_0000_5111:0000:5117(c)  
       0000:60f7 e8 02 ff        CALL       FUN_0000_5ffc                                    undefined FUN_0000_5ffc()
       0000:60fa f6 06 d2        TEST       byte ptr [0xced2],0xff
                 ce ff
       0000:60ff 75 03           JNZ        LAB_0000_6104
       0000:6101 e8 97 ff        CALL       FUN_0000_609b                                    undefined FUN_0000_609b()
                             LAB_0000_6104                                   XREF[1]:     0000:60ff(j)  
       0000:6104 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6105()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6105                                   XREF[1]:     FUN_0000_5111:0000:5114(c)  
       0000:6105 50              PUSH       AX
       0000:6106 56              PUSH       SI
       0000:6107 57              PUSH       DI
       0000:6108 be 80 00        MOV        SI,0x80
       0000:610b f6 04 ff        TEST       byte ptr [SI],0xff
       0000:610e 74 40           JZ         LAB_0000_6150
                             LAB_0000_6110                                   XREF[3]:     0000:6119(j), 0000:611d(j), 
                                                                                          0000:6142(j)  
       0000:6110 46              INC        SI
       0000:6111 8a 04           MOV        AL,byte ptr [SI]
       0000:6113 3c 0d           CMP        AL,0xd
       0000:6115 74 39           JZ         LAB_0000_6150
       0000:6117 3c 20           CMP        AL,0x20
       0000:6119 74 f5           JZ         LAB_0000_6110
       0000:611b 3c 09           CMP        AL,0x9
       0000:611d 74 f1           JZ         LAB_0000_6110
       0000:611f 3c 2f           CMP        AL,0x2f
       0000:6121 74 06           JZ         LAB_0000_6129
       0000:6123 3c 2d           CMP        AL,0x2d
       0000:6125 74 02           JZ         LAB_0000_6129
       0000:6127 eb 1b           JMP        LAB_0000_6144
                             LAB_0000_6129                                   XREF[2]:     0000:6121(j), 0000:6125(j)  
       0000:6129 46              INC        SI
       0000:612a 8a 04           MOV        AL,byte ptr [SI]
       0000:612c 0c 20           OR         AL,0x20
       0000:612e bb 21 01        MOV        BX,0x121
                             LAB_0000_6131                                   XREF[1]:     0000:613d(j)  
       0000:6131 80 3f ff        CMP        byte ptr [BX],0xff
       0000:6134 74 0e           JZ         LAB_0000_6144
       0000:6136 3a 07           CMP        AL,byte ptr [BX]
       0000:6138 74 05           JZ         LAB_0000_613f
       0000:613a 83 c3 03        ADD        BX,0x3
       0000:613d eb f2           JMP        LAB_0000_6131
                             LAB_0000_613f                                   XREF[1]:     0000:6138(j)  
       0000:613f 43              INC        BX
       0000:6140 ff 17           CALL       word ptr [BX]
       0000:6142 eb cc           JMP        LAB_0000_6110
                             LAB_0000_6144                                   XREF[2]:     0000:6127(j), 0000:6134(j)  
       0000:6144 b4 09           MOV        AH,0x9
       0000:6146 ba ca 02        MOV        DX,0x2ca
       0000:6149 cd 21           INT        0x21
       0000:614b b8 01 4c        MOV        AX,0x4c01
       0000:614e cd 21           INT        0x21
                             LAB_0000_6150                                   XREF[2]:     0000:610e(j), 0000:6115(j)  
       0000:6150 5f              POP        DI
       0000:6151 5e              POP        SI
       0000:6152 58              POP        AX
       0000:6153 c3              RET
       0000:6154 c6 06 d1        MOV        byte ptr [0xced1],0x1
                 ce 01
       0000:6159 c3              RET
       0000:615a c6 06 d2        MOV        byte ptr [0xced2],0x1
                 ce 01
       0000:615f c3              RET
       0000:6160 50              PUSH       AX
       0000:6161 51              PUSH       CX
       0000:6162 57              PUSH       DI
                             LAB_0000_6163                                   XREF[1]:     0000:6167(j)  
       0000:6163 46              INC        SI
       0000:6164 80 3c 20        CMP        byte ptr [SI],0x20
       0000:6167 74 fa           JZ         LAB_0000_6163
       0000:6169 bf 1d d4        MOV        DI,0xd41d
       0000:616c b9 03 00        MOV        CX,0x3
                             LAB_0000_616f                                   XREF[1]:     0000:6185(j)  
       0000:616f e8 78 00        CALL       FUN_0000_61ea                                    undefined FUN_0000_61ea()
       0000:6172 72 15           JC         LAB_0000_6189
       0000:6174 88 05           MOV        byte ptr [DI],AL
       0000:6176 3c e0           CMP        AL,0xe0
       0000:6178 75 08           JNZ        LAB_0000_6182
       0000:617a e8 6d 00        CALL       FUN_0000_61ea                                    undefined FUN_0000_61ea()
       0000:617d 72 0a           JC         LAB_0000_6189
       0000:617f 88 45 01        MOV        byte ptr [DI + 0x1],AL
                             LAB_0000_6182                                   XREF[1]:     0000:6178(j)  
       0000:6182 83 c7 02        ADD        DI,0x2
       0000:6185 e2 e8           LOOP       LAB_0000_616f
       0000:6187 eb 0c           JMP        LAB_0000_6195
                             LAB_0000_6189                                   XREF[2]:     0000:6172(j), 0000:617d(j)  
       0000:6189 b4 09           MOV        AH,0x9
       0000:618b ba ca 02        MOV        DX,0x2ca
       0000:618e cd 21           INT        0x21
       0000:6190 b8 01 4c        MOV        AX,0x4c01
       0000:6193 cd 21           INT        0x21
                             LAB_0000_6195                                   XREF[1]:     0000:6187(j)  
       0000:6195 4e              DEC        SI
       0000:6196 5f              POP        DI
       0000:6197 59              POP        CX
       0000:6198 58              POP        AX
       0000:6199 c3              RET
       0000:619a 50              PUSH       AX
       0000:619b 57              PUSH       DI
                             LAB_0000_619c                                   XREF[1]:     0000:61a0(j)  
       0000:619c 46              INC        SI
       0000:619d 80 3c 20        CMP        byte ptr [SI],0x20
       0000:61a0 74 fa           JZ         LAB_0000_619c
       0000:61a2 bf 4e 80        MOV        DI,0x804e
                             LAB_0000_61a5                                   XREF[1]:     0000:61b3(j)  
       0000:61a5 8a 04           MOV        AL,byte ptr [SI]
       0000:61a7 88 05           MOV        byte ptr [DI],AL
       0000:61a9 3c 20           CMP        AL,0x20
       0000:61ab 74 08           JZ         LAB_0000_61b5
       0000:61ad 3c 0d           CMP        AL,0xd
       0000:61af 74 04           JZ         LAB_0000_61b5
       0000:61b1 46              INC        SI
       0000:61b2 47              INC        DI
       0000:61b3 eb f0           JMP        LAB_0000_61a5
                             LAB_0000_61b5                                   XREF[2]:     0000:61ab(j), 0000:61af(j)  
       0000:61b5 c6 05 00        MOV        byte ptr [DI],0x0
       0000:61b8 c6 45 01 24     MOV        byte ptr [DI + 0x1],0x24
       0000:61bc 4e              DEC        SI
       0000:61bd 5f              POP        DI
       0000:61be 58              POP        AX
       0000:61bf c3              RET
       0000:61c0 50              PUSH       AX
       0000:61c1 53              PUSH       BX
       0000:61c2 51              PUSH       CX
       0000:61c3 52              PUSH       DX
       0000:61c4 8b 04           MOV        AX,word ptr [SI]
       0000:61c6 05 30 00        ADD        AX,0x30
       0000:61c9 8b 1d           MOV        BX,word ptr [DI]
       0000:61cb 83 c3 30        ADD        BX,0x30
       0000:61ce 01 d8           ADD        AX,BX
       0000:61d0 b9 f5 00        MOV        CX,0xf5
                             LAB_0000_61d3                                   XREF[1]:     0000:61d9(j)  
       0000:61d3 8a 04           MOV        AL,byte ptr [SI]
       0000:61d5 46              INC        SI
       0000:61d6 88 05           MOV        byte ptr [DI],AL
       0000:61d8 47              INC        DI
       0000:61d9 e2 f8           LOOP       LAB_0000_61d3
       0000:61db 25 17 00        AND        AX,0x17
       0000:61de 83 cb 61        OR         BX,0x61
       0000:61e1 89 04           MOV        word ptr [SI],AX
       0000:61e3 89 1d           MOV        word ptr [DI],BX
       0000:61e5 5a              POP        DX
       0000:61e6 59              POP        CX
       0000:61e7 5b              POP        BX
       0000:61e8 58              POP        AX
       0000:61e9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_61ea()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_61ea                                   XREF[2]:     0000:616f(c), 0000:617a(c)  
       0000:61ea 8a 04           MOV        AL,byte ptr [SI]
       0000:61ec 46              INC        SI
       0000:61ed 3c 61           CMP        AL,0x61
       0000:61ef 72 06           JC         LAB_0000_61f7
       0000:61f1 3c 7a           CMP        AL,0x7a
       0000:61f3 77 02           JA         LAB_0000_61f7
       0000:61f5 24 df           AND        AL,0xdf
                             LAB_0000_61f7                                   XREF[2]:     0000:61ef(j), 0000:61f3(j)  
       0000:61f7 2c 30           SUB        AL,0x30
       0000:61f9 3c 0a           CMP        AL,0xa
       0000:61fb 73 06           JNC        LAB_0000_6203
       0000:61fd 3c 00           CMP        AL,0x0
       0000:61ff 7d 0c           JGE        LAB_0000_620d
       0000:6201 eb 43           JMP        LAB_0000_6246
                             LAB_0000_6203                                   XREF[1]:     0000:61fb(j)  
       0000:6203 2c 07           SUB        AL,0x7
       0000:6205 3c 0f           CMP        AL,0xf
       0000:6207 77 3d           JA         LAB_0000_6246
       0000:6209 3c 0a           CMP        AL,0xa
       0000:620b 72 39           JC         LAB_0000_6246
                             LAB_0000_620d                                   XREF[1]:     0000:61ff(j)  
       0000:620d 8a 24           MOV        AH,byte ptr [SI]
       0000:620f 46              INC        SI
       0000:6210 80 fc 61        CMP        AH,0x61
       0000:6213 72 08           JC         LAB_0000_621d
       0000:6215 80 fc 7a        CMP        AH,0x7a
       0000:6218 77 03           JA         LAB_0000_621d
       0000:621a 80 e4 df        AND        AH,0xdf
                             LAB_0000_621d                                   XREF[2]:     0000:6213(j), 0000:6218(j)  
       0000:621d 80 ec 30        SUB        AH,0x30
       0000:6220 80 fc 0a        CMP        AH,0xa
       0000:6223 73 07           JNC        LAB_0000_622c
       0000:6225 80 fc 00        CMP        AH,0x0
       0000:6228 7d 0f           JGE        LAB_0000_6239
       0000:622a eb 1a           JMP        LAB_0000_6246
                             LAB_0000_622c                                   XREF[1]:     0000:6223(j)  
       0000:622c 80 ec 07        SUB        AH,0x7
       0000:622f 80 fc 0f        CMP        AH,0xf
       0000:6232 77 12           JA         LAB_0000_6246
       0000:6234 80 fc 0a        CMP        AH,0xa
       0000:6237 72 0d           JC         LAB_0000_6246
                             LAB_0000_6239                                   XREF[1]:     0000:6228(j)  
       0000:6239 d0 e0           SHL        AL,0x1
       0000:623b d0 e0           SHL        AL,0x1
       0000:623d d0 e0           SHL        AL,0x1
       0000:623f d0 e0           SHL        AL,0x1
       0000:6241 02 c4           ADD        AL,AH
       0000:6243 f8              CLC
       0000:6244 eb 01           JMP        LAB_0000_6247
                             LAB_0000_6246                                   XREF[6]:     0000:6201(j), 0000:6207(j), 
                                                                                          0000:620b(j), 0000:622a(j), 
                                                                                          0000:6232(j), 0000:6237(j)  
       0000:6246 f9              STC
                             LAB_0000_6247                                   XREF[1]:     0000:6244(j)  
       0000:6247 c3              RET
       0000:6248 31 00           XOR        word ptr [BX + SI],AX
       0000:624a e2 7e           LOOP       LAB_0000_62ca
       0000:624c 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_624e()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_624e                                   XREF[1]:     FUN_0000_6367:0000:6367(c)  
       0000:624e 50              PUSH       AX
       0000:624f 53              PUSH       BX
       0000:6250 51              PUSH       CX
       0000:6251 52              PUSH       DX
       0000:6252 b8 00 00        MOV        AX,0x0
       0000:6255 bb 00 00        MOV        BX,0x0
       0000:6258 b9 7f 02        MOV        CX,0x27f
       0000:625b ba 22 01        MOV        DX,0x122
       0000:625e e8 91 e0        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:6261 b8 10 00        MOV        AX,0x10
       0000:6264 bb 0c 00        MOV        BX,0xc
       0000:6267 b9 6f 02        MOV        CX,0x26f
       0000:626a ba 16 01        MOV        DX,0x116
       0000:626d e8 02 e1        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:6270 b8 d0 00        MOV        AX,0xd0
       0000:6273 bb 2e 01        MOV        BX,0x12e
       0000:6276 b9 af 01        MOV        CX,0x1af
       0000:6279 ba 5d 01        MOV        DX,0x15d
       0000:627c e8 73 e0        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:627f b8 e0 00        MOV        AX,0xe0
       0000:6282 bb 3a 01        MOV        BX,0x13a
       0000:6285 b9 9f 01        MOV        CX,0x19f
       0000:6288 ba 51 01        MOV        DX,0x151
       0000:628b e8 e4 e0        CALL       FUN_0000_4372                                    undefined FUN_0000_4372()
       0000:628e e8 08 00        CALL       FUN_0000_6299                                    undefined FUN_0000_6299()
       0000:6291 e8 6c 00        CALL       FUN_0000_6300                                    undefined FUN_0000_6300()
       0000:6294 5a              POP        DX
       0000:6295 59              POP        CX
       0000:6296 5b              POP        BX
       0000:6297 58              POP        AX
       0000:6298 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6299()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6299                                   XREF[1]:     FUN_0000_624e:0000:628e(c)  
       0000:6299 50              PUSH       AX
       0000:629a 53              PUSH       BX
       0000:629b 51              PUSH       CX
       0000:629c 52              PUSH       DX
       0000:629d 57              PUSH       DI
       0000:629e b8 b6 00        MOV        AX,0xb6
       0000:62a1 bb 5a 00        MOV        BX,0x5a
       0000:62a4 b9 c9 01        MOV        CX,0x1c9
       0000:62a7 ba c5 00        MOV        DX,0xc5
       0000:62aa e8 45 e0        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:62ad b8 c6 00        MOV        AX,0xc6
       0000:62b0 bb 66 00        MOV        BX,0x66
       0000:62b3 b9 b9 01        MOV        CX,0x1b9
       0000:62b6 ba b9 00        MOV        DX,0xb9
       0000:62b9 e8 36 e0        CALL       FUN_0000_42f2                                    undefined FUN_0000_42f2()
       0000:62bc b8 e5 00        MOV        AX,0xe5
       0000:62bf bb 7e 00        MOV        BX,0x7e
       0000:62c2 b6 01           MOV        DH,0x1
       0000:62c4 bf 50 05        MOV        DI,0x550
                             LAB_0000_62c7                                   XREF[1]:     0000:62d5(j)  
       0000:62c7 8a 15           MOV        DL,byte ptr [DI]
       0000:62c9 47              INC        DI
                             LAB_0000_62ca                                   XREF[1]:     0000:624a(j)  
       0000:62ca 80 fa ff        CMP        DL,0xff
       0000:62cd 74 08           JZ         LAB_0000_62d7
       0000:62cf e8 85 e4        CALL       FUN_0000_4757                                    undefined FUN_0000_4757()
       0000:62d2 05 18 00        ADD        AX,0x18
       0000:62d5 eb f0           JMP        LAB_0000_62c7
                             LAB_0000_62d7                                   XREF[1]:     0000:62cd(j)  
       0000:62d7 bf 23 05        MOV        DI,0x523
       0000:62da b8 28 02        MOV        AX,0x228
       0000:62dd bb 4d 01        MOV        BX,0x14d
       0000:62e0 b2 0f           MOV        DL,0xf
       0000:62e2 e8 c1 da        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:62e5 bf 2f 05        MOV        DI,0x52f
       0000:62e8 bb 56 01        MOV        BX,0x156
       0000:62eb e8 b8 da        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:62ee bf 3b 05        MOV        DI,0x53b
       0000:62f1 b8 20 02        MOV        AX,0x220
       0000:62f4 bb 32 01        MOV        BX,0x132
       0000:62f7 e8 ac da        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:62fa 5f              POP        DI
       0000:62fb 5a              POP        DX
       0000:62fc 59              POP        CX
       0000:62fd 5b              POP        BX
       0000:62fe 58              POP        AX
       0000:62ff c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6300()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6300                                   XREF[1]:     FUN_0000_624e:0000:6291(c)  
       0000:6300 50              PUSH       AX
       0000:6301 53              PUSH       BX
       0000:6302 51              PUSH       CX
       0000:6303 52              PUSH       DX
       0000:6304 56              PUSH       SI
       0000:6305 57              PUSH       DI
       0000:6306 bb 44 01        MOV        BX,0x144
       0000:6309 b2 0f           MOV        DL,0xf
       0000:630b be de 51        MOV        SI,0x51de
       0000:630e b6 03           MOV        DH,0x3
                             LAB_0000_6310                                   XREF[1]:     0000:6331(j)  
       0000:6310 bf ec 80        MOV        DI,0x80ec
       0000:6313 b9 13 00        MOV        CX,0x13
                             LAB_0000_6316                                   XREF[1]:     0000:631e(j)  
       0000:6316 8a 04           MOV        AL,byte ptr [SI]
       0000:6318 f6 d0           NOT        AL
       0000:631a 88 05           MOV        byte ptr [DI],AL
       0000:631c 46              INC        SI
       0000:631d 47              INC        DI
       0000:631e e2 f6           LOOP       LAB_0000_6316
       0000:6320 c6 05 00        MOV        byte ptr [DI],0x0
       0000:6323 46              INC        SI
       0000:6324 33 c0           XOR        AX,AX
       0000:6326 bf ec 80        MOV        DI,0x80ec
       0000:6329 e8 7a da        CALL       FUN_0000_3da6                                    undefined FUN_0000_3da6()
       0000:632c 83 c3 09        ADD        BX,0x9
       0000:632f fe ce           DEC        DH
       0000:6331 75 dd           JNZ        LAB_0000_6310
       0000:6333 5f              POP        DI
       0000:6334 5e              POP        SI
       0000:6335 5a              POP        DX
       0000:6336 59              POP        CX
       0000:6337 5b              POP        BX
       0000:6338 58              POP        AX
       0000:6339 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_633a()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_633a                                   XREF[1]:     FUN_0000_64d9:0000:64ee(c)  
       0000:633a 52              PUSH       DX
       0000:633b 56              PUSH       SI
       0000:633c 8b 36 0b cf     MOV        SI,word ptr [0xcf0b]
       0000:6340 8a 16 0d cf     MOV        DL,byte ptr [0xcf0d]
       0000:6344 e8 30 00        CALL       FUN_0000_6377                                    undefined FUN_0000_6377()
       0000:6347 80 c2 02        ADD        DL,0x2
       0000:634a 80 fa 08        CMP        DL,0x8
       0000:634d 72 0d           JC         LAB_0000_635c
       0000:634f 46              INC        SI
       0000:6350 81 fe 23 05     CMP        SI,0x523
       0000:6354 75 03           JNZ        LAB_0000_6359
       0000:6356 be a5 03        MOV        SI,0x3a5
                             LAB_0000_6359                                   XREF[1]:     0000:6354(j)  
       0000:6359 80 ea 08        SUB        DL,0x8
                             LAB_0000_635c                                   XREF[1]:     0000:634d(j)  
       0000:635c 88 16 0d cf     MOV        byte ptr [0xcf0d],DL
       0000:6360 89 36 0b cf     MOV        word ptr [0xcf0b],SI
       0000:6364 5e              POP        SI
       0000:6365 5a              POP        DX
       0000:6366 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6367()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6367                                   XREF[1]:     FUN_0000_5111:0000:512c(c)  
       0000:6367 e8 e4 fe        CALL       FUN_0000_624e                                    undefined FUN_0000_624e()
       0000:636a e8 ce 01        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:636d e8 f5 02        CALL       FUN_0000_6665                                    undefined FUN_0000_6665()
       0000:6370 e8 66 01        CALL       FUN_0000_64d9                                    undefined FUN_0000_64d9()
       0000:6373 e8 c0 ec        CALL       FUN_0000_5036                                    undefined FUN_0000_5036()
       0000:6376 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6377()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6377                                   XREF[1]:     FUN_0000_633a:0000:6344(c)  
       0000:6377 50              PUSH       AX
       0000:6378 53              PUSH       BX
       0000:6379 51              PUSH       CX
       0000:637a 52              PUSH       DX
       0000:637b 56              PUSH       SI
       0000:637c 57              PUSH       DI
       0000:637d 52              PUSH       DX
       0000:637e ba c4 03        MOV        DX,0x3c4
       0000:6381 b0 02           MOV        AL,0x2
       0000:6383 ee              OUT        DX,AL
       0000:6384 42              INC        DX
       0000:6385 b0 0a           MOV        AL,0xa
       0000:6387 ee              OUT        DX,AL
       0000:6388 5a              POP        DX
       0000:6389 bf 7e 63        MOV        DI,0x637e
       0000:638c 03 3e 37 d2     ADD        DI,word ptr [0xd237]
       0000:6390 b9 14 00        MOV        CX,0x14
                             LAB_0000_6393                                   XREF[1]:     0000:63ba(j)  
       0000:6393 8a 24           MOV        AH,byte ptr [SI]
       0000:6395 46              INC        SI
       0000:6396 81 fe 23 05     CMP        SI,0x523
       0000:639a 75 03           JNZ        LAB_0000_639f
       0000:639c be a5 03        MOV        SI,0x3a5
                             LAB_0000_639f                                   XREF[1]:     0000:639a(j)  
       0000:639f 8a 04           MOV        AL,byte ptr [SI]
       0000:63a1 e8 29 00        CALL       FUN_0000_63cd                                    undefined FUN_0000_63cd()
       0000:63a4 bb fd ce        MOV        BX,0xcefd
       0000:63a7 b0 0e           MOV        AL,0xe
                             LAB_0000_63a9                                   XREF[1]:     0000:63b4(j)  
       0000:63a9 8a 27           MOV        AH,byte ptr [BX]
       0000:63ab 43              INC        BX
       0000:63ac 26 88 25        MOV        byte ptr ES:[DI],AH
       0000:63af 83 c7 50        ADD        DI,0x50
       0000:63b2 fe c8           DEC        AL
       0000:63b4 75 f3           JNZ        LAB_0000_63a9
       0000:63b6 81 ef 5f 04     SUB        DI,0x45f
       0000:63ba e2 d7           LOOP       LAB_0000_6393
       0000:63bc ba c4 03        MOV        DX,0x3c4
       0000:63bf b0 02           MOV        AL,0x2
       0000:63c1 ee              OUT        DX,AL
       0000:63c2 42              INC        DX
       0000:63c3 b0 0f           MOV        AL,0xf
       0000:63c5 ee              OUT        DX,AL
       0000:63c6 5f              POP        DI
       0000:63c7 5e              POP        SI
       0000:63c8 5a              POP        DX
       0000:63c9 59              POP        CX
       0000:63ca 5b              POP        BX
       0000:63cb 58              POP        AX
       0000:63cc c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_63cd()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_63cd                                   XREF[1]:     FUN_0000_6377:0000:63a1(c)  
       0000:63cd 50              PUSH       AX
       0000:63ce 53              PUSH       BX
       0000:63cf 51              PUSH       CX
       0000:63d0 52              PUSH       DX
       0000:63d1 56              PUSH       SI
       0000:63d2 57              PUSH       DI
       0000:63d3 8a d8           MOV        BL,AL
       0000:63d5 b6 00           MOV        DH,0x0
       0000:63d7 80 fc 61        CMP        AH,0x61
       0000:63da 73 18           JNC        LAB_0000_63f4
       0000:63dc 32 c0           XOR        AL,AL
       0000:63de 86 c4           XCHG       AH,AL
       0000:63e0 2c 20           SUB        AL,0x20
       0000:63e2 8b f0           MOV        SI,AX
       0000:63e4 d1 e6           SHL        SI,0x1
       0000:63e6 d1 e6           SHL        SI,0x1
       0000:63e8 d1 e6           SHL        SI,0x1
       0000:63ea 29 c6           SUB        SI,AX
       0000:63ec d1 e6           SHL        SI,0x1
       0000:63ee 81 c6 64 c5     ADD        SI,0xc564
       0000:63f2 eb 15           JMP        LAB_0000_6409
                             LAB_0000_63f4                                   XREF[1]:     0000:63da(j)  
       0000:63f4 32 c0           XOR        AL,AL
       0000:63f6 86 c4           XCHG       AH,AL
       0000:63f8 2c 40           SUB        AL,0x40
       0000:63fa 8b f0           MOV        SI,AX
       0000:63fc d1 e6           SHL        SI,0x1
       0000:63fe d1 e6           SHL        SI,0x1
       0000:6400 d1 e6           SHL        SI,0x1
       0000:6402 81 c6 64 c3     ADD        SI,0xc364
       0000:6406 80 ce 01        OR         DH,0x1
                             LAB_0000_6409                                   XREF[1]:     0000:63f2(j)  
       0000:6409 8a c3           MOV        AL,BL
       0000:640b 3c 61           CMP        AL,0x61
       0000:640d 73 16           JNC        LAB_0000_6425
       0000:640f 32 e4           XOR        AH,AH
       0000:6411 2c 20           SUB        AL,0x20
       0000:6413 8b d8           MOV        BX,AX
       0000:6415 d1 e3           SHL        BX,0x1
       0000:6417 d1 e3           SHL        BX,0x1
       0000:6419 d1 e3           SHL        BX,0x1
       0000:641b 29 c3           SUB        BX,AX
       0000:641d d1 e3           SHL        BX,0x1
       0000:641f 81 c3 64 c5     ADD        BX,0xc564
       0000:6423 eb 13           JMP        LAB_0000_6438
                             LAB_0000_6425                                   XREF[1]:     0000:640d(j)  
       0000:6425 32 e4           XOR        AH,AH
       0000:6427 2c 40           SUB        AL,0x40
       0000:6429 8b d8           MOV        BX,AX
       0000:642b d1 e3           SHL        BX,0x1
       0000:642d d1 e3           SHL        BX,0x1
       0000:642f d1 e3           SHL        BX,0x1
       0000:6431 81 c3 64 c3     ADD        BX,0xc364
       0000:6435 80 ce 02        OR         DH,0x2
                             LAB_0000_6438                                   XREF[1]:     0000:6423(j)  
       0000:6438 8a ca           MOV        CL,DL
       0000:643a 88 cd           MOV        CH,CL
       0000:643c 80 ed 08        SUB        CH,0x8
       0000:643f f6 dd           NEG        CH
       0000:6441 b2 0e           MOV        DL,0xe
                             LAB_0000_6443                                   XREF[1]:     0000:6478(j)  
       0000:6443 f6 c6 01        TEST       DH,0x1
       0000:6446 75 05           JNZ        LAB_0000_644d
       0000:6448 8a 24           MOV        AH,byte ptr [SI]
       0000:644a 46              INC        SI
       0000:644b eb 0a           JMP        LAB_0000_6457
                             LAB_0000_644d                                   XREF[1]:     0000:6446(j)  
       0000:644d 32 e4           XOR        AH,AH
       0000:644f 80 fa 09        CMP        DL,0x9
       0000:6452 73 03           JNC        LAB_0000_6457
       0000:6454 8a 24           MOV        AH,byte ptr [SI]
       0000:6456 46              INC        SI
                             LAB_0000_6457                                   XREF[2]:     0000:644b(j), 0000:6452(j)  
       0000:6457 d2 e4           SHL        AH,CL
       0000:6459 f6 c6 02        TEST       DH,0x2
       0000:645c 75 05           JNZ        LAB_0000_6463
       0000:645e 8a 07           MOV        AL,byte ptr [BX]
       0000:6460 43              INC        BX
       0000:6461 eb 0a           JMP        LAB_0000_646d
                             LAB_0000_6463                                   XREF[1]:     0000:645c(j)  
       0000:6463 32 c0           XOR        AL,AL
       0000:6465 80 fa 09        CMP        DL,0x9
       0000:6468 73 03           JNC        LAB_0000_646d
       0000:646a 8a 07           MOV        AL,byte ptr [BX]
       0000:646c 43              INC        BX
                             LAB_0000_646d                                   XREF[2]:     0000:6461(j), 0000:6468(j)  
       0000:646d 86 cd           XCHG       CH,CL
       0000:646f d2 e8           SHR        AL,CL
       0000:6471 86 cd           XCHG       CH,CL
       0000:6473 0a e0           OR         AH,AL
       0000:6475 50              PUSH       AX
       0000:6476 fe ca           DEC        DL
       0000:6478 75 c9           JNZ        LAB_0000_6443
       0000:647a bf 0a cf        MOV        DI,0xcf0a
       0000:647d b9 0e 00        MOV        CX,0xe
                             LAB_0000_6480                                   XREF[1]:     0000:6484(j)  
       0000:6480 58              POP        AX
       0000:6481 88 25           MOV        byte ptr [DI],AH
       0000:6483 4f              DEC        DI
       0000:6484 e2 fa           LOOP       LAB_0000_6480
       0000:6486 5f              POP        DI
       0000:6487 5e              POP        SI
       0000:6488 5a              POP        DX
       0000:6489 59              POP        CX
       0000:648a 5b              POP        BX
       0000:648b 58              POP        AX
       0000:648c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_648d()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_648d                                   XREF[1]:     FUN_0000_64d9:0000:64eb(c)  
       0000:648d fe 06 3c d2     INC        byte ptr [0xd23c]
       0000:6491 80 3e 3c        CMP        byte ptr [0xd23c],0x3
                 d2 03
       0000:6496 75 05           JNZ        LAB_0000_649d
       0000:6498 c6 06 3c        MOV        byte ptr [0xd23c],0x0
                 d2 00
                             LAB_0000_649d                                   XREF[1]:     0000:6496(j)  
       0000:649d e8 19 f1        CALL       FUN_0000_55b9                                    undefined FUN_0000_55b9()
       0000:64a0 e8 73 cd        CALL       FUN_0000_3216                                    undefined FUN_0000_3216()
       0000:64a3 e8 53 f1        CALL       FUN_0000_55f9                                    undefined FUN_0000_55f9()
       0000:64a6 e8 a1 f1        CALL       FUN_0000_564a                                    undefined FUN_0000_564a()
       0000:64a9 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_64aa()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_64aa                                   XREF[1]:     FUN_0000_64d9:0000:64dd(c)  
       0000:64aa 50              PUSH       AX
       0000:64ab 56              PUSH       SI
       0000:64ac be 59 05        MOV        SI,0x559
                             LAB_0000_64af                                   XREF[1]:     0000:64d4(j)  
       0000:64af 83 3c ff        CMP        word ptr [SI],-0x1
       0000:64b2 74 22           JZ         LAB_0000_64d6
       0000:64b4 b8 01 00        MOV        AX,0x1
       0000:64b7 50              PUSH       AX
       0000:64b8 ff 34           PUSH       word ptr [SI]
       0000:64ba 83 c6 02        ADD        SI,0x2
       0000:64bd ff 34           PUSH       word ptr [SI]
       0000:64bf 83 c6 02        ADD        SI,0x2
       0000:64c2 ff 34           PUSH       word ptr [SI]
       0000:64c4 83 c6 02        ADD        SI,0x2
       0000:64c7 ff 34           PUSH       word ptr [SI]
       0000:64c9 83 c6 02        ADD        SI,0x2
       0000:64cc ff 34           PUSH       word ptr [SI]
       0000:64ce 83 c6 02        ADD        SI,0x2
       0000:64d1 e8 5f d4        CALL       FUN_0000_3933                                    undefined FUN_0000_3933()
       0000:64d4 eb d9           JMP        LAB_0000_64af
                             LAB_0000_64d6                                   XREF[1]:     0000:64b2(j)  
       0000:64d6 5e              POP        SI
       0000:64d7 58              POP        AX
       0000:64d8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_64d9()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_64d9                                   XREF[1]:     FUN_0000_6367:0000:6370(c)  
       0000:64d9 50              PUSH       AX
       0000:64da e8 7e d2        CALL       FUN_0000_375b                                    undefined FUN_0000_375b()
       0000:64dd e8 ca ff        CALL       FUN_0000_64aa                                    undefined FUN_0000_64aa()
       0000:64e0 c7 06 0b        MOV        word ptr [0xcf0b],0x3a5
                 cf a5 03
       0000:64e6 c6 06 0d        MOV        byte ptr [0xcf0d],0x0
                 cf 00
                             LAB_0000_64eb                                   XREF[2]:     0000:64f8(j), 0000:6502(j)  
       0000:64eb e8 9f ff        CALL       FUN_0000_648d                                    undefined FUN_0000_648d()
       0000:64ee e8 49 fe        CALL       FUN_0000_633a                                    undefined FUN_0000_633a()
       0000:64f1 e8 47 00        CALL       FUN_0000_653b                                    undefined FUN_0000_653b()
       0000:64f4 b4 01           MOV        AH,0x1
       0000:64f6 cd 16           INT        0x16
       0000:64f8 74 f1           JZ         LAB_0000_64eb
       0000:64fa b4 00           MOV        AH,0x0
       0000:64fc cd 16           INT        0x16
       0000:64fe 3c 20           CMP        AL,0x20
       0000:6500 74 02           JZ         LAB_0000_6504
       0000:6502 eb e7           JMP        LAB_0000_64eb
                             LAB_0000_6504                                   XREF[1]:     0000:6500(j)  
       0000:6504 58              POP        AX
       0000:6505 c3              RET
       0000:6506 31 00           XOR        word ptr [BX + SI],AX
       0000:6508 e2 7e           LOOP       LAB_0000_6588
       0000:650a 3b 27           CMP        SP,word ptr [BX]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_650c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_650c                                   XREF[1]:     FUN_0000_5111:0000:5123(c)  
       0000:650c 50              PUSH       AX
       0000:650d b8 10 00        MOV        AX,0x10
       0000:6510 cd 10           INT        0x10
       0000:6512 50              PUSH       AX
       0000:6513 b8 00 a0        MOV        AX,0xa000
       0000:6516 8e c0           MOV        ES,AX
       0000:6518 58              POP        AX
       0000:6519 58              POP        AX
       0000:651a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_651b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_651b                                   XREF[4]:     FUN_0000_325a:0000:325a(c), 
                                                                                          FUN_0000_325a:0000:3273(c), 
                                                                                          FUN_0000_325a:0000:3282(c), 
                                                                                          FUN_0000_3c95:0000:3ca1(c)  
       0000:651b 50              PUSH       AX
       0000:651c 53              PUSH       BX
       0000:651d cd 11           INT        0x11
       0000:651f 24 30           AND        AL,0x30
       0000:6521 bb 03 00        MOV        BX,0x3
       0000:6524 3c 20           CMP        AL,0x20
       0000:6526 74 0a           JZ         LAB_0000_6532
       0000:6528 bb 01 00        MOV        BX,0x1
       0000:652b 3c 10           CMP        AL,0x10
       0000:652d 74 03           JZ         LAB_0000_6532
       0000:652f bb 07 00        MOV        BX,0x7
                             LAB_0000_6532                                   XREF[2]:     0000:6526(j), 0000:652d(j)  
       0000:6532 32 e4           XOR        AH,AH
       0000:6534 8a c3           MOV        AL,BL
       0000:6536 cd 10           INT        0x10
       0000:6538 5b              POP        BX
       0000:6539 58              POP        AX
       0000:653a c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_653b()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_653b                                   XREF[20]:    FUN_0000_3610:0000:364d(c), 
                                                                                          0000:36b5(c), 
                                                                                          FUN_0000_36fd:0000:3742(c), 
                                                                                          FUN_0000_38b7:0000:38c1(c), 
                                                                                          FUN_0000_3ab5:0000:3aba(c), 
                                                                                          FUN_0000_3b69:0000:3b7a(c), 
                                                                                          FUN_0000_3b94:0000:3ba9(c), 
                                                                                          FUN_0000_3bbd:0000:3bff(c), 
                                                                                          FUN_0000_43e4:0000:43fc(c), 
                                                                                          FUN_0000_43e4:0000:4410(c), 
                                                                                          FUN_0000_43e4:0000:441e(c), 
                                                                                          FUN_0000_44ac:0000:44fa(c), 
                                                                                          FUN_0000_4882:0000:48a1(c), 
                                                                                          FUN_0000_4882:0000:48aa(c), 
                                                                                          FUN_0000_4882:0000:48b2(c), 
                                                                                          FUN_0000_4882:0000:48b8(c), 
                                                                                          FUN_0000_4abd:0000:4ace(c), 
                                                                                          FUN_0000_4ba7:0000:4baa(c), 
                                                                                          FUN_0000_4beb:0000:4c34(c), 
                                                                                          FUN_0000_6367:0000:636a(c), [more]
       0000:653b 50              PUSH       AX
       0000:653c a1 37 d2        MOV        AX,[0xd237]
       0000:653f e8 a7 00        CALL       FUN_0000_65e9                                    undefined FUN_0000_65e9()
       0000:6542 2d 00 6e        SUB        AX,0x6e00
       0000:6545 f7 d8           NEG        AX
       0000:6547 a3 37 d2        MOV        [0xd237],AX
       0000:654a 80 2e 39        SUB        byte ptr [0xd239],0x1
                 d2 01
       0000:654f f6 1e 39 d2     NEG        byte ptr [0xd239]
       0000:6553 58              POP        AX
       0000:6554 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6555()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6555                                   XREF[2]:     FUN_0000_37db:0000:3813(c), 
                                                                                          FUN_0000_38b7:0000:38d9(c)  
       0000:6555 50              PUSH       AX
       0000:6556 52              PUSH       DX
       0000:6557 ba 00 6e        MOV        DX,0x6e00
                             LAB_0000_655a                                   XREF[1]:     0000:656f(j)  
       0000:655a 8b c2           MOV        AX,DX
       0000:655c e8 aa 00        CALL       FUN_0000_6609                                    undefined FUN_0000_6609()
       0000:655f b4 01           MOV        AH,0x1
       0000:6561 cd 16           INT        0x16
       0000:6563 74 06           JZ         LAB_0000_656b
       0000:6565 b4 00           MOV        AH,0x0
       0000:6567 cd 16           INT        0x16
       0000:6569 eb 09           JMP        LAB_0000_6574
                             LAB_0000_656b                                   XREF[1]:     0000:6563(j)  
       0000:656b 81 ea 90 01     SUB        DX,0x190
       0000:656f 79 e9           JNS        LAB_0000_655a
       0000:6571 f8              CLC
       0000:6572 eb 06           JMP        LAB_0000_657a
                             LAB_0000_6574                                   XREF[1]:     0000:6569(j)  
       0000:6574 33 c0           XOR        AX,AX
       0000:6576 e8 90 00        CALL       FUN_0000_6609                                    undefined FUN_0000_6609()
       0000:6579 f9              STC
                             LAB_0000_657a                                   XREF[1]:     0000:6572(j)  
       0000:657a 5a              POP        DX
       0000:657b 58              POP        AX
       0000:657c c3              RET
       0000:657d 50              PUSH       AX
       0000:657e 33 c0           XOR        AX,AX
                             LAB_0000_6580                                   XREF[1]:     0000:6589(j)  
       0000:6580 e8 86 00        CALL       FUN_0000_6609                                    undefined FUN_0000_6609()
       0000:6583 05 90 01        ADD        AX,0x190
       0000:6586 3d              ??         3Dh    =
       0000:6587 00              ??         00h
                             LAB_0000_6588                                   XREF[1]:     0000:6508(j)  
       0000:6588 6e              OUTSB      DX,SI
       0000:6589 76 f5           JBE        LAB_0000_6580
       0000:658b 58              POP        AX
       0000:658c c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_658d()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_658d                                   XREF[1]:     FUN_0000_37db:0000:3818(c)  
       0000:658d 50              PUSH       AX
       0000:658e 53              PUSH       BX
       0000:658f 51              PUSH       CX
       0000:6590 52              PUSH       DX
       0000:6591 bb 90 01        MOV        BX,0x190
       0000:6594 33 d2           XOR        DX,DX
                             LAB_0000_6596                                   XREF[1]:     0000:65b5(j)  
       0000:6596 b9 07 00        MOV        CX,0x7
                             LAB_0000_6599                                   XREF[1]:     0000:65ac(j)  
       0000:6599 03 d3           ADD        DX,BX
       0000:659b 8b c2           MOV        AX,DX
       0000:659d e8 69 00        CALL       FUN_0000_6609                                    undefined FUN_0000_6609()
       0000:65a0 b4 01           MOV        AH,0x1
       0000:65a2 cd 16           INT        0x16
       0000:65a4 74 06           JZ         LAB_0000_65ac
       0000:65a6 b4 00           MOV        AH,0x0
       0000:65a8 cd 16           INT        0x16
       0000:65aa eb 33           JMP        LAB_0000_65df
                             LAB_0000_65ac                                   XREF[1]:     0000:65a4(j)  
       0000:65ac e2 eb           LOOP       LAB_0000_6599
       0000:65ae 83 eb 50        SUB        BX,0x50
       0000:65b1 81 fb 70 fe     CMP        BX,0xfe70
       0000:65b5 7d df           JGE        LAB_0000_6596
       0000:65b7 bb f0 00        MOV        BX,0xf0
       0000:65ba 33 d2           XOR        DX,DX
                             LAB_0000_65bc                                   XREF[1]:     0000:65db(j)  
       0000:65bc b9 07 00        MOV        CX,0x7
                             LAB_0000_65bf                                   XREF[1]:     0000:65d2(j)  
       0000:65bf 03 d3           ADD        DX,BX
       0000:65c1 8b c2           MOV        AX,DX
       0000:65c3 e8 43 00        CALL       FUN_0000_6609                                    undefined FUN_0000_6609()
       0000:65c6 b4 01           MOV        AH,0x1
       0000:65c8 cd 16           INT        0x16
       0000:65ca 74 06           JZ         LAB_0000_65d2
       0000:65cc b4 00           MOV        AH,0x0
       0000:65ce cd 16           INT        0x16
       0000:65d0 eb 0d           JMP        LAB_0000_65df
                             LAB_0000_65d2                                   XREF[1]:     0000:65ca(j)  
       0000:65d2 e2 eb           LOOP       LAB_0000_65bf
       0000:65d4 83 eb 50        SUB        BX,0x50
       0000:65d7 81 fb 10 ff     CMP        BX,0xff10
       0000:65db 7d df           JGE        LAB_0000_65bc
       0000:65dd eb 05           JMP        LAB_0000_65e4
                             LAB_0000_65df                                   XREF[2]:     0000:65aa(j), 0000:65d0(j)  
       0000:65df 33 c0           XOR        AX,AX
       0000:65e1 e8 25 00        CALL       FUN_0000_6609                                    undefined FUN_0000_6609()
                             LAB_0000_65e4                                   XREF[1]:     0000:65dd(j)  
       0000:65e4 5a              POP        DX
       0000:65e5 59              POP        CX
       0000:65e6 5b              POP        BX
       0000:65e7 58              POP        AX
       0000:65e8 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_65e9()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_65e9                                   XREF[2]:     FUN_0000_37db:0000:37f9(c), 
                                                                                          FUN_0000_653b:0000:653f(c)  
       0000:65e9 50              PUSH       AX
       0000:65ea 53              PUSH       BX
       0000:65eb 52              PUSH       DX
       0000:65ec b0 0c           MOV        AL,0xc
       0000:65ee ba d4 03        MOV        DX,0x3d4
       0000:65f1 fa              CLI
       0000:65f2 ee              OUT        DX,AL
       0000:65f3 42              INC        DX
       0000:65f4 86 c4           XCHG       AH,AL
       0000:65f6 ee              OUT        DX,AL
       0000:65f7 fb              STI
                             LAB_0000_65f8                                   XREF[1]:     0000:65fe(j)  
       0000:65f8 ba da 03        MOV        DX,0x3da
       0000:65fb ec              IN         AL,DX
       0000:65fc a8 08           TEST       AL,0x8
       0000:65fe 75 f8           JNZ        LAB_0000_65f8
                             LAB_0000_6600                                   XREF[1]:     0000:6603(j)  
       0000:6600 ec              IN         AL,DX
       0000:6601 a8 08           TEST       AL,0x8
       0000:6603 74 fb           JZ         LAB_0000_6600
       0000:6605 5a              POP        DX
       0000:6606 5b              POP        BX
       0000:6607 58              POP        AX
       0000:6608 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6609()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6609                                   XREF[6]:     FUN_0000_6555:0000:655c(c), 
                                                                                          FUN_0000_6555:0000:6576(c), 
                                                                                          0000:6580(c), 
                                                                                          FUN_0000_658d:0000:659d(c), 
                                                                                          FUN_0000_658d:0000:65c3(c), 
                                                                                          FUN_0000_658d:0000:65e1(c)  
       0000:6609 50              PUSH       AX
       0000:660a 53              PUSH       BX
       0000:660b 52              PUSH       DX
       0000:660c 8a d8           MOV        BL,AL
       0000:660e b0 0c           MOV        AL,0xc
       0000:6610 ba d4 03        MOV        DX,0x3d4
       0000:6613 fa              CLI
       0000:6614 ee              OUT        DX,AL
       0000:6615 42              INC        DX
       0000:6616 86 c4           XCHG       AH,AL
       0000:6618 ee              OUT        DX,AL
       0000:6619 fb              STI
       0000:661a 8a e3           MOV        AH,BL
       0000:661c b0 0d           MOV        AL,0xd
       0000:661e 4a              DEC        DX
       0000:661f fa              CLI
       0000:6620 ee              OUT        DX,AL
       0000:6621 42              INC        DX
       0000:6622 86 c4           XCHG       AH,AL
       0000:6624 ee              OUT        DX,AL
       0000:6625 fb              STI
                             LAB_0000_6626                                   XREF[1]:     0000:662c(j)  
       0000:6626 ba da 03        MOV        DX,0x3da
       0000:6629 ec              IN         AL,DX
       0000:662a a8 08           TEST       AL,0x8
       0000:662c 75 f8           JNZ        LAB_0000_6626
                             LAB_0000_662e                                   XREF[1]:     0000:6631(j)  
       0000:662e ec              IN         AL,DX
       0000:662f a8 08           TEST       AL,0x8
       0000:6631 74 fb           JZ         LAB_0000_662e
       0000:6633 5a              POP        DX
       0000:6634 5b              POP        BX
       0000:6635 58              POP        AX
       0000:6636 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6637()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6637                                   XREF[1]:     FUN_0000_37db:0000:3826(c)  
       0000:6637 50              PUSH       AX
       0000:6638 51              PUSH       CX
       0000:6639 52              PUSH       DX
       0000:663a 56              PUSH       SI
       0000:663b 57              PUSH       DI
       0000:663c ba ce 03        MOV        DX,0x3ce
       0000:663f b0 05           MOV        AL,0x5
       0000:6641 ee              OUT        DX,AL
       0000:6642 42              INC        DX
       0000:6643 b0 11           MOV        AL,0x11
       0000:6645 ee              OUT        DX,AL
       0000:6646 1e              PUSH       DS
       0000:6647 06              PUSH       ES
       0000:6648 1f              POP        DS
       0000:6649 bf 00 6e        MOV        DI,0x6e00
       0000:664c be 00 00        MOV        SI,0x0
       0000:664f b9 60 6d        MOV        CX,0x6d60
       0000:6652 f3 a4           MOVSB.REP  ES:DI,SI
       0000:6654 1f              POP        DS
       0000:6655 ba ce 03        MOV        DX,0x3ce
       0000:6658 b0 05           MOV        AL,0x5
       0000:665a ee              OUT        DX,AL
       0000:665b 42              INC        DX
       0000:665c b0 10           MOV        AL,0x10
       0000:665e ee              OUT        DX,AL
       0000:665f 5f              POP        DI
       0000:6660 5e              POP        SI
       0000:6661 5a              POP        DX
       0000:6662 59              POP        CX
       0000:6663 58              POP        AX
       0000:6664 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_6665()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_6665                                   XREF[7]:     FUN_0000_3b69:0000:3b7d(c), 
                                                                                          FUN_0000_4882:0000:48a4(c), 
                                                                                          FUN_0000_4882:0000:48b5(c), 
                                                                                          FUN_0000_4ba7:0000:4bad(c), 
                                                                                          FUN_0000_4cf2:0000:4d44(c), 
                                                                                          FUN_0000_4cf2:0000:4daf(c), 
                                                                                          FUN_0000_6367:0000:636d(c)  
       0000:6665 50              PUSH       AX
       0000:6666 51              PUSH       CX
       0000:6667 52              PUSH       DX
       0000:6668 56              PUSH       SI
       0000:6669 57              PUSH       DI
       0000:666a ba ce 03        MOV        DX,0x3ce
       0000:666d b0 05           MOV        AL,0x5
       0000:666f ee              OUT        DX,AL
       0000:6670 42              INC        DX
       0000:6671 b0 11           MOV        AL,0x11
       0000:6673 ee              OUT        DX,AL
       0000:6674 bf 00 6e        MOV        DI,0x6e00
       0000:6677 be 00 00        MOV        SI,0x0
       0000:667a f6 06 39        TEST       byte ptr [0xd239],0xff
                 d2 ff
       0000:667f 75 02           JNZ        LAB_0000_6683
       0000:6681 87 fe           XCHG       SI,DI
                             LAB_0000_6683                                   XREF[1]:     0000:667f(j)  
       0000:6683 1e              PUSH       DS
       0000:6684 06              PUSH       ES
       0000:6685 1f              POP        DS
       0000:6686 b9 60 6d        MOV        CX,0x6d60
       0000:6689 f3 a4           MOVSB.REP  ES:DI,SI
       0000:668b 1f              POP        DS
       0000:668c ba ce 03        MOV        DX,0x3ce
       0000:668f b0 05           MOV        AL,0x5
       0000:6691 ee              OUT        DX,AL
       0000:6692 42              INC        DX
       0000:6693 b0 10           MOV        AL,0x10
       0000:6695 ee              OUT        DX,AL
       0000:6696 5f              POP        DI
       0000:6697 5e              POP        SI
       0000:6698 5a              POP        DX
       0000:6699 59              POP        CX
       0000:669a 58              POP        AX
       0000:669b c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_669c()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_669c                                   XREF[5]:     FUN_0000_37db:0000:37e0(c), 
                                                                                          FUN_0000_37db:0000:37e9(c), 
                                                                                          FUN_0000_38b7:0000:38c4(c), 
                                                                                          FUN_0000_3fde:0000:3feb(c), 
                                                                                          FUN_0000_4a3a:0000:4a46(c)  
       0000:669c 50              PUSH       AX
       0000:669d 51              PUSH       CX
       0000:669e 57              PUSH       DI
       0000:669f bf 00 00        MOV        DI,0x0
       0000:66a2 b9 b0 36        MOV        CX,0x36b0
       0000:66a5 33 c0           XOR        AX,AX
       0000:66a7 f3 ab           STOSW.REP  ES:DI
       0000:66a9 5f              POP        DI
       0000:66aa 59              POP        CX
       0000:66ab 58              POP        AX
       0000:66ac c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_0000_66ad()
             undefined         <UNASSIGNED>   <RETURN>
                             FUN_0000_66ad                                   XREF[4]:     FUN_0000_37db:0000:37e3(c), 
                                                                                          FUN_0000_37db:0000:37ec(c), 
                                                                                          FUN_0000_3fde:0000:3ff0(c), 
                                                                                          FUN_0000_4a3a:0000:4a41(c)  
       0000:66ad 50              PUSH       AX
       0000:66ae 51              PUSH       CX
       0000:66af 57              PUSH       DI
       0000:66b0 bf 00 6e        MOV        DI,0x6e00
       0000:66b3 b9 b0 36        MOV        CX,0x36b0
       0000:66b6 33 c0           XOR        AX,AX
       0000:66b8 f3 ab           STOSW.REP  ES:DI
       0000:66ba 5f              POP        DI
       0000:66bb 59              POP        CX
       0000:66bc 58              POP        AX
       0000:66bd c3              RET
