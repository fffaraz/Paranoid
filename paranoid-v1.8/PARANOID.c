
uint fcn.00004516(void)

{
    int16_t in_AX;
    char in_CL;
    int16_t iVar1;
    ushort in_DX;
    int16_t in_BX;
    uchar *puVar2;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_4h;
    int16_t var_8h;
    int16_t var_ah;
    uint8_t uStack_8;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,*0xcecc);
    puVar2 = in_BX * 0x50 + in_AX + *0xd237;
    if (in_CL != '\0') {
        puVar2 = puVar2 + (-(*0xd237 + -0x6e00) - *0xd237);
    }
    uStack_8 = in_DX;
    if ((uStack_8 < 0x20) || (0x5f < uStack_8)) {
        if ((uStack_8 < 0x61) || (0x7a < uStack_8)) {
            if (uStack_8 == 8) {
                out(0x3ce,1);
                out(0x3cf,0xf);
                out(0x3ce,0);
                out(0x3cf,*0xcecd);
                iVar1 = 0xe;
                do {
                    *puVar2 = 0xff;
                    puVar2 = puVar2 + 0x50;
                    iVar1 = iVar1 + -1;
                } while (iVar1 != 0);
            }
        }
        else {
            puVar3 = (uStack_8 - 0x40) * 8 + -0x3c9c;
            puVar2 = puVar2 + 0x1e0;
            iVar1 = 8;
            do {
                out(0x3ce,8);
                out(0x3cf,*puVar3);
                *puVar2 = 0xff;
                puVar2 = puVar2 + 0x50;
                puVar3 = puVar3 + 1;
                iVar1 = iVar1 + -1;
            } while (iVar1 != 0);
        }
    }
    else {
        puVar3 = (uStack_8 - 0x20) * 0xe + -0x3a9c;
        iVar1 = 0xe;
        do {
            out(0x3ce,8);
            out(0x3cf,*puVar3);
            *puVar2 = 0xff;
            puVar2 = puVar2 + 0x50;
            puVar3 = puVar3 + 1;
            iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
    }
    out(0x3ce,1);
    out(0x3cf,0);
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00003da6(void)

{
    char *pcVar1;
    uint16_t in_AX;
    uint8_t *puVar2;
    char cVar3;
    uint8_t uVar4;
    ushort in_DX;
    int16_t in_BX;
    uchar *puVar5;
    uchar *puVar6;
    uchar *puVar7;
    char *unaff_DI;
    char *pcVar8;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_6h;
    int16_t var_ch;
    uchar uStack_8;
    int16_t var_2h;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    uStack_8 = in_DX;
    out(0x3cf,uStack_8);
    puVar5 = in_BX * 0x50 + (in_AX >> 3) + *0xd237;
    uVar4 = in_AX & 7;
    puVar7 = puVar5;
    pcVar8 = unaff_DI;
    while( true ) {
        pcVar1 = pcVar8;
        pcVar8 = pcVar8 + 1;
        if (*pcVar1 == '\0') break;
        puVar2 = (*pcVar1 - 0x20) * 8 + -0x3c9c;
        cVar3 = '\a';
        do {
            puVar6 = puVar7;
            out(0x3ce,8);
            out(0x3cf,*puVar2 >> uVar4);
            *puVar6 = 0xff;
            puVar2 = puVar2 + 1;
            cVar3 = cVar3 + -1;
            puVar7 = puVar6 + 0x50;
        } while (cVar3 != '\0');
        puVar7 = puVar6 + -0x1df;
    }
    if ((in_AX & 7) != 0) {
        puVar5 = puVar5 + 1;
        while( true ) {
            pcVar1 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            if (*pcVar1 == '\0') break;
            pcVar8 = (*pcVar1 - 0x20) * 8 + -0x3c9c;
            cVar3 = '\a';
            do {
                puVar7 = puVar5;
                out(0x3ce,8);
                out(0x3cf,*pcVar8 << (-(uVar4 - 8) & 0x1f));
                *puVar7 = 0xff;
                pcVar8 = pcVar8 + 1;
                cVar3 = cVar3 + -1;
                puVar5 = puVar7 + 0x50;
            } while (cVar3 != '\0');
            puVar5 = puVar7 + -0x1df;
        }
    }
    out(0x3ce,8);
    out(0x3cf,0xff);
    out(0x3ce,1);
    out(0x3cf,0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00003904(void)

{
    ushort in_AX;
    ushort in_DX;
    ushort unaff_DS;
    
    *0xd249 = 6;
    *0xd247 = 0xd8;
    *0xd24a = 0x1a0;
    *0xd24c = 0;
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00002a14(void)

{
    uint16_t in_AX;
    uchar in_CL;
    ushort in_DX;
    int16_t in_BX;
    ushort unaff_DS;
    
    *(in_BX + (in_AX & 0xff) * 0x13 + -0x7f00) = in_CL;
    return CONCAT22(in_DX,in_AX);
}


void fcn.00003cc2(void)

{
    ushort unaff_DS;
    
    *0xd265 = 1;
    return;
}


uint fcn.00004619(void)

{
    int16_t in_AX;
    int16_t iVar1;
    uint16_t in_DX;
    int16_t in_BX;
    uchar *puVar2;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_4h;
    int16_t var_ah;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,*0xcecc);
    puVar2 = in_BX * 0x50 + in_AX + *0xd237;
    puVar3 = (in_DX & 0xff) * 0x6c + -0x371c;
    iVar1 = 0x24;
    do {
        out(0x3ce,8);
        out(0x3cf,*puVar3);
        *puVar2 = 0xff;
        out(0x3ce,8);
        out(0x3cf,puVar3[1]);
        puVar2[1] = 0xff;
        out(0x3ce,8);
        out(0x3cf,puVar3[2]);
        puVar3 = puVar3 + 3;
        puVar2[2] = 0xff;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,1);
    out(0x3cf,0);
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.00004f72(ushort param_1)

{
    code *pcVar1;
    uchar in_ZF;
    uchar uVar2;
    
    do {
        uVar2 = in_ZF;
        pcVar1 = swi(0x16);
        (*pcVar1)();
        in_ZF = 1;
    } while (uVar2);
    pcVar1 = swi(0x16);
    (*pcVar1)();
    return param_1;
}


uint fcn.0000470b(void)

{
    int16_t in_AX;
    ushort in_DX;
    int16_t in_BX;
    ushort unaff_ES;
    ushort unaff_DS;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,*0xcecd);
    *((in_BX * 0x50 + in_AX + 0x460) - (*0xd237 + -0x6e00)) = 0xff;
    out(0x3ce,1);
    out(0x3cf,0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00006041(void)

{
    char *pcVar1;
    code *pcVar2;
    bool bVar3;
    ushort in_AX;
    ushort in_DX;
    char *pcVar4;
    char *pcVar5;
    char *pcVar6;
    ushort unaff_DS;
    
    bVar3 = false;
    for (pcVar4 = 0x80ce; *pcVar4 != -1; pcVar4 = pcVar4 + 1) {
        if (*pcVar4 != '\0') {
            bVar3 = true;
        }
    }
    if (bVar3) {
        pcVar2 = swi(0x21);
        (*pcVar2)();
        pcVar5 = 0x7b1;
        for (pcVar4 = 0x80ce; *pcVar4 != -1; pcVar4 = pcVar4 + 1) {
            pcVar6 = pcVar5;
            if (*pcVar4 != '\0') {
                pcVar2 = swi(0x21);
                (*pcVar2)();
                pcVar2 = swi(0x21);
                (*pcVar2)();
                pcVar2 = swi(0x21);
                (*pcVar2)();
            }
            do {
                pcVar5 = pcVar6 + 1;
                pcVar1 = pcVar6;
                pcVar6 = pcVar5;
            } while (*pcVar1 != '$');
        }
        pcVar2 = swi(0x21);
        (*pcVar2)();
        pcVar2 = swi(0x21);
        (*pcVar2)();
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005ab0(void)

{
    int16_t in_AX;
    uint16_t in_CX;
    int16_t iVar1;
    int16_t in_BX;
    uchar *puVar2;
    uchar *puVar3;
    uchar *puVar4;
    ushort unaff_ES;
    ushort unaff_DS;
    int16_t var_6h;
    
    puVar3 = (in_CX & 0xff) * 0x30 + -0x237c;
    puVar2 = in_BX * 0x50 + in_AX + *0xd237;
    out(0x3ce,5);
    out(0x3cf,0x11);
    iVar1 = 0xc;
    do {
        *puVar2 = *puVar3;
        puVar2[1] = puVar3[1];
        puVar4 = puVar3 + 3;
        puVar2[2] = puVar3[2];
        puVar3 = puVar3 + 4;
        puVar2[3] = *puVar4;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(0x3cf,in_AX);
}


uint fcn.0000408e(uint16_t param_1,int16_t param_2,uint16_t param_3,int16_t param_4,uchar param_5)

{
    ushort in_AX;
    int16_t iVar1;
    int16_t iVar2;
    ushort in_DX;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,param_5);
    *0xd3b2 = (param_4 - param_2) + 1;
    *0xd3ae = param_2 * 0x50;
    iVar1 = (param_1 >> 3) + 1;
    *0xd3b0 = (param_3 >> 3) - iVar1;
    puVar3 = iVar1 + *0xd3ae + *0xd237;
    iVar1 = *0xd3b2;
    do {
        iVar2 = *0xd3b0;
        do {
            *puVar3 = 0xff;
            puVar3 = puVar3 + 1;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar3 = puVar3 + (0x50 - *0xd3b0);
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,8);
    out(0x3cf,0xff >> (param_1 & 7));
    puVar3 = *0xd3ae + (param_1 >> 3) + *0xd237;
    iVar1 = *0xd3b2;
    do {
        *puVar3 = 0xff;
        puVar3 = puVar3 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,8);
    out(0x3cf,~((0xffU >> (param_3 & 7)) >> 1));
    puVar3 = *0xd3ae + (param_3 >> 3) + *0xd237;
    iVar1 = *0xd3b2;
    do {
        *puVar3 = 0xff;
        puVar3 = puVar3 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,1);
    out(0x3cf,0);
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000065e9(void)

{
    uint8_t uVar1;
    ushort in_AX;
    ushort in_DX;
    
    out(0x3d4,0xc);
    out(0x3d5,in_AX >> 8);
    do {
        uVar1 = in(0x3da);
    } while ((uVar1 & 8) != 0);
    do {
        uVar1 = in(0x3da);
    } while ((uVar1 & 8) == 0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00002ed7(void)

{
    uint16_t uVar1;
    uint16_t uVar2;
    char cVar3;
    ushort in_AX;
    uint16_t in_DX;
    uint8_t uVar4;
    int16_t iVar5;
    uint16_t *puVar6;
    uint16_t *unaff_DI;
    ushort unaff_DS;
    
    iVar5 = (in_DX & 0xff) * 0x10;
    puVar6 = iVar5 + -0x3e93;
    uVar1 = *puVar6;
    if ((((uVar1 + 8 < *unaff_DI) || (unaff_DI[2] < uVar1)) || (uVar2 = *(iVar5 + -0x3e91), uVar2 + 6 < unaff_DI[1]))
       || (unaff_DI[3] < uVar2)) goto code_r0x000030b3;
    *0xd37e = 0;
    *0xd37f = 0;
    if ((*unaff_DI <= uVar1) && (*0xd37e = *0xd37e + '\x01', unaff_DI[2] <= uVar1 + 7)) {
        *0xd37e = *0xd37e + '\x01';
    }
    if ((unaff_DI[1] <= uVar2) && (*0xd37f = *0xd37f + '\x01', unaff_DI[3] <= uVar2 + 5)) {
        *0xd37f = *0xd37f + '\x01';
    }
    if (*0xd37e == '\x01') goto code_r0x00003074;
    if (*0xd37f != '\x01') {
        *0xd388 = 0;
        if (*0xd37e == '\0') {
            *0xd388 = *0xd388 + '\x02';
        }
        if (*0xd37f == '\0') {
            *0xd388 = *0xd388 + '\x01';
        }
        *0xd389 = 0;
        if (*(iVar5 + -0x3e8f) < 0) {
            *0xd389 = *0xd389 + '\x02';
        }
        if (*(iVar5 + -0x3e8d) < 0) {
            *0xd389 = *0xd389 + '\x01';
        }
        cVar3 = *((*0xd388 * '\x04' + *0xd389) + 0xb5a);
        if (cVar3 != '\x01') {
            if (cVar3 == '\x02') {
code_r0x00003074:
                if (*0xd37f == '\0') {
                    *(iVar5 + -0x3e91) = unaff_DI[1] - 6;
                    *(iVar5 + -0x3e8d) = -*(iVar5 + -0x3e8d);
                }
                else {
                    *(iVar5 + -0x3e91) = unaff_DI[3] + 1;
                    *(iVar5 + -0x3e8d) = -*(iVar5 + -0x3e8d);
                }
                goto code_r0x000030b3;
            }
            cVar3 = *0xd388;
            if (cVar3 == '\0') {
                cVar3 = *(iVar5 + -0x3e91) - unaff_DI[3];
                uVar4 = cVar3 + 5;
                if (1 < uVar4) {
                    uVar4 = cVar3 + 6;
                }
                if (4 < uVar4) {
                    uVar4 = uVar4 + 1;
                }
                if ((*puVar6 - unaff_DI[2]) + 7U < uVar4) goto code_r0x00003074;
            }
            else if (cVar3 == '\x01') {
                cVar3 = *(iVar5 + -0x3e91) - unaff_DI[1];
                uVar4 = cVar3 + 5;
                if (1 < uVar4) {
                    uVar4 = cVar3 + 6;
                }
                if (4 < uVar4) {
                    uVar4 = uVar4 + 1;
                }
                if (uVar4 < -(*puVar6 - unaff_DI[2])) goto code_r0x00003074;
            }
            else if (cVar3 == '\x02') {
                cVar3 = *(iVar5 + -0x3e91) - unaff_DI[3];
                uVar4 = cVar3 + 5;
                if (1 < uVar4) {
                    uVar4 = cVar3 + 6;
                }
                if (4 < uVar4) {
                    uVar4 = uVar4 + 1;
                }
                if (-(*puVar6 - *unaff_DI) <= uVar4) goto code_r0x00003074;
            }
            else {
                cVar3 = *(iVar5 + -0x3e91) - unaff_DI[1];
                uVar4 = cVar3 + 5;
                if (1 < uVar4) {
                    uVar4 = cVar3 + 6;
                }
                if (4 < uVar4) {
                    uVar4 = uVar4 + 1;
                }
                if (uVar4 <= (*puVar6 - *unaff_DI) + 7U) goto code_r0x00003074;
            }
        }
    }
    if (*0xd37e == '\0') {
        *puVar6 = *unaff_DI - 8;
        *(iVar5 + -0x3e8f) = -*(iVar5 + -0x3e8f);
    }
    else {
        *puVar6 = unaff_DI[2] + 1;
        *(iVar5 + -0x3e8f) = -*(iVar5 + -0x3e8f);
    }
code_r0x000030b3:
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.000049ec(void)

{
    char cVar1;
    ushort in_AX;
    uint16_t uVar2;
    uchar *puVar3;
    ushort unaff_DS;
    
    if (in_AX != '\n') {
        cVar1 = in_AX + -10;
        uVar2 = cVar1 * -7;
        puVar3 = 0xd2ab;
        do {
            *puVar3 = puVar3[-7];
            puVar3 = puVar3 + -1;
            uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
        uVar2 = cVar1 * -0x10;
        puVar3 = 0xd34b;
        do {
            *puVar3 = puVar3[-0x10];
            puVar3 = puVar3 + -1;
            uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
        uVar2 = cVar1 * -3;
        puVar3 = 0xd369;
        do {
            *puVar3 = puVar3[-3];
            puVar3 = puVar3 + -1;
            uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
    }
    return in_AX;
}


uint fcn.00004274(void)

{
    int16_t in_AX;
    uint16_t in_CX;
    int16_t iVar1;
    ushort in_DX;
    int16_t in_BX;
    uchar *puVar2;
    ushort unaff_ES;
    ushort unaff_DS;
    int16_t var_4h;
    int16_t var_6h;
    int16_t var_8h;
    uchar uStack_8;
    int8_t var_2h;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    uStack_8 = in_DX;
    out(0x3cf,uStack_8);
    out(0x3ce,8);
    out(0x3cf,0x80 >> (in_CX & 7));
    iVar1 = (in_BX - in_AX) + 1;
    puVar2 = in_AX * 0x50 + (in_CX >> 3) + *0xd237;
    do {
        *puVar2 = 0xff;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,1);
    out(0x3cf,0);
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000059cb(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    uint16_t uVar2;
    uint16_t uVar3;
    uchar *puVar4;
    uchar *puVar5;
    uchar *puVar6;
    ushort *puVar7;
    ushort unaff_ES;
    ushort unaff_DS;
    
    uVar2 = in_DX * '\x02';
    uVar3 = in_DX * '\x18';
    puVar4 = uVar3 + 0xe914;
    if (*0xd239 != '\0') {
        puVar4 = uVar3 + 0xe98c;
    }
    puVar7 = uVar2 + 0xc2fa;
    if (*0xd239 != '\0') {
        puVar7 = uVar2 + 0xc304;
    }
    puVar6 = *puVar7;
    iVar1 = 0xc;
    do {
        puVar5 = puVar4 + 1;
        *puVar6 = *puVar4;
        puVar4 = puVar4 + 2;
        puVar6[1] = *puVar5;
        puVar6 = puVar6 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00003295(ushort param_1)

{
    code *pcVar1;
    ushort in_stack_00000000;
    
    pcVar1 = swi(0x21);
    (*pcVar1)();
    return CONCAT22(in_stack_00000000,param_1);
}


void fcn.000030ba(void)

{
    uint16_t in_DX;
    int16_t iVar1;
    uint16_t *puVar2;
    ushort unaff_DS;
    
    iVar1 = (in_DX & 0xff) * 0x10;
    puVar2 = iVar1 + -0x3e93;
    if (*puVar2 < 0x10) {
        *puVar2 = 0x10;
        *(iVar1 + -0x3e8f) = -*(iVar1 + -0x3e8f);
    }
    else if (0x267 < *puVar2) {
        *puVar2 = 0x267;
        *(iVar1 + -0x3e8f) = -*(iVar1 + -0x3e8f);
    }
    if (*(iVar1 + -0x3e91) < 0xc) {
        *(iVar1 + -0x3e91) = 0xc;
        *(iVar1 + -0x3e8d) = -*(iVar1 + -0x3e8d);
    }
    else if (0x110 < *(iVar1 + -0x3e91)) {
        *(iVar1 + -0x3e91) = 0x110;
        *(iVar1 + -0x3e8d) = -*(iVar1 + -0x3e8d);
    }
    return;
}


ushort fcn.00004e9b(void)

{
    uint8_t uVar1;
    ushort in_AX;
    int16_t iVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    if (*0xd23a == '\0') {
        *0xd23a = 4;
        iVar3 = -0x312d;
        iVar2 = 6;
        do {
            uVar1 = *(iVar3 + 4) + 2;
            if (*(iVar3 + 6) < uVar1) {
                uVar1 = *(iVar3 + 5);
            }
            *(iVar3 + 4) = uVar1;
            iVar3 = iVar3 + 7;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
    }
    else {
        *0xd23a = *0xd23a + -1;
    }
    return in_AX;
}


ushort fcn.000022be(void)

{
    uchar uVar1;
    uchar uVar2;
    ushort in_AX;
    uint8_t in_DL;
    ushort in_BX;
    ushort *puVar3;
    ushort unaff_DS;
    
    puVar3 = 0xc2cd;
    do {
        if (*(puVar3 + 4) == '\0') {
            *puVar3 = in_AX;
            puVar3[1] = in_BX;
            *(puVar3 + 2) = in_DL;
            uVar1 = *(in_DL * 2 + 0xc31);
            uVar2 = *(in_DL * 2 + 0xc32);
            *(puVar3 + 5) = uVar1;
            *(puVar3 + 3) = uVar1;
            *(puVar3 + 7) = uVar2;
            *(puVar3 + 4) = 1;
            return in_AX;
        }
        puVar3 = puVar3 + 9;
    } while (puVar3 < 0xc2fa);
    return in_AX;
}


ushort fcn.0000650c(ushort param_1)

{
    code *pcVar1;
    
    pcVar1 = swi(0x10);
    (*pcVar1)();
    return param_1;
}


uint fcn.00002d0a(void)

{
    uint16_t uVar1;
    ushort in_AX;
    uint16_t in_DX;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar2 = (in_DX & 0xff) * 0x10;
    *(iVar2 + -0x3e8b) = *(iVar2 + -0x3e8b) | 1;
    *(iVar2 + -0x3e8b) = *(iVar2 + -0x3e8b) & 0xfb;
    uVar1 = *(iVar2 + -0x3e91);
    if ((0x143 < uVar1) && (*(iVar2 + -0x3e8b) = *(iVar2 + -0x3e8b) | 4, 0x151 < uVar1)) {
        *(iVar2 + -0x3e8b) = *(iVar2 + -0x3e8b) & 0xfe;
        *0xd251 = *0xd251 + -1;
    }
    return CONCAT22(in_DX,in_AX);
}


void fcn.00005bbd(void)

{
    uchar in_AL;
    uchar in_AH;
    uchar *puVar1;
    ushort unaff_DS;
    
    puVar1 = 0xcf17;
    do {
        if (puVar1[2] == '\0') {
            *puVar1 = in_AH;
            puVar1[1] = in_AL;
            puVar1[2] = 5;
            *0xd235 = *0xd235 + '\x01';
            return;
        }
        puVar1 = puVar1 + 3;
    } while (puVar1 < 0xd235);
    return;
}


uint fcn.0000419c(void)

{
    uint16_t in_AX;
    int16_t iVar1;
    int16_t in_CX;
    int16_t iVar2;
    ushort in_DX;
    uint16_t in_BX;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    int16_t var_6h;
    int16_t var_8h;
    uchar uStack_8;
    int8_t var_2h;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    uStack_8 = in_DX;
    out(0x3cf,uStack_8);
    *0xd3b4 = in_CX * 0x50;
    iVar1 = (in_AX >> 3) + 1;
    iVar2 = (in_BX >> 3) - iVar1;
    puVar3 = iVar1 + *0xd3b4 + *0xd237;
    if ((iVar2 != 0) && (-1 < iVar2)) {
        do {
            *puVar3 = 0xff;
            puVar3 = puVar3 + 1;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
    }
    out(0x3ce,8);
    out(0x3cf,0xff >> (in_AX & 7));
    *((in_AX >> 3) + *0xd3b4 + *0xd237) = 0xff;
    out(0x3ce,8);
    out(0x3cf,~((0xffU >> (in_BX & 7)) >> 1));
    *((in_BX >> 3) + *0xd3b4 + *0xd237) = 0xff;
    out(0x3ce,1);
    out(0x3cf,0);
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00006609(void)

{
    uint8_t uVar1;
    ushort in_AX;
    ushort in_DX;
    
    out(0x3d4,0xc);
    out(0x3d5,in_AX >> 8);
    out(0x3d4,0xd);
    out(0x3d5,in_AX);
    do {
        uVar1 = in(0x3da);
    } while ((uVar1 & 8) != 0);
    do {
        uVar1 = in(0x3da);
    } while ((uVar1 & 8) == 0);
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.0000651b(ushort param_1,ushort param_2,ushort param_3)

{
    code *pcVar1;
    
    pcVar1 = swi(0x11);
    (*pcVar1)();
    pcVar1 = swi(0x10);
    (*pcVar1)();
    return param_3;
}


ushort fcn.00004dcb(void)

{
    uchar uVar1;
    ushort in_AX;
    int16_t iVar2;
    uchar *puVar3;
    ushort *puVar4;
    int16_t iVar5;
    ushort *puVar6;
    ushort unaff_DS;
    
    puVar3 = 0xc31;
    iVar5 = -0x312d;
    iVar2 = 6;
    do {
        uVar1 = *puVar3;
        *(iVar5 + 4) = uVar1;
        *(iVar5 + 5) = uVar1;
        *(iVar5 + 6) = puVar3[1];
        puVar3 = puVar3 + 2;
        iVar5 = iVar5 + 7;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *0xceec = *0xceec + '\x02';
    puVar4 = 0x1922;
    puVar6 = 0xced3;
    iVar2 = 6;
    do {
        *puVar6 = *puVar4;
        puVar6[1] = puVar4[1];
        puVar4 = puVar4 + 2;
        puVar6 = puVar6 + 7;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return in_AX;
}


uint fcn.00003d00(void)

{
    uchar *puVar1;
    uint8_t uVar2;
    uchar *puVar3;
    int16_t in_AX;
    uint16_t uVar4;
    int16_t iVar5;
    ushort in_DX;
    int16_t in_BX;
    uchar *puVar6;
    uchar *puVar7;
    uchar *puVar8;
    uint8_t *unaff_DI;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_6h;
    int16_t var_ch;
    char cStack_8;
    
    puVar6 = in_BX * 0x50 + in_AX;
    out(0x3ce,5);
    out(0x3cf,0x11);
    *0xd246 = 1;
    while( true ) {
        uVar2 = *unaff_DI;
        unaff_DI = unaff_DI + 1;
        uVar4 = uVar2;
        if (uVar2 == 0xff) break;
        if (*unaff_DI == 0xff) {
            *0xd246 = 0;
        }
        if (uVar2 == 0) {
            if (*0xd246 == '\x01') {
                uVar4 = 0xffff;
            }
        }
        else {
            *0xd246 = 0;
        }
        iVar5 = 0xc;
        puVar3 = uVar4 * 0xc + -0x23f4;
        do {
            puVar8 = puVar3;
            puVar7 = puVar6;
            *puVar7 = *puVar8;
            puVar6 = puVar7 + 0x50;
            iVar5 = iVar5 + -1;
            puVar3 = puVar8 + 1;
        } while (iVar5 != 0);
        cStack_8 = in_DX;
        if (cStack_8 != '\0') {
            puVar8 = puVar8 + -0xb;
            iVar5 = 0xc;
            puVar3 = puVar7 + 0x6a90;
            do {
                puVar6 = puVar3;
                puVar1 = puVar8;
                puVar8 = puVar8 + 1;
                *puVar6 = *puVar1;
                iVar5 = iVar5 + -1;
                puVar3 = puVar6 + 0x50;
            } while (iVar5 != 0);
            puVar6 = puVar6 + -0x6db0;
        }
        puVar6 = puVar6 + -0x3bf;
    }
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005548(void)

{
    uchar *puVar1;
    char cVar2;
    ushort in_AX;
    char *pcVar3;
    int16_t iVar4;
    uint16_t in_DX;
    uint16_t uVar5;
    uint16_t uVar6;
    uchar *puVar7;
    uchar *puVar8;
    uchar *puVar9;
    ushort *puVar10;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_6h;
    
    uVar5 = in_DX * '\x02';
    uVar6 = in_DX * '\f';
    puVar7 = uVar6 + 0xe2b4;
    if (*0xd239 != '\0') {
        puVar7 = uVar6 + 0xe374;
    }
    puVar10 = uVar5 + 0xc26d;
    if (*0xd239 != '\0') {
        puVar10 = uVar5 + 0xc28d;
    }
    puVar9 = *puVar10;
    pcVar3 = (in_DX & 0xff) + 0xc2ad;
    if (*0xd239 != '\0') {
        pcVar3 = (in_DX & 0xff) + 0xc2bd;
    }
    cVar2 = *pcVar3;
    iVar4 = 6;
    do {
        puVar8 = puVar7 + 1;
        *puVar9 = *puVar7;
        if (cVar2 != '\0') {
            puVar1 = puVar8;
            puVar8 = puVar7 + 2;
            puVar9[1] = *puVar1;
        }
        puVar9 = puVar9 + 0x50;
        iVar4 = iVar4 + -1;
        puVar7 = puVar8;
    } while (iVar4 != 0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005817(void)

{
    uint16_t uVar1;
    ushort in_AX;
    uint16_t uVar2;
    ushort in_DX;
    uchar *puVar3;
    ushort *puVar4;
    uchar *puVar5;
    ushort unaff_ES;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    uVar1 = *0xd247;
    puVar3 = (uVar1 >> 3) + 0x66d0 + *0xd237;
    puVar4 = 0xc35e;
    if (*0xd239 != '\0') {
        puVar4 = 0xc360;
    }
    *puVar4 = puVar3;
    uVar2 = *0xd249;
    if ((uVar1 & 7) != 0) {
        uVar2 = uVar2 + 1;
    }
    puVar5 = 0xc362;
    if (*0xd239 != '\0') {
        puVar5 = 0xc363;
    }
    *puVar5 = uVar2;
    puVar5 = 0xe434;
    if (*0xd239 != '\0') {
        puVar5 = 0xe458;
    }
    do {
        *puVar5 = *puVar3;
        puVar5[1] = puVar3[0x50];
        puVar5[2] = puVar3[0xa0];
        puVar5[3] = puVar3[0xf0];
        puVar5 = puVar5 + 4;
        puVar3 = puVar3 + 1;
        uVar2 = uVar2 - 1;
    } while (uVar2 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.000023d0(void)

{
    uint8_t uVar1;
    ushort in_AX;
    int16_t iVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    if (*0xd23a == '\0') {
        *0xd23a = 4;
        iVar3 = -0x3d33;
        iVar2 = 5;
        do {
            if (*(iVar3 + 8) != '\0') {
                uVar1 = *(iVar3 + 5) + 2;
                if (*(iVar3 + 7) < uVar1) {
                    uVar1 = *(iVar3 + 6);
                }
                *(iVar3 + 5) = uVar1;
            }
            iVar3 = iVar3 + 9;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
    }
    else {
        *0xd23a = *0xd23a + -1;
    }
    return in_AX;
}


ushort fcn.00003c1b(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort unaff_DS;
    
    iVar1 = *0xc16d + -0x15;
    if (iVar1 < 0xf) {
        iVar1 = 0xf;
    }
    if (*0xd24a < iVar1) {
        iVar1 = *0xd24a;
    }
    *0xd247 = iVar1;
    return in_AX;
}


uint fcn.00005cc8(void)

{
    uint16_t in_AX;
    int16_t iVar1;
    ushort in_DX;
    uint16_t uVar2;
    uint16_t uVar3;
    int16_t in_BX;
    uchar *puVar4;
    uchar *puVar5;
    ushort *puVar6;
    ushort unaff_ES;
    ushort unaff_DS;
    
    puVar5 = in_BX * 0x50 + (in_AX >> 3) + *0xd237;
    uVar2 = in_DX << 1;
    uVar3 = in_DX << 4;
    puVar4 = uVar3 + 0xea04;
    if (*0xd239 != '\0') {
        puVar4 = uVar3 + 0xea44;
    }
    puVar6 = uVar2 + 0xc34e;
    if (*0xd239 != '\0') {
        puVar6 = uVar2 + 0xc356;
    }
    *puVar6 = puVar5;
    iVar1 = 8;
    do {
        *puVar4 = *puVar5;
        puVar4[1] = puVar5[1];
        puVar4 = puVar4 + 2;
        puVar5 = puVar5 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return CONCAT22(in_DX,in_AX);
}


void fcn.00003778(void)

{
    int16_t iVar1;
    uchar *puVar2;
    ushort *puVar3;
    ushort unaff_DS;
    
    iVar1 = 0x40;
    puVar2 = 0xc30e;
    do {
        *puVar2 = 0;
        puVar2 = puVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    iVar1 = 8;
    puVar3 = 0xc34e;
    do {
        *puVar3 = 0xffff;
        puVar3 = puVar3 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


uint fcn.00004757(void)

{
    uchar *puVar1;
    uint16_t in_AX;
    int8_t iVar2;
    uint16_t uVar3;
    uint8_t uVar4;
    uint16_t in_DX;
    char cVar5;
    int16_t in_BX;
    char cVar6;
    uint8_t *puVar7;
    uint8_t *puVar8;
    uchar *puVar9;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_6h;
    int8_t var_7h;
    int16_t var_ch;
    uchar uStack_7;
    uint8_t uStack_2;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    uStack_7 = in_DX >> 8;
    out(0x3cf,uStack_7);
    puVar9 = in_BX * 0x50 + (in_AX >> 3) + *0xd237;
    puVar7 = (in_DX & 0xff) * 0x6c + -0x371c;
    uStack_2 = in_AX;
    uVar3 = CONCAT11((uStack_2 & 7) - 8,uStack_2) & 0xff07;
    iVar2 = uVar3;
    uVar4 = -(uVar3 >> 8);
    cVar5 = '$';
    do {
        out(0x3ce,8);
        out(0x3cf,*puVar7 >> iVar2);
        *puVar9 = 0xff;
        cVar6 = '\x02';
        puVar7 = puVar7 + 1;
        puVar1 = puVar9 + 1;
        do {
            puVar9 = puVar1;
            puVar8 = puVar7;
            puVar7 = puVar8 + 1;
            out(0x3ce,8);
            out(0x3cf,*puVar8 >> iVar2 | puVar8[-1] << (uVar4 & 0x1f));
            *puVar9 = 0xff;
            cVar6 = cVar6 + -1;
            puVar1 = puVar9 + 1;
        } while (cVar6 != '\0');
        out(0x3ce,8);
        out(0x3cf,*puVar8 << (uVar4 & 0x1f));
        puVar9[1] = 0xff;
        puVar9 = puVar9 + 0x4e;
        cVar5 = cVar5 + -1;
    } while (cVar5 != '\0');
    out(0x3ce,1);
    out(0x3cf,0);
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


int16_t fcn.00005919(void)

{
    int16_t in_AX;
    uint16_t uVar1;
    uint16_t in_BX;
    uchar *unaff_SI;
    uchar *puVar2;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    
    if (in_BX < 0x152) {
        puVar3 = in_BX * 0x50 + in_AX + *0xd237;
        uVar1 = 0x152 - in_BX;
        if (0xc < uVar1) {
            uVar1 = 0xc;
        }
        do {
            puVar2 = unaff_SI + 1;
            *puVar3 = *unaff_SI;
            unaff_SI = unaff_SI + 2;
            puVar3[1] = *puVar2;
            puVar3 = puVar3 + 0x50;
            uVar1 = uVar1 - 1;
        } while (uVar1 != 0);
    }
    return in_AX;
}


//WARNING: Variable defined which should be unmapped: var_2h
//WARNING: Variable defined which should be unmapped: var_4h

ushort fcn.000035a2(void)

{
    ushort in_AX;
    char cVar1;
    int16_t iVar2;
    uint8_t *puVar3;
    uint8_t *puVar4;
    ushort unaff_DS;
    uint8_t *puStack_e;
    uint8_t *puStack_c;
    int16_t var_4h;
    uint16_t var_2h;
    
    puStack_c = 0x8314;
    puStack_e = 0xa240;
    do {
        puVar3 = 0x61c0;
        cVar1 = '\0';
        iVar2 = 0xa64;
        puVar4 = puStack_c;
        do {
            *puVar4 = (*puVar4 ^ *puVar3) - cVar1;
            puVar4 = puVar4 + 1;
            puVar3 = puVar3 + 1;
            if (puVar3 == 0x61d7) {
                puVar3 = 0x61c0;
            }
            cVar1 = cVar1 + '\x01';
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        iVar2 = 0xa64;
        puVar4 = puStack_e;
        do {
            *puVar4 = (*puVar4 ^ *puVar3) - cVar1;
            puVar4 = puVar4 + 1;
            puVar3 = puVar3 + 1;
            if (puVar3 == 0x61d7) {
                puVar3 = 0x61c0;
            }
            cVar1 = cVar1 + '\x01';
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puStack_c = puStack_c + 0xa64;
        puStack_e = puStack_e + 0xa64;
    } while (puStack_c != 0xa240);
    return in_AX;
}


ushort fcn.000050b6(ushort param_1)

{
    code *pcVar1;
    ushort in_BX;
    ushort unaff_ES;
    ushort unaff_DS;
    
    pcVar1 = swi(0x21);
    (*pcVar1)();
    *0xd418 = unaff_ES;
    *0xd41a = in_BX;
    return param_1;
}


ushort fcn.00002e2b(void)

{
    int16_t *piVar1;
    ushort in_AX;
    int16_t iVar2;
    int16_t iVar3;
    int16_t iVar4;
    ushort unaff_DS;
    
    piVar1 = 0xd23d;
    *piVar1 = *piVar1 + -1;
    if (*piVar1 == 0) {
        *0xd23d = 0x600;
        iVar4 = -0x3e93;
        iVar3 = 0x10;
        do {
            if (((((*(iVar4 + 8) & 1) != 0) && (*(iVar4 + 6) != 7)) && (*(iVar4 + 6) != -7)) &&
               (*(iVar4 + 9) = *(iVar4 + 9) + 1, *(iVar4 + 9) == 3)) {
                *(iVar4 + 9) = 0;
                iVar2 = *(iVar4 + 6);
                if (iVar2 < 0) {
                    iVar2 = iVar2 + -1;
                }
                else {
                    iVar2 = iVar2 + 1;
                }
                *(iVar4 + 6) = iVar2;
            }
            iVar4 = iVar4 + 0x10;
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
    }
    return in_AX;
}


uint fcn.0000609b(ushort param_1)

{
    code *pcVar1;
    char cVar2;
    ushort in_AX;
    uint8_t in_BL;
    ushort unaff_DS;
    uint uVar3;
    
    pcVar1 = swi(0x10);
    cVar2 = (*pcVar1)();
    if (((cVar2 == '\x1a') && (3 < in_BL)) && (in_BL < 9)) {
        pcVar1 = swi(0x10);
        (*pcVar1)();
        if ((2 < *0xd409) && ((*(*0xd3d8 + 2) & 1) != 0)) {
            return CONCAT22(in_AX,param_1);
        }
    }
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    uVar3 = fcn.00005ffc();
    if (*0xced2 == '\0') {
        uVar3 = fcn.0000609b();
    }
    return uVar3;
}


uint fcn.00006637(void)

{
    uchar *puVar1;
    uchar *puVar2;
    ushort in_AX;
    int16_t iVar3;
    ushort in_DX;
    uchar *puVar4;
    uchar *puVar5;
    ushort unaff_ES;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    puVar5 = 0x6e00;
    puVar4 = NULL;
    for (iVar3 = 28000; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


void fcn.00003109(void)

{
    uint16_t in_DX;
    int16_t iVar1;
    uint16_t *puVar2;
    ushort unaff_DS;
    
    iVar1 = (in_DX & 0xff) * 0x10;
    puVar2 = iVar1 + -0x3e93;
    if (*puVar2 < 0x10) {
        *puVar2 = 0x10;
        *(iVar1 + -0x3e8f) = -*(iVar1 + -0x3e8f);
    }
    else if (0x267 < *puVar2) {
        *puVar2 = 0x267;
        *(iVar1 + -0x3e8f) = -*(iVar1 + -0x3e8f);
    }
    if (*(iVar1 + -0x3e91) < 0xc) {
        *(iVar1 + -0x3e91) = 0xc;
        *(iVar1 + -0x3e8d) = -*(iVar1 + -0x3e8d);
    }
    else if (0x14c < *(iVar1 + -0x3e91)) {
        *(iVar1 + -0x3e91) = 0x14c;
        *(iVar1 + -0x3e8d) = -*(iVar1 + -0x3e8d);
    }
    return;
}


uint fcn.00005a1f(void)

{
    uint16_t in_AX;
    uint16_t in_CX;
    int16_t iVar1;
    uchar *puVar2;
    uchar *puVar3;
    uchar *puVar4;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_9h;
    
    puVar3 = (in_CX & 0xff) * 0x30 + -0x237c;
    puVar2 = (in_AX & 0xff) * 0x3c0 + (in_AX >> 8) * 4 + 0x3c2 + *0xd237;
    out(0x3ce,5);
    out(0x3cf,0x11);
    iVar1 = 0xc;
    do {
        *puVar2 = *puVar3;
        puVar2[1] = puVar3[1];
        puVar4 = puVar3 + 3;
        puVar2[2] = puVar3[2];
        puVar3 = puVar3 + 4;
        puVar2[3] = *puVar4;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(0x3cf,in_AX);
}


uint fcn.000050cb(ushort param_1)

{
    code *pcVar1;
    ushort in_AX;
    int16_t iVar2;
    uchar *puVar3;
    ushort unaff_DS;
    
    pcVar1 = swi(0x21);
    (*pcVar1)();
    puVar3 = 0xd42a;
    iVar2 = 6;
    do {
        *puVar3 = 0;
        puVar3 = puVar3 + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return CONCAT22(in_AX,param_1);
}


ushort fcn.00004866(void)

{
    uint8_t uVar1;
    uint8_t uVar2;
    ushort in_AX;
    int16_t iVar3;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    ushort unaff_DS;
    
    iVar3 = 6;
    while( true ) {
        uVar1 = *unaff_DI;
        uVar2 = *unaff_SI;
        if (uVar1 >= uVar2 && uVar1 != uVar2) {
            return in_AX;
        }
        if (uVar1 < uVar2) break;
        unaff_SI = unaff_SI + 1;
        unaff_DI = unaff_DI + 1;
        iVar3 = iVar3 + -1;
        if (iVar3 == 0) {
            return in_AX;
        }
    }
    return in_AX;
}


void fcn.00003798(void)

{
    int16_t iVar1;
    uchar *puVar2;
    ushort *puVar3;
    ushort unaff_DS;
    
    iVar1 = 0x2d;
    puVar2 = 0xc2cd;
    do {
        *puVar2 = 0;
        puVar2 = puVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    iVar1 = 10;
    puVar3 = 0xc2fa;
    do {
        *puVar3 = 0xffff;
        puVar3 = puVar3 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


ushort fcn.000034d7(void)

{
    code *pcVar1;
    ushort uVar2;
    int16_t iVar3;
    uchar *puVar4;
    uchar *puVar5;
    ushort unaff_DS;
    uchar in_CF;
    ushort in_stack_00000012;
    
    puVar4 = 0x7a3;
    puVar5 = 0x800e;
    iVar3 = 0xe;
    do {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    pcVar1 = swi(0x21);
    uVar2 = (*pcVar1)();
    *0x800c = uVar2;
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    if (in_CF) {
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        return 3;
    }
    return in_stack_00000012;
}


char fcn.00003c55(void)

{
    char in_AL;
    char cVar1;
    int8_t var_2h;
    
    cVar1 = '\0';
    if (((in_AL == ';') || (cVar1 = '\x01', in_AL == 'D')) || (cVar1 = '\x02', in_AL == '9')) {
        in_AL = cVar1;
    }
    return in_AL;
}


ushort fcn.00004e13(void)

{
    uchar uVar1;
    ushort in_AX;
    int16_t iVar2;
    uchar *puVar3;
    ushort *puVar4;
    int16_t iVar5;
    ushort *puVar6;
    ushort unaff_DS;
    
    puVar3 = 0xc3d;
    iVar5 = -0x312d;
    iVar2 = 6;
    do {
        uVar1 = *puVar3;
        *(iVar5 + 4) = uVar1;
        *(iVar5 + 5) = uVar1;
        *(iVar5 + 6) = puVar3[1];
        puVar3 = puVar3 + 2;
        iVar5 = iVar5 + 7;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *0xceec = *0xceec + '\x02';
    puVar4 = 0x1b87;
    puVar6 = 0xced3;
    iVar2 = 6;
    do {
        *puVar6 = *puVar4;
        puVar6[1] = puVar4[1];
        puVar4 = puVar4 + 2;
        puVar6 = puVar6 + 7;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return in_AX;
}


uint fcn.000050e8(ushort param_1)

{
    code *pcVar1;
    ushort in_stack_00000000;
    
    pcVar1 = swi(0x21);
    (*pcVar1)();
    *0x417 = *0x417 & 0xf0;
    *0x418 = *0x418 & 0xfc;
    *0x496 = *0x496 & 0xf3;
    return CONCAT22(in_stack_00000000,param_1);
}


uint fcn.00006665(void)

{
    uchar *puVar1;
    uchar *puVar2;
    ushort in_AX;
    int16_t iVar3;
    ushort in_DX;
    uchar *puVar4;
    uchar *puVar5;
    ushort unaff_ES;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    puVar5 = 0x6e00;
    puVar4 = NULL;
    if (*0xd239 == '\0') {
        puVar4 = 0x6e00;
        puVar5 = NULL;
    }
    for (iVar3 = 28000; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.00004f0e(void)

{
    ushort in_AX;
    ushort uVar1;
    uint8_t *unaff_SI;
    ushort *unaff_DI;
    ushort unaff_ES;
    ushort unaff_DS;
    
    uVar1 = in_AX;
    while( true ) {
        if (*unaff_SI == 0) break;
        uVar1 = CONCAT11(uVar1 >> 8,~*unaff_SI);
        *unaff_DI = uVar1;
        unaff_SI = unaff_SI + 1;
        unaff_DI = unaff_DI + 1;
    }
    return in_AX;
}


void fcn.000037b8(void)

{
    ushort unaff_DS;
    
    *0xc35e = 0xffff;
    *0xc360 = 0xffff;
    return;
}


uint fcn.0000568c(void)

{
    uint16_t in_AX;
    int16_t iVar1;
    uint16_t in_DX;
    uchar *puVar2;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_4h;
    int16_t var_ah;
    
    puVar2 = (in_AX >> 3) + 0x66d0 + *0xd237;
    if ((in_AX & 7) == 0) {
        out(0x3ce,8);
        out(0x3cf,0x7f);
        *puVar2 = 0xff;
        puVar2[0xf0] = 0xff;
        out(0x3ce,8);
        out(0x3cf,0xff);
        puVar2[0x50] = 0xff;
        puVar2[0xa0] = 0xff;
        iVar1 = (in_DX & 0xff) - 2;
        puVar2 = puVar2 + 1;
        do {
            puVar3 = puVar2;
            *puVar3 = 0xff;
            puVar3[0x50] = 0xff;
            puVar3[0xa0] = 0xff;
            puVar3[0xf0] = 0xff;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        out(0x3ce,8);
        out(0x3cf,0xfe);
        puVar3[1] = 0xff;
        puVar3[0xf1] = 0xff;
        out(0x3ce,8);
        out(0x3cf,0xff);
        puVar3[0x51] = 0xff;
        puVar3[0xa1] = 0xff;
    }
    else {
        iVar1 = (in_AX & 7) * 2;
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa81));
        *puVar2 = 0xff;
        puVar2[0xf0] = 0xff;
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa82));
        puVar2[0x50] = 0xff;
        puVar2[0xa0] = 0xff;
        out(0x3ce,8);
        out(0x3cf,0xff);
        iVar1 = (in_DX & 0xff) - 1;
        puVar2 = puVar2 + 1;
        do {
            puVar3 = puVar2;
            *puVar3 = 0xff;
            puVar3[0x50] = 0xff;
            puVar3[0xa0] = 0xff;
            puVar3[0xf0] = 0xff;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        iVar1 = (in_AX & 7) * 2;
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa8f));
        puVar3[1] = 0xff;
        puVar3[0xf1] = 0xff;
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa90));
        puVar3[0x51] = 0xff;
        puVar3[0xa1] = 0xff;
        out(0x3ce,8);
        out(0x3cf,0xff);
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000054b5(void)

{
    uint16_t in_AX;
    uint8_t *puVar1;
    int16_t iVar2;
    uint16_t in_DX;
    uint16_t uVar3;
    uint16_t uVar4;
    int16_t in_BX;
    uchar *puVar5;
    uchar *puVar6;
    uchar *puVar7;
    ushort *puVar8;
    ushort unaff_ES;
    ushort unaff_DS;
    int8_t var_6h;
    int8_t var_ch;
    uint8_t uStack_2;
    
    puVar7 = in_BX * 0x50 + (in_AX >> 3) + *0xd237;
    uVar3 = in_DX * '\x02';
    uVar4 = in_DX * '\f';
    puVar5 = uVar4 + 0xe2b4;
    if (*0xd239 != '\0') {
        puVar5 = uVar4 + 0xe374;
    }
    puVar8 = uVar3 + 0xc26d;
    if (*0xd239 != '\0') {
        puVar8 = uVar3 + 0xc28d;
    }
    *puVar8 = puVar7;
    uStack_2 = in_AX;
    puVar1 = (in_DX & 0xff) + 0xc2ad;
    if (*0xd239 != '\0') {
        puVar1 = (in_DX & 0xff) + 0xc2bd;
    }
    *puVar1 = uStack_2 & 7;
    iVar2 = 6;
    do {
        *puVar5 = *puVar7;
        puVar6 = puVar5 + 1;
        if ((in_AX & 7) != 0) {
            *puVar6 = puVar7[1];
            puVar6 = puVar5 + 2;
        }
        puVar7 = puVar7 + 0x50;
        iVar2 = iVar2 + -1;
        puVar5 = puVar6;
    } while (iVar2 != 0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005961(void)

{
    int16_t in_AX;
    int16_t iVar1;
    ushort in_DX;
    uint16_t uVar2;
    uint16_t uVar3;
    int16_t in_BX;
    uchar *puVar4;
    uchar *puVar5;
    ushort *puVar6;
    ushort unaff_ES;
    ushort unaff_DS;
    
    puVar5 = in_BX * 0x50 + in_AX + *0xd237;
    uVar2 = in_DX * '\x02';
    uVar3 = in_DX * '\x18';
    puVar4 = uVar3 + 0xe914;
    if (*0xd239 != '\0') {
        puVar4 = uVar3 + 0xe98c;
    }
    puVar6 = uVar2 + 0xc2fa;
    if (*0xd239 != '\0') {
        puVar6 = uVar2 + 0xc304;
    }
    *puVar6 = puVar5;
    iVar1 = 0xc;
    do {
        *puVar4 = *puVar5;
        puVar4[1] = puVar5[1];
        puVar4 = puVar4 + 2;
        puVar5 = puVar5 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return CONCAT22(in_DX,in_AX);
}


void fcn.000037c5(void)

{
    int16_t iVar1;
    uchar *puVar2;
    ushort unaff_DS;
    
    iVar1 = 0x31e;
    puVar2 = 0xcf17;
    do {
        *puVar2 = 0;
        puVar2 = puVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    *0xd235 = 0;
    return;
}


ushort fcn.00003c75(void)

{
    char in_AL;
    ushort unaff_DS;
    int8_t var_4h;
    
    (**((in_AL << 1) + 0x11b))();
    return _var_4h;
}


ushort fcn.000052df(void)

{
    ushort in_AX;
    uint8_t *unaff_DI;
    ushort unaff_DS;
    
    if (*0xcf0e <= *unaff_DI) {
        *0xcf0e = *unaff_DI;
        *0xcf0f = 1;
        *0xcf10 = unaff_DI + 1;
    }
    return in_AX;
}


uint fcn.000046bf(void)

{
    int16_t in_AX;
    ushort in_DX;
    int16_t in_BX;
    ushort unaff_ES;
    ushort unaff_DS;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,*0xcecc);
    *((in_BX * 0x50 + in_AX + 0x460) - (*0xd237 + -0x6e00)) = 0xff;
    out(0x3ce,1);
    out(0x3cf,0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005c3a(void)

{
    uint16_t in_AX;
    uint16_t uVar1;
    uint16_t uVar2;
    ushort in_DX;
    int16_t in_BX;
    int16_t iVar3;
    uchar *puVar4;
    int16_t iVar5;
    ushort unaff_ES;
    ushort unaff_DS;
    
    uVar1 = in_BX - 7;
    if (8 < uVar1) {
        uVar1 = 8;
    }
    iVar3 = in_BX * 0x50 + (in_AX >> 3) + *0xd237;
    puVar4 = iVar3 + 0x230;
    iVar5 = (in_AX & 7) * 2;
    if (*(iVar5 + 0xa9f) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar5 + 0xa9f));
        uVar2 = uVar1;
        do {
            *puVar4 = 0xff;
            puVar4 = puVar4 + -0x50;
            uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
    }
    puVar4 = iVar3 + 0x231;
    if (*(iVar5 + 0xaa0) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar5 + 0xaa0));
        do {
            *puVar4 = 0xff;
            puVar4 = puVar4 + -0x50;
            uVar1 = uVar1 - 1;
        } while (uVar1 != 0);
    }
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005d38(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    uint16_t uVar2;
    uint16_t uVar3;
    uchar *puVar4;
    uchar *puVar5;
    uchar *puVar6;
    ushort *puVar7;
    ushort unaff_ES;
    ushort unaff_DS;
    
    uVar2 = in_DX << 1;
    uVar3 = in_DX << 4;
    puVar4 = uVar3 + 0xea04;
    if (*0xd239 != '\0') {
        puVar4 = uVar3 + 0xea44;
    }
    puVar7 = uVar2 + 0xc34e;
    if (*0xd239 != '\0') {
        puVar7 = uVar2 + 0xc356;
    }
    puVar6 = *puVar7;
    iVar1 = 8;
    do {
        puVar5 = puVar4 + 1;
        *puVar6 = *puVar4;
        puVar4 = puVar4 + 2;
        puVar6[1] = *puVar5;
        puVar6 = puVar6 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000052ff(void)

{
    int16_t iVar1;
    uint16_t in_AX;
    uint16_t uVar2;
    ushort in_DX;
    int16_t in_BX;
    uchar *puVar3;
    ushort unaff_ES;
    ushort unaff_DS;
    int16_t var_ah;
    
    *0xd240 = 0;
    *0xd241 = 0;
    *0xd242 = 0;
    *0xd243 = 0;
    *0xd244 = 0;
    *0xd245 = 0;
    uVar2 = 0x152 - in_BX;
    if (6 < uVar2) {
        uVar2 = 6;
    }
    puVar3 = 0xd240;
    do {
        *puVar3 = 1;
        puVar3 = puVar3 + 1;
        uVar2 = uVar2 - 1;
    } while (uVar2 != 0);
    puVar3 = in_BX * 0x50 + (in_AX >> 3) + *0xd237;
    iVar1 = (in_AX & 7) * 6;
    if (*(iVar1 + 0xa53) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa53));
        if (*0xd240 != '\0') {
            *puVar3 = 0xff;
        }
        if (*0xd245 != '\0') {
            puVar3[400] = 0xff;
        }
    }
    if (*(iVar1 + 0xa54) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa54));
        if (*0xd240 != '\0') {
            puVar3[1] = 0xff;
        }
        if (*0xd245 != '\0') {
            puVar3[0x191] = 0xff;
        }
    }
    if (*(iVar1 + 0xa55) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa55));
        if (*0xd241 != '\0') {
            puVar3[0x50] = 0xff;
        }
        if (*0xd244 != '\0') {
            puVar3[0x140] = 0xff;
        }
    }
    if (*(iVar1 + 0xa56) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa56));
        if (*0xd241 != '\0') {
            puVar3[0x51] = 0xff;
        }
        if (*0xd244 != '\0') {
            puVar3[0x141] = 0xff;
        }
    }
    if (*(iVar1 + 0xa57) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa57));
        if (*0xd242 != '\0') {
            puVar3[0xa0] = 0xff;
        }
        if (*0xd243 != '\0') {
            puVar3[0xf0] = 0xff;
        }
    }
    if (*(iVar1 + 0xa58) != '\0') {
        out(0x3ce,8);
        out(0x3cf,*(iVar1 + 0xa58));
        if (*0xd242 != '\0') {
            puVar3[0xa1] = 0xff;
        }
        if (*0xd243 != '\0') {
            puVar3[0xf1] = 0xff;
        }
    }
    out(0x3ce,8);
    out(0x3cf,0xff);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000063cd(void)

{
    ushort in_AX;
    uint8_t uVar1;
    char cVar2;
    ushort in_CX;
    int16_t iVar3;
    uint8_t in_DL;
    uint8_t uVar4;
    uint16_t uVar5;
    uint16_t uVar6;
    uint8_t *puVar7;
    char *pcVar8;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    uVar4 = in_AX;
    uVar5 = in_DL;
    uVar1 = in_AX >> 8;
    if (uVar1 < 0x61) {
        pcVar8 = (uVar1 - 0x20) * 0xe + -0x3a9c;
    }
    else {
        pcVar8 = (uVar1 - 0x40) * 8 + -0x3c9c;
        uVar5 = CONCAT11(1,in_DL);
    }
    if (uVar4 < 0x61) {
        puVar7 = (uVar4 - 0x20) * 0xe + -0x3a9c;
    }
    else {
        puVar7 = (uVar4 - 0x40) * 8 + -0x3c9c;
        uVar5 = uVar5 | 0x200;
    }
    uVar6 = CONCAT11(uVar5 >> 8,0xe);
    do {
        uVar4 = uVar6;
        if ((uVar6 & 0x100) == 0) {
            cVar2 = *pcVar8;
            pcVar8 = pcVar8 + 1;
        }
        else {
            cVar2 = '\0';
            if (uVar4 < 9) {
                cVar2 = *pcVar8;
                pcVar8 = pcVar8 + 1;
            }
        }
        if ((uVar6 & 0x200) == 0) {
            uVar1 = *puVar7;
            puVar7 = puVar7 + 1;
        }
        else {
            uVar1 = 0;
            if (uVar4 < 9) {
                uVar1 = *puVar7;
                puVar7 = puVar7 + 1;
            }
        }
        uVar6 = CONCAT11(uVar6 >> 8,uVar4 - 1);
    } while (uVar4 - 1 != '\0');
    puVar7 = 0xcf0a;
    iVar3 = 0xe;
    do {
        *puVar7 = cVar2 << (uVar5 & 0x1f) | uVar1 >> (-(uVar5 - 8) & 0x1f);
        puVar7 = puVar7 + -1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return CONCAT22(in_CX,in_stack_00000000);
}


ushort fcn.0000669c(void)

{
    ushort *puVar1;
    ushort in_AX;
    int16_t iVar2;
    ushort *puVar3;
    ushort unaff_ES;
    
    puVar3 = NULL;
    for (iVar2 = 14000; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0;
    }
    return in_AX;
}


ushort fcn.00005036(ushort param_1)

{
    code *pcVar1;
    uchar in_ZF;
    
    while( true ) {
        pcVar1 = swi(0x16);
        (*pcVar1)();
        if (in_ZF) break;
        pcVar1 = swi(0x16);
        (*pcVar1)();
    }
    return param_1;
}


ushort fcn.00006105(void)

{
    uint8_t uVar1;
    code *pcVar2;
    ushort in_AX;
    uint8_t *puVar3;
    uint8_t *puVar4;
    ushort unaff_DS;
    
    puVar4 = 0x80;
    if (*0x80 != '\0') {
        while( true ) {
            puVar3 = puVar4;
            puVar4 = puVar3 + 1;
            uVar1 = *puVar4;
            if (uVar1 == 0xd) break;
            if ((uVar1 != 0x20) && (uVar1 != 9)) {
                if ((uVar1 != 0x2f) && (uVar1 != 0x2d)) {
code_r0x00006144:
                    pcVar2 = swi(0x21);
                    (*pcVar2)();
                    pcVar2 = swi(0x21);
                    (*pcVar2)();
                    return in_AX;
                }
                puVar4 = puVar3 + 2;
                puVar3 = 0x121;
                while( true ) {
                    if (*puVar3 == 0xff) goto code_r0x00006144;
                    if ((*puVar4 | 0x20) == *puVar3) break;
                    puVar3 = puVar3 + 3;
                }
                (**(puVar3 + 1))();
            }
        }
    }
    return in_AX;
}


uint fcn.00003437(void)

{
    uchar *puVar1;
    uchar *puVar2;
    ushort in_AX;
    int16_t iVar3;
    int16_t iVar4;
    ushort in_DX;
    uchar *puVar5;
    uchar *puVar6;
    ushort unaff_DS;
    
    iVar3 = (in_DX - 1) * 0x10a;
    puVar5 = iVar3 + -0x7cec;
    puVar6 = 0x8100;
    for (iVar4 = 0x10a; iVar4 != 0; iVar4 = iVar4 + -1) {
        puVar2 = puVar6;
        puVar6 = puVar6 + 1;
        puVar1 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = *puVar1;
    }
    puVar5 = iVar3 + -24000;
    puVar6 = 0x820a;
    for (iVar3 = 0x10a; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar6;
        puVar6 = puVar6 + 1;
        puVar1 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = *puVar1;
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.0000521a(void)

{
    ushort uVar1;
    uchar *puVar2;
    uint8_t uVar3;
    ushort in_AX;
    int16_t iVar4;
    ushort in_DX;
    ushort unaff_DS;
    
    if ((*0xcf0e != '\0') && (*0xced1 == '\0')) {
        *0xd254 = 0;
        if (*0xcf0f == '\0') {
            if (*0xcf12 != '\0') {
                *0xcf12 = *0xcf12 + -1;
                if (*0xcf15 != 0) {
                    iVar4 = *0xcf15 + *0xcf13;
                    *0xcf13 = iVar4;
                    out(0x43,0xb6);
                    out(0x42,iVar4);
                    out(0x42,iVar4 >> 8);
                }
                goto code_r0x000052db;
            }
        }
        else {
            uVar1 = **0xcf10;
            *0xcf13 = uVar1;
            out(0x43,0xb6);
            out(0x42,uVar1);
            out(0x42,uVar1 >> 8);
            *0xcf10 = *0xcf10 + 2;
            *0xcf0f = 0;
            uVar3 = in(0x61);
            out(0x61,uVar3 | 3);
        }
        puVar2 = *0xcf10;
        *0xcf10 = *0xcf10 + 1;
        *0xcf12 = *puVar2;
        if (*0xcf12 == -1) {
            uVar3 = in(0x61);
            out(0x61,uVar3 & 0xfc);
            *0xcf0e = 0;
        }
        else {
            *0xcf15 = *(puVar2 + 1);
            *0xcf10 = *0xcf10 + 2;
            *0xcf12 = *0xcf12 + -1;
            if (*0xcf15 != 0) {
                iVar4 = *0xcf15 + *0xcf13;
                *0xcf13 = iVar4;
                out(0x43,0xb6);
                out(0x42,iVar4);
                out(0x42,iVar4 >> 8);
            }
        }
    }
code_r0x000052db:
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000058a4(void)

{
    ushort in_AX;
    uint16_t uVar1;
    ushort in_DX;
    uchar *puVar2;
    ushort *puVar3;
    uint8_t *puVar4;
    uchar *puVar5;
    uchar *puVar6;
    ushort unaff_ES;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    puVar3 = 0xc35e;
    if (*0xd239 != '\0') {
        puVar3 = 0xc360;
    }
    puVar2 = *puVar3;
    if (puVar2 != 0xffff) {
        puVar4 = 0xc362;
        if (*0xd239 != '\0') {
            puVar4 = 0xc363;
        }
        uVar1 = *puVar4;
        puVar5 = 0xe434;
        if (*0xd239 != '\0') {
            puVar5 = 0xe458;
        }
        do {
            *puVar2 = *puVar5;
            puVar2[0x50] = puVar5[1];
            puVar6 = puVar5 + 3;
            puVar2[0xa0] = puVar5[2];
            puVar5 = puVar5 + 4;
            puVar2[0xf0] = *puVar6;
            puVar2 = puVar2 + 1;
            uVar1 = uVar1 - 1;
        } while (uVar1 != 0);
    }
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000029fa(void)

{
    ushort in_AX;
    ushort in_DX;
    int8_t var_4h;
    
    return CONCAT22(in_DX,in_AX);
}


void fcn.00004f53(void)

{
    int16_t iVar1;
    char *pcVar2;
    ushort *puVar3;
    ushort unaff_DS;
    
    pcVar2 = 0xd42c;
    puVar3 = 0x113;
    iVar1 = 4;
    do {
        if (*pcVar2 == '\x01') {
            (**puVar3)();
            return;
        }
        pcVar2 = pcVar2 + 1;
        puVar3 = puVar3 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


ushort fcn.000066ad(void)

{
    ushort *puVar1;
    ushort in_AX;
    int16_t iVar2;
    ushort *puVar3;
    ushort unaff_ES;
    
    puVar3 = 0x6e00;
    for (iVar2 = 14000; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0;
    }
    return in_AX;
}


ushort fcn.00002dbc(void)

{
    int16_t iVar1;
    ushort in_AX;
    uint16_t uVar2;
    ushort unaff_DS;
    
    iVar1 = *0xd247;
    if (*0xd42b == '\x01') {
        if (*0xd42a != '\x01') {
            uVar2 = *0xd247 + 3;
            if (*0xd24a < uVar2) {
                uVar2 = *0xd24a;
            }
            *0xd247 = uVar2;
        }
    }
    else if (*0xd42a == '\x01') {
        uVar2 = *0xd247 - 3;
        if (uVar2 < 0x10) {
            uVar2 = 0xf;
        }
        *0xd247 = uVar2;
    }
    *0xd24d = -(iVar1 - *0xd247);
    return in_AX;
}


ushort fcn.0000406d(void)

{
    ushort uVar1;
    ushort in_stack_00000000;
    
    do {
        do {
            uVar1 = fcn.00005a1f();
        } while (uVar1 + 1U < 0x13);
    } while ((uVar1 >> 8) + 1U < 0xe);
    return in_stack_00000000;
}


ushort fcn.00002cd3(void)

{
    uint8_t in_DL;
    int16_t iVar1;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    if ((*0xd257 != '\0') && (iVar1 = in_DL * 0x10, 0x148 < *(iVar1 + -0x3e91))) {
        *(iVar1 + -0x3e91) = 0x148;
        *(iVar1 + -0x3e8d) = -*(iVar1 + -0x3e8d);
        *0xd257 = 0;
        fcn.000052df();
    }
    return in_stack_00000000;
}


uint fcn.0000237e(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    ushort *puVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    puVar2 = 0xc2fa;
    if (*0xd239 != '\0') {
        puVar2 = 0xc304;
    }
    iVar3 = -0x3d33;
    iVar1 = 5;
    do {
        *puVar2 = 0xffff;
        if (*(iVar3 + 8) != '\0') {
            fcn.00005961();
        }
        puVar2 = puVar2 + 1;
        iVar3 = iVar3 + 9;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


void fcn.000049c9(void)

{
    int16_t iVar1;
    uint16_t uVar2;
    uchar in_CF;
    int8_t var_6h;
    
    uVar2 = 0xd2a5;
    iVar1 = 10;
    do {
        fcn.00004866();
        if (in_CF) {
            return;
        }
        in_CF = uVar2 < 7;
        uVar2 = uVar2 - 7;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


uint fcn.00006300(void)

{
    ushort in_CX;
    int16_t iVar1;
    char extraout_DH;
    uint8_t *puVar2;
    uint8_t *puVar3;
    uint8_t *puVar4;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    puVar2 = 0x51de;
    do {
        puVar4 = 0x80ec;
        iVar1 = 0x13;
        do {
            puVar3 = puVar2;
            *puVar4 = ~*puVar3;
            puVar4 = puVar4 + 1;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        *puVar4 = 0;
        puVar2 = puVar3 + 2;
        fcn.00003da6();
    } while (extraout_DH != '\x01');
    return CONCAT22(in_CX,in_stack_00000000);
}


ushort fcn.00003368(void)

{
    code *pcVar1;
    int16_t iVar2;
    uchar *puVar3;
    uchar *puVar4;
    ushort unaff_DS;
    uchar in_CF;
    ushort in_stack_00000012;
    
    puVar3 = 0x798;
    puVar4 = 0x800e;
    iVar2 = 0xe;
    do {
        *puVar4 = *puVar3;
        puVar3 = puVar3 + 1;
        puVar4 = puVar4 + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    pcVar1 = swi(0x21);
    (*pcVar1)();
    if (in_CF) {
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        return 3;
    }
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    return in_stack_00000012;
}


uint fcn.000055f9(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t iVar2;
    uchar *puVar3;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    iVar2 = -0x3e93;
    puVar3 = 0xc2ad;
    if (*0xd239 != '\0') {
        puVar3 = 0xc2bd;
    }
    iVar1 = 0x10;
    do {
        if ((*(iVar2 + 8) & 1) == 0) {
            *puVar3 = 0xff;
        }
        else {
            fcn.000054b5();
        }
        puVar3 = puVar3 + 1;
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00002b0b(void)

{
    uint16_t uVar1;
    ushort in_CX;
    int16_t iVar2;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    fcn.000052df();
    iVar2 = *0xd37c * 0x10;
    if ((*(iVar2 + -0x3e8b) & 2) == 0) {
        *(iVar2 + -0x3e8f) = -*(iVar2 + -0x3e8f);
        uVar1 = *(iVar2 + -0x3e93) & 0xfff8;
        if (-1 < *(iVar2 + -0x3e8f)) {
            uVar1 = uVar1 + 8;
        }
        *(iVar2 + -0x3e93) = uVar1;
    }
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00004f7f(void)

{
    code *pcVar1;
    uint8_t uVar2;
    int16_t in_AX;
    ushort uVar3;
    ushort in_CX;
    uint8_t *puVar4;
    char *unaff_DI;
    ushort unaff_DS;
    ushort in_stack_00000000;
    int16_t var_4h;
    int16_t var_2h;
    
    if (*unaff_DI != '\0') {
        unaff_DI[1] = '\0';
        puVar4 = unaff_DI + 2;
        while( true ) {
            while( true ) {
                fcn.0000470b();
                uVar3 = fcn.000046bf();
                pcVar1 = swi(0x16);
                uVar2 = (*pcVar1)();
                if (uVar2 != 8) break;
                if (unaff_DI[1] != '\0') {
                    if (unaff_DI[1] == *unaff_DI) {
                        unaff_DI[1] = unaff_DI[1] + -1;
                        fcn.00004516(uVar3);
                    }
                    else {
                        in_AX = in_AX + -1;
                        unaff_DI[1] = unaff_DI[1] + -1;
                        puVar4 = puVar4 + -1;
                        fcn.00004516(uVar3,in_AX);
                    }
                }
            }
            if (uVar2 == 0xd) break;
            if (((0x1f < uVar2) && (uVar2 < 0x60)) || ((0x60 < uVar2 && (uVar2 < 0x7b)))) {
                *puVar4 = uVar2;
                fcn.00004516(uVar3);
                fcn.00004516();
                if (unaff_DI[1] + '\x01' == *unaff_DI) {
                    unaff_DI[1] = unaff_DI[1] + '\x01';
                }
                else if (unaff_DI[1] != *unaff_DI) {
                    puVar4 = puVar4 + 1;
                    unaff_DI[1] = unaff_DI[1] + '\x01';
                    in_AX = in_AX + 1;
                }
            }
        }
        fcn.0000470b();
    }
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00002493(void)

{
    ushort in_AX;
    ushort in_DX;
    int16_t *unaff_DI;
    ushort unaff_DS;
    ushort uVar1;
    
    if ((((0x13d < unaff_DI[1]) && (unaff_DI[1] < 0x14e)) && (*0xd247 < *unaff_DI * 8 + 0x10U)) &&
       ((*unaff_DI * 8 < (*0xd249 << 3) + *0xd247 && (*(unaff_DI + 4) = 0, *0xced0 == '\0')))) {
        uVar1 = 0x24e6;
        (**((unaff_DI[2] << 1) + 0xc4c))();
        fcn.000052df(uVar1);
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005d8c(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t iVar2;
    ushort *puVar3;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    iVar2 = -0x3cf2;
    puVar3 = 0xc34e;
    if (*0xd239 != '\0') {
        puVar3 = 0xc356;
    }
    iVar1 = 4;
    do {
        if ((*(iVar2 + 4) & 1) == 0) {
            *puVar3 = 0xffff;
        }
        else {
            fcn.00005cc8();
        }
        puVar3 = puVar3 + 1;
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.000032a2(ushort param_1,ushort param_2,ushort param_3)

{
    code *pcVar1;
    ushort uVar2;
    int16_t iVar3;
    uchar *puVar4;
    uchar *puVar5;
    ushort unaff_DS;
    uchar in_CF;
    
    puVar4 = 0x77f;
    puVar5 = 0x800e;
    iVar3 = 0xd;
    do {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    pcVar1 = swi(0x21);
    uVar2 = (*pcVar1)();
    if (in_CF) {
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        return 3;
    }
    *0x8000 = uVar2;
    *0xd23f = 1;
    do {
        out(0x3c4,2);
        out(0x3c5,*0xd23f);
        pcVar1 = swi(0x21);
        (*pcVar1)();
        *0xd23f = *0xd23f << 1;
    } while (*0xd23f < 9);
    *0xd23f = 1;
    do {
        out(0x3c4,2);
        out(0x3c5,*0xd23f);
        pcVar1 = swi(0x21);
        (*pcVar1)();
        *0xd23f = *0xd23f << 1;
    } while (*0xd23f < 9);
    *0xd23f = 1;
    do {
        out(0x3c4,2);
        out(0x3c5,*0xd23f);
        pcVar1 = swi(0x21);
        (*pcVar1)();
        *0xd23f = *0xd23f << 1;
    } while (*0xd23f < 9);
    out(0x3c4,2);
    out(0x3c5,0xf);
    pcVar1 = swi(0x21);
    (*pcVar1)();
    return param_3;
}


uint fcn.000031b4(ushort param_1,ushort param_2)

{
    ushort in_AX;
    uint8_t in_DL;
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    *0xd37d = in_DL;
    iVar2 = in_DL * 0x10;
    iVar3 = *(iVar2 + -0x3e91) + *(iVar2 + -0x3e8d);
    if (*0xd23c < *(iVar2 + -0x3e8a)) {
        iVar1 = 1;
        if (*(iVar2 + -0x3e8d) < 0) {
            iVar1 = -1;
        }
        iVar3 = iVar3 + iVar1;
    }
    *(iVar2 + -0x3e93) = *(iVar2 + -0x3e93) + *(iVar2 + -0x3e8f);
    *(iVar2 + -0x3e91) = iVar3;
    fcn.00003109();
    fcn.00002ed7();
    fcn.00002ed7();
    return CONCAT22(in_AX,param_2);
}


uint fcn.00003ec7(void)

{
    char cVar1;
    ushort in_AX;
    ushort in_DX;
    char *unaff_DI;
    ushort unaff_DS;
    
    *0xd246 = 1;
    while( true ) {
        cVar1 = *unaff_DI;
        unaff_DI = unaff_DI + 1;
        if (cVar1 == -1) break;
        if (*unaff_DI == -1) {
            *0xd246 = 0;
        }
        if (cVar1 != '\0') {
            *0xd246 = 0;
        }
        fcn.00004516();
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00004372(int16_t param_1,int16_t param_2,ushort param_3)

{
    int16_t var_4h;
    int16_t var_6h;
    int16_t var_8h;
    ushort uVar1;
    int16_t var_2h;
    
    uVar1 = 0;
    fcn.0000408e();
    fcn.0000419c();
    fcn.0000419c();
    fcn.00004274();
    fcn.00004274(uVar1);
    fcn.0000419c();
    fcn.0000419c();
    fcn.00004274();
    fcn.00004274();
    return CONCAT22(var_4h,param_3);
}


void fcn.000021e0(void)

{
    ushort in_AX;
    ushort *puVar1;
    ushort unaff_DS;
    
    puVar1 = 0xc30e;
    do {
        if (puVar1[2] == 0) {
            *puVar1 = in_AX;
            puVar1[1] = 0x140;
            puVar1[2] = 1;
            fcn.000052df();
            return;
        }
        puVar1 = puVar1 + 8;
    } while (puVar1 < 0xc34e);
    return;
}


uint fcn.00005808(void)

{
    ushort in_AX;
    ushort in_stack_00000000;
    
    fcn.0000568c();
    return CONCAT22(in_AX,in_stack_00000000);
}


uint fcn.00002b49(void)

{
    int16_t iVar1;
    ushort in_CX;
    int16_t iVar2;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    fcn.000052df();
    iVar2 = *0xd37c * 0x10;
    if ((*(iVar2 + -0x3e8b) & 2) == 0) {
        *(iVar2 + -0x3e8d) = -*(iVar2 + -0x3e8d);
        iVar1 = (*(iVar2 + -0x3e91) / 6 & 0xff) * 6;
        if (-1 < *(iVar2 + -0x3e8d)) {
            iVar1 = iVar1 + 6;
        }
        *(iVar2 + -0x3e91) = iVar1;
    }
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00003b29(void)

{
    code *pcVar1;
    uint8_t uVar2;
    int16_t in_CX;
    int16_t iVar3;
    char cVar4;
    ushort in_stack_00000000;
    
    iVar3 = in_CX;
    fcn.00005036();
    do {
        do {
            uVar2 = in(0x3da);
        } while ((uVar2 & 8) != 0);
        do {
            uVar2 = in(0x3da);
            cVar4 = (uVar2 & 8) == 0;
        } while (cVar4);
        pcVar1 = swi(0x16);
        (*pcVar1)();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0 && cVar4 != '\0');
    if (iVar3 != 0) {
        pcVar1 = swi(0x16);
        (*pcVar1)();
    }
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.0000483c(void)

{
    char *pcVar1;
    ushort in_AX;
    ushort in_DX;
    char *pcVar2;
    ushort unaff_DS;
    
    pcVar2 = 0x550;
    while (pcVar1 = pcVar2, pcVar2 = pcVar2 + 1, *pcVar1 != -1) {
        fcn.00004757();
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000033b7(void)

{
    ushort in_CX;
    int16_t iVar1;
    uint8_t extraout_DL;
    int16_t iVar2;
    char *pcVar3;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    fcn.00003437();
    *0xd3a8 = extraout_DL / 10;
    *0xd3a9 = extraout_DL % 10;
    pcVar3 = 0x8100;
    iVar1 = 0x10a;
    iVar2 = 0;
    do {
        if ((*pcVar3 != '\0') && (*pcVar3 != '\x1c')) {
            iVar2 = iVar2 + 1;
        }
        pcVar3 = pcVar3 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    *0xd252 = iVar2;
    return CONCAT22(in_CX,in_stack_00000000);
}


ushort fcn.00004ed0(void)

{
    char *pcVar1;
    char cVar2;
    ushort in_AX;
    int16_t iVar3;
    char *pcVar4;
    char *pcVar5;
    uchar *puVar6;
    uchar *puVar7;
    ushort unaff_ES;
    ushort unaff_DS;
    
    pcVar4 = 0x1b9f;
    while (*pcVar4 != -1) {
        fcn.00004f0e();
        pcVar5 = pcVar4;
        do {
            pcVar4 = pcVar5 + 1;
            pcVar1 = pcVar5;
            pcVar5 = pcVar4;
        } while (*pcVar1 != '\0');
    }
    puVar6 = 0x157;
    cVar2 = '\x13';
    do {
        iVar3 = 0x3a;
        do {
            puVar7 = puVar6;
            *puVar7 = 0x1e;
            iVar3 = iVar3 + -1;
            puVar6 = puVar7 + 2;
        } while (iVar3 != 0);
        puVar6 = puVar7 + 0x2e;
        cVar2 = cVar2 + -1;
    } while (cVar2 != '\0');
    return in_AX;
}


uint fcn.0000564a(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t iVar2;
    ushort unaff_DS;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,0xf);
    iVar1 = 0x10;
    iVar2 = -0x3e93;
    do {
        if ((*(iVar2 + 8) & 1) != 0) {
            fcn.000052ff();
        }
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,1);
    out(0x3cf,0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005be5(void)

{
    ushort in_CX;
    uint8_t uVar1;
    uint8_t extraout_DH;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    uVar1 = 1;
    if (*0xd239 != '\0') {
        uVar1 = 2;
    }
    if (((uVar1 & *0xd258) != 0) != *0xd257) {
        fcn.0000419c();
        uVar1 = *0xd257;
        if (*0xd239 != '\0') {
            uVar1 = uVar1 << 1;
        }
        *0xd258 = *0xd258 & ~extraout_DH | uVar1;
    }
    return CONCAT22(in_CX,in_stack_00000000);
}


ushort fcn.0000653b(void)

{
    int16_t iVar1;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    iVar1 = fcn.000065e9();
    *0xd237 = -(iVar1 + -0x6e00);
    *0xd239 = *0xd239 + -1;
    *0xd239 = -*0xd239;
    return in_stack_00000000;
}


uint fcn.000022fe(void)

{
    int16_t in_AX;
    int16_t in_BX;
    int16_t iVar1;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    iVar1 = in_AX * 0x13 + in_BX;
    if (-1 < *(iVar1 + -0x7df6)) {
        *(iVar1 + -0x7df6) = 0xff;
        fcn.000022be();
    }
    return CONCAT22(in_BX,in_stack_00000000);
}


uint fcn.00003b4c(void)

{
    code *pcVar1;
    uint8_t uVar2;
    int16_t in_CX;
    int16_t iVar3;
    char cVar4;
    ushort in_stack_00000000;
    
    iVar3 = in_CX;
    fcn.00005036();
    do {
        do {
            uVar2 = in(0x3da);
        } while ((uVar2 & 8) != 0);
        do {
            uVar2 = in(0x3da);
            cVar4 = (uVar2 & 8) == 0;
        } while (cVar4);
        pcVar1 = swi(0x16);
        (*pcVar1)();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0 && cVar4 != '\0');
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00006377(void)

{
    uchar *puVar1;
    char cVar2;
    ushort in_CX;
    int16_t iVar3;
    uchar *puVar4;
    int16_t unaff_SI;
    uchar *puVar5;
    uchar *puVar6;
    ushort unaff_ES;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    out(0x3c4,2);
    out(0x3c5,10);
    puVar5 = *0xd237 + 0x637e;
    iVar3 = 0x14;
    do {
        unaff_SI = unaff_SI + 1;
        if (unaff_SI == 0x523) {
            unaff_SI = 0x3a5;
        }
        fcn.000063cd();
        puVar4 = 0xcefd;
        cVar2 = '\x0e';
        do {
            puVar6 = puVar5;
            puVar1 = puVar4;
            puVar4 = puVar4 + 1;
            *puVar6 = *puVar1;
            cVar2 = cVar2 + -1;
            puVar5 = puVar6 + 0x50;
        } while (cVar2 != '\0');
        puVar5 = puVar6 + -0x40f;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    out(0x3c4,2);
    out(0x3c5,0xf);
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00006555(void)

{
    code *pcVar1;
    ushort in_AX;
    ushort in_DX;
    int16_t extraout_DX;
    uchar in_ZF;
    ushort uVar2;
    
    do {
        uVar2 = 0x655f;
        fcn.00006609();
        pcVar1 = swi(0x16);
        (*pcVar1)();
        if (!in_ZF) {
            pcVar1 = swi(0x16);
            (*pcVar1)();
            fcn.00006609(uVar2);
            break;
        }
        in_ZF = extraout_DX == 400;
    } while (-1 < extraout_DX + -400);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005de1(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t *piVar2;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    piVar2 = 0xc34e;
    if (*0xd239 != '\0') {
        piVar2 = 0xc356;
    }
    iVar1 = 4;
    do {
        if (*piVar2 != -1) {
            fcn.00005d38();
        }
        piVar2 = piVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


ushort fcn.00005fc3(void)

{
    ushort in_stack_00000000;
    
    fcn.00003d00();
    return in_stack_00000000;
}


uint fcn.000033ea(ushort param_1,ushort param_2,ushort param_3,ushort param_4)

{
    code *pcVar1;
    int16_t iVar2;
    int16_t iVar3;
    uchar in_CF;
    
    pcVar1 = swi(0x21);
    (*pcVar1)();
    if (!in_CF) {
        iVar3 = 0x1f2c;
        pcVar1 = swi(0x21);
        iVar2 = (*pcVar1)();
        if (iVar2 == iVar3) {
            pcVar1 = swi(0x21);
            iVar2 = (*pcVar1)();
            if (iVar2 == iVar3) {
                pcVar1 = swi(0x21);
                (*pcVar1)();
                fcn.000035a2();
                goto code_r0x00003432;
            }
        }
    }
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
code_r0x00003432:
    return CONCAT22(param_1,param_4);
}


uint fcn.0000240b(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t iVar2;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    iVar2 = -0x3d33;
    iVar1 = 5;
    do {
        if (*(iVar2 + 8) != '\0') {
            fcn.00005919();
        }
        iVar2 = iVar2 + 9;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005b26(void)

{
    uint16_t uVar1;
    uint8_t uVar2;
    ushort in_AX;
    int16_t iVar3;
    int16_t in_DX;
    int16_t iVar4;
    int16_t iVar5;
    ushort unaff_DS;
    int16_t iStack_8;
    
    iStack_8 = in_DX;
    if (*0xd235 != '\0') {
        *0xd254 = 0;
        iVar4 = -0x30e9;
        *0xd236 = 0x40;
        if (*0xd239 != '\0') {
            *0xd236 = *0xd236 << 1;
        }
        iVar3 = *0xd235 << 8;
        do {
            iVar5 = iStack_8;
            if (*(iVar4 + 2) != '\0') {
                uVar1 = (iVar3 >> 8) - 1;
                iVar3 = uVar1 << 8;
                if ((*0xd236 & *(iVar4 + 2)) == 0) {
                    iVar3 = uVar1 << 8;
                    fcn.00005a1f();
                    *(iVar4 + 2) = *(iVar4 + 2) | *0xd236;
                    *(iVar4 + 2) = *(iVar4 + 2) + -1;
                }
                else if ((*(iVar4 + 2) & 0x3f) == 0) {
                    fcn.000029fa(iVar4);
                    iStack_8 = 0x5b80;
                    fcn.00005a1f();
                    *0xd236 = ~*0xd236;
                    uVar2 = *(iVar5 + 2) & *0xd236;
                    *(iVar5 + 2) = uVar2;
                    *0xd236 = ~*0xd236;
                    iVar4 = iVar5;
                    if (uVar2 == 0) {
                        *0xd235 = *0xd235 + -1;
                    }
                }
                else {
                    *(iVar4 + 2) = *(iVar4 + 2) + -1;
                }
            }
            iVar4 = iVar4 + 3;
        } while (iVar3 >> 8 != '\0');
    }
    return CONCAT22(iStack_8,in_AX);
}


uint fcn.00002b8c(void)

{
    uint16_t uVar1;
    ushort in_CX;
    uint16_t in_DX;
    uint16_t *puVar2;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    puVar2 = (in_DX & 0xff) * 0x10 + -0x3e93;
    uVar1 = *puVar2;
    if (uVar1 < 0x10) {
        fcn.000052df();
        uVar1 = 0x10;
        if ((puVar2[4] & 8) == 0) {
            puVar2[2] = -puVar2[2];
        }
    }
    if (0x1c8 < uVar1) {
        fcn.000052df();
        uVar1 = 0x1c8;
        if ((puVar2[4] & 8) == 0) {
            puVar2[2] = -puVar2[2];
        }
    }
    *puVar2 = uVar1;
    uVar1 = puVar2[1];
    if (uVar1 < 0xc) {
        fcn.000052df();
        uVar1 = 0xc;
        puVar2[3] = -puVar2[3];
    }
    puVar2[1] = uVar1;
    return CONCAT22(in_CX,in_stack_00000000);
}


ushort fcn.00005fd6(void)

{
    ushort in_stack_00000000;
    
    fcn.00003d00();
    return in_stack_00000000;
}


uint fcn.000042f2(int16_t param_1,int16_t param_2,ushort param_3)

{
    int16_t in_AX;
    int16_t in_CX;
    int16_t in_DX;
    int16_t in_BX;
    int16_t var_4h;
    int16_t var_6h;
    int16_t var_8h;
    int16_t var_2h;
    
    if (in_BX + 2U <= in_DX - 2U) {
        fcn.0000408e(in_AX + 2,in_BX + 2U,in_CX + -2,in_DX - 2U,7);
    }
    fcn.0000419c();
    fcn.0000419c();
    fcn.00004274();
    fcn.00004274();
    fcn.00004274();
    fcn.00004274();
    fcn.0000419c();
    fcn.0000419c();
    return CONCAT22(var_4h,param_3);
}


ushort fcn.00005fe9(void)

{
    ushort in_stack_00000000;
    
    fcn.00003d00();
    return in_stack_00000000;
}


uint fcn.00002e77(ushort param_1,ushort param_2,ushort param_3,ushort param_4,ushort param_5,uchar param_6,
                 int16_t param_7)

{
    ushort in_CX;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    param_7 = param_7 * 0x10;
    *(param_7 + -0x3e93) = param_1;
    *(param_7 + -0x3e91) = param_2;
    *(param_7 + -0x3e8f) = param_3;
    *(param_7 + -0x3e8d) = param_4;
    *(param_7 + -0x3e8a) = param_5;
    *(param_7 + -0x3e8b) = param_6;
    out(0x3ce,5);
    out(0x3cf,0x11);
    fcn.000054b5();
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.0000658d(void)

{
    code *pcVar1;
    ushort in_AX;
    int16_t iVar2;
    ushort in_DX;
    int16_t iVar3;
    int16_t extraout_DX;
    int16_t extraout_DX_00;
    int16_t iVar4;
    uchar uVar5;
    ushort uVar6;
    
    iVar4 = 400;
    iVar3 = 0;
    do {
        iVar2 = 7;
        do {
            uVar5 = iVar3 + iVar4 == 0;
            uVar6 = 0x65a0;
            fcn.00006609();
            pcVar1 = swi(0x16);
            (*pcVar1)();
            if (!uVar5) {
                pcVar1 = swi(0x16);
                (*pcVar1)();
                goto code_r0x000065df;
            }
            iVar2 = iVar2 + -1;
            iVar3 = extraout_DX;
        } while (iVar2 != 0);
        iVar4 = iVar4 + -0x50;
    } while (-0x191 < iVar4);
    iVar4 = 0xf0;
    iVar3 = 0;
    do {
        iVar2 = 7;
        do {
            uVar5 = iVar3 + iVar4 == 0;
            uVar6 = 0x65c6;
            fcn.00006609();
            pcVar1 = swi(0x16);
            (*pcVar1)();
            if (!uVar5) {
                pcVar1 = swi(0x16);
                (*pcVar1)();
code_r0x000065df:
                fcn.00006609(uVar6);
                goto code_r0x000065e4;
            }
            iVar2 = iVar2 + -1;
            iVar3 = extraout_DX_00;
        } while (iVar2 != 0);
        iVar4 = iVar4 + -0x50;
    } while (-0xf1 < iVar4);
code_r0x000065e4:
    return CONCAT22(in_DX,in_AX);
}


uint fcn.000055b9(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    char *pcVar2;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    pcVar2 = 0xc2ad;
    if (*0xd239 != '\0') {
        pcVar2 = 0xc2bd;
    }
    iVar1 = 0x10;
    do {
        if (*pcVar2 != -1) {
            fcn.00005548();
        }
        pcVar2 = pcVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00005e23(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t iVar2;
    ushort unaff_DS;
    
    out(0x3ce,1);
    out(0x3cf,0xf);
    out(0x3ce,0);
    out(0x3cf,0xe);
    iVar1 = 4;
    iVar2 = -0x3cf2;
    do {
        if ((*(iVar2 + 4) & 1) != 0) {
            fcn.00005c3a();
        }
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,1);
    out(0x3cf,0);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00004b7b(void)

{
    ushort in_AX;
    ushort in_DX;
    char *pcVar1;
    ushort unaff_DS;
    
    *0xcecc = 4;
    for (pcVar1 = 0x700; *pcVar1 != -1; pcVar1 = pcVar1 + 1) {
        if (*pcVar1 != '\v') {
            fcn.00004619();
        }
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00003158(ushort param_1)

{
    uint8_t in_DL;
    int16_t iVar1;
    ushort in_BX;
    int16_t iVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    *0xd37d = in_DL;
    iVar2 = in_DL * 0x10;
    iVar3 = *(iVar2 + -0x3e91) + *(iVar2 + -0x3e8d);
    if (*0xd23c < *(iVar2 + -0x3e8a)) {
        iVar1 = 1;
        if (*(iVar2 + -0x3e8d) < 0) {
            iVar1 = -1;
        }
        iVar3 = iVar3 + iVar1;
    }
    *(iVar2 + -0x3e93) = *(iVar2 + -0x3e93) + *(iVar2 + -0x3e8f);
    *(iVar2 + -0x3e91) = iVar3;
    fcn.000030ba();
    fcn.00002ed7();
    return CONCAT22(in_BX,param_1);
}


uint fcn.00002451(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    int16_t *piVar2;
    ushort unaff_DS;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    piVar2 = 0xc2fa;
    if (*0xd239 != '\0') {
        piVar2 = 0xc304;
    }
    iVar1 = 5;
    do {
        if (*piVar2 != -1) {
            fcn.000059cb();
        }
        piVar2 = piVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00004e5b(void)

{
    ushort in_CX;
    int16_t iVar1;
    ushort in_stack_00000000;
    
    out(0x3ce,5);
    out(0x3cf,0x11);
    iVar1 = 6;
    do {
        fcn.00005919();
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce,5);
    out(0x3cf,0x10);
    return CONCAT22(in_CX,in_stack_00000000);
}


ushort int.0000352f(void)

{
    code *pcVar1;
    ushort uVar2;
    int16_t iVar3;
    uchar *puVar4;
    uchar *puVar5;
    ushort unaff_DS;
    uchar in_CF;
    ushort in_stack_0000000a;
    
    puVar4 = 0x7a3;
    puVar5 = 0x800e;
    iVar3 = 0xe;
    do {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    pcVar1 = swi(0x21);
    uVar2 = (*pcVar1)();
    if (in_CF) {
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        fcn.0000651b();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        return 3;
    }
    *0x800c = uVar2;
    pcVar1 = swi(0x21);
    (*pcVar1)();
    pcVar1 = swi(0x21);
    (*pcVar1)();
    puVar5 = 0xd266;
    puVar4 = 0x5fc;
    iVar3 = 0x46;
    do {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    puVar5 = 0xd2ac;
    iVar3 = 0xa0;
    do {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    puVar5 = 0xd34c;
    iVar3 = 0x1e;
    do {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return in_stack_0000000a;
}


//WARNING: Removing unreachable block (ram,0x00002956)

uint16_t fcn.0000290d(void)

{
    uint16_t in_AX;
    uint16_t uVar1;
    uint16_t uVar2;
    char cVar3;
    uchar uVar4;
    int16_t in_CX;
    uint16_t in_BX;
    ushort unaff_DS;
    
    *0xd38a = 0;
    *0xd38b = 0;
    *0xd38c = 0;
    *0xd38d = 0;
    *0xd396 = (in_BX / 0xc & 0xff) - 1;
    uVar1 = in_AX - 0x10 >> 5;
    *0xd394 = uVar1;
    if (((uVar1 < 0xe) && (*0xd396 < 0x13)) && (-1 < *0xd396)) {
        uVar1 = in_AX;
        fcn.000029fa();
        uVar4 = uVar1;
        *0xd38a = uVar4;
        uVar1 = in_AX % 0xc;
        uVar2 = in_CX - 0x10U & 0x1f;
        if (0x18 < uVar2) {
            uVar2 = 0x100;
        }
        if (6 < uVar1) {
            uVar1 = 0x100;
        }
        cVar3 = uVar2 >> 8;
        *0xd38e = cVar3;
        *0xd38f = uVar1 >> 8;
        if ((cVar3 == '\x01') && (*0xd394 != 0xd)) {
            fcn.000029fa();
            *0xd38b = uVar4;
        }
        if ((*0xd38f == '\x01') && (*0xd396 != 0x12)) {
            fcn.000029fa();
            *0xd38c = uVar4;
        }
        if ((((*0xd38e == '\x01') && (*0xd38f == '\x01')) && (*0xd394 != 0xd)) && (*0xd396 != 0x12)) {
            fcn.000029fa();
            *0xd38d = uVar4;
        }
    }
    return in_AX;
}


ushort fcn.00005134(ushort param_1)

{
    char cVar1;
    int16_t iVar2;
    char *pcVar3;
    int16_t *piVar4;
    char *pcVar5;
    int16_t *piVar6;
    uchar *puVar7;
    ushort unaff_DS;
    
    fcn.000050b6();
    *0xced1 = 0;
    *0xced2 = 0;
    pcVar5 = 0x804e;
    for (pcVar3 = 0x78c; cVar1 = *pcVar3, *pcVar5 = cVar1, cVar1 != '$'; pcVar3 = pcVar3 + 1) {
        pcVar5 = pcVar5 + 1;
    }
    *0xd23c = 0;
    *0xd3a1 = 0xff;
    *0xd3aa = 0xff;
    *0xd3ad = 0xff;
    *0xd399 = 0;
    *0xcf0e = 0;
    *0xd398 = 1;
    *0xd23a = 4;
    *0xd23b = 1;
    *0xd23d = 0x600;
    *0xd239 = 1;
    *0xd237 = 0x6e00;
    fcn.000037c5();
    *0xcece = 0x775;
    *0xc16c = 0xff;
    piVar6 = 0xd41d;
    for (piVar4 = 0x105; *piVar4 != -1; piVar4 = piVar4 + 1) {
        *piVar6 = *piVar4;
        piVar6 = piVar6 + 1;
    }
    *0xd429 = 0xff;
    puVar7 = 0xd42a;
    iVar2 = 6;
    do {
        *puVar7 = 0;
        puVar7 = puVar7 + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *0xd41c = 0;
    return param_1;
}


uint fcn.00003e8a(void)

{
    uint8_t uVar1;
    ushort in_AX;
    ushort in_DX;
    uint8_t *unaff_DI;
    ushort unaff_DS;
    int16_t var_4h;
    int16_t var_2h;
    
    while( true ) {
        uVar1 = *unaff_DI;
        unaff_DI = unaff_DI + 1;
        if (uVar1 == 0) break;
        if (uVar1 < 0x80) {
            fcn.00004516();
        }
        else {
            *0xcecc = uVar1 + 0x80;
        }
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.00006027(ushort param_1)

{
    code *pcVar1;
    ushort in_AX;
    uchar in_CF;
    
    pcVar1 = swi(0x21);
    (*pcVar1)();
    if (!in_CF) {
        pcVar1 = swi(0x21);
        (*pcVar1)();
    }
    return CONCAT22(in_AX,param_1);
}


void fcn.00000100(void)

{
    fcn.00005134();
    fcn.00006105();
    fcn.000060f7();
    fcn.00003295();
    fcn.00003475();
    fcn.000033ea();
    fcn.0000650c();
    fcn.000032a2();
    fcn.00003368();
    fcn.00006367();
    do {
        fcn.00003c38();
        fcn.00003c75();
    } while( true );
}


//WARNING: Control flow encountered bad instruction data

void fcn.00001c43(void)

{
    unkbyte10 Var1;
    uchar in_DL;
    int16_t unaff_BP;
    int16_t unaff_SI;
    ushort unaff_SS;
    ushort unaff_DS;
    float10 in_ST0;
    unkbyte10 in_ST1;
    
    *(unaff_SI + -0x6169) = in_ST0;
    Var1 = to_bcd(in_ST1);
    *(unaff_BP + -0x2067) = Var1;
    LOCK();
    *(unaff_BP + unaff_SI * 2 + -0x40a5) = in_DL;
    UNLOCK();
    func_0x000e84df();
    //WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}


ushort fcn.00002255(ushort param_1,ushort param_2)

{
    int16_t in_AX;
    uint16_t in_BX;
    
    if (((in_AX - 0xfU >> 5 < 0xe) && ((in_BX / 0xc & 0xff) - 1 < 0x13)) && (fcn.000029fa(), in_AX != '\0')) {
        fcn.00002a73();
        fcn.000052df();
    }
    return param_2;
}


uint fcn.00002a73(int16_t param_1,int16_t param_2,ushort param_3)

{
    char *pcVar1;
    uint8_t uVar2;
    uint16_t in_CX;
    ushort unaff_DS;
    bool bVar3;
    ushort in_stack_00000000;
    int16_t var_6h;
    int16_t var_8h;
    
    fcn.000022fe();
    fcn.000029fa();
    uVar2 = in_CX;
    if ((uVar2 != 0) && (uVar2 != 0x1c)) {
        *0xd399 = *0xd399 + *((in_CX & 0xff) + 0xb89);
        if (((uVar2 == 4) || (((uVar2 == 6 || (uVar2 == 0x14)) || (uVar2 == 0x15)))) || (uVar2 == 0x16)) {
            fcn.00002a14();
            fcn.00005bbd();
        }
        else {
            if ((9 < uVar2) && (uVar2 < 0xf)) {
                uVar2 = '\x01' << (uVar2 - 10 & 0x1f);
                *0xd259 = *0xd259 | uVar2;
                bVar3 = false;
                if (uVar2 == *0xd262) {
                    pcVar1 = 0xd262;
                    *pcVar1 = *pcVar1 << 1;
                    bVar3 = *pcVar1 == '\0';
                }
                if (!bVar3) {
                    *0xd263 = 0;
                }
            }
            fcn.00002a14(in_CX);
            fcn.00005bbd();
            *0xd252 = *0xd252 + -1;
        }
    }
    return CONCAT22(in_stack_00000000,param_3);
}


uint fcn.00002222(void)

{
    uint16_t uVar1;
    ushort in_CX;
    uint16_t in_DX;
    int16_t iVar2;
    ushort unaff_DS;
    bool bVar3;
    ushort in_stack_00000000;
    
    iVar2 = (in_DX & 0xff) * 0x10;
    uVar1 = *(iVar2 + -0x3cf0) - 3;
    *(iVar2 + -0x3cf0) = uVar1;
    bVar3 = uVar1 < 8;
    if (8 < uVar1) {
        fcn.00002255();
        if (!bVar3) goto code_r0x0000224f;
    }
    *(iVar2 + -0x3cee) = 0;
code_r0x0000224f:
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00002643(void)

{
    ushort in_AX;
    int16_t iVar1;
    ushort in_DX;
    uint16_t uVar2;
    uint16_t *puVar3;
    ushort unaff_DS;
    
    puVar3 = 0xc16d;
    iVar1 = 0x10;
    do {
        if (((puVar3[4] & 1) != 0) && ((puVar3[4] & 8) != 0)) {
            uVar2 = *0xd247 - 7;
            if (*puVar3 < uVar2) {
                *puVar3 = uVar2;
            }
            else {
                uVar2 = *0xd247 + -3 + (*0xd249 << 3);
                if (uVar2 < *puVar3) {
                    *puVar3 = uVar2;
                }
            }
        }
        puVar3 = puVar3 + 8;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return CONCAT22(in_DX,in_AX);
}


void fcn.00005f79(void)

{
    ushort unaff_DS;
    uchar in_CF;
    
    fcn.00004866();
    if (in_CF) {
        fcn.0000259a();
        fcn.000052df();
        *0xd3a4 = *0xd3a4 + '\x04';
        if (9 < *0xd3a4) {
            *0xd3a4 = *0xd3a4 + -10;
            *0xd3a3 = *0xd3a3 + '\x01';
            if (9 < *0xd3a3) {
                *0xd3a3 = *0xd3a3 + -10;
                *0xd3a2 = *0xd3a2 + '\x01';
                if (9 < *0xd3a2) {
                    *0xd3a2 = *0xd3a2 + -10;
                }
            }
        }
    }
    return;
}


void fcn.0000259a(void)

{
    ushort unaff_DS;
    
    *0xd250 = *0xd250 + '\x01';
    *0xd3ac = *0xd3ac + '\x01';
    if (9 < *0xd3ac) {
        *0xd3ac = 0;
        *0xd3ab = *0xd3ab + '\x01';
    }
    fcn.00005fe9();
    return;
}


ushort fcn.00003a9b(void)

{
    ushort in_AX;
    int16_t iVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar2 = -0x3e93;
    iVar1 = 0x10;
    do {
        *(iVar2 + 8) = *(iVar2 + 8) & 0xf7;
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return in_AX;
}


uint16_t fcn.00002858(void)

{
    uint8_t uVar1;
    ushort in_AX;
    uint16_t uVar2;
    uint16_t uVar3;
    ushort in_BX;
    ushort unaff_DS;
    char cVar4;
    
    *0xd390 = in_AX;
    *0xd392 = in_BX;
    fcn.0000290d();
    uVar2 = fcn.00002a25();
    cVar4 = *0xd38a != '\0';
    if (*0xd38b != '\0') {
        cVar4 = cVar4 + '\x01';
    }
    if (*0xd38c != '\0') {
        cVar4 = cVar4 + '\x01';
    }
    if (*0xd38d != '\0') {
        cVar4 = cVar4 + '\x01';
    }
    if ((cVar4 != '\0') && (cVar4 != '\x03')) {
        if (cVar4 == '\x01') {
            uVar3 = *0xd390 - 0x10U & 0xffe0;
            uVar2 = uVar3 + 0x10;
            if (*0xd38a == '\0') {
                if (*0xd38b == '\0') {
                    if (*0xd38c == '\0') {
                        uVar2 = uVar3 + 0x30;
                    }
                }
                else {
                    uVar2 = uVar3 + 0x30;
                }
            }
        }
        else {
            uVar3 = uVar2 & 0xff00;
            if (*0xd38a != '\0') {
                uVar3 = CONCAT11(uVar2 >> 8,1);
            }
            cVar4 = uVar3 * '\x02';
            if (*0xd38b != '\0') {
                cVar4 = cVar4 + '\x01';
            }
            cVar4 = cVar4 * '\x02';
            if (*0xd38c != '\0') {
                cVar4 = cVar4 + '\x01';
            }
            uVar1 = cVar4 * '\x02';
            if (*0xd38d != '\0') {
                uVar1 = uVar1 + 1;
            }
            uVar2 = CONCAT11(uVar3 >> 8,*(uVar1 + 0xb6a));
        }
    }
    return uVar2;
}


ushort fcn.00002a25(void)

{
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    if (*0xd38a != '\0') {
        fcn.00002a73();
    }
    if (*0xd38b != '\0') {
        fcn.00002a73();
    }
    if (*0xd38d != '\0') {
        fcn.00002a73();
    }
    if (*0xd38c != '\0') {
        fcn.00002a73();
    }
    return in_stack_00000000;
}


uint fcn.00003970(void)

{
    uint16_t in_DX;
    int16_t iVar1;
    ushort unaff_DS;
    int16_t in_stack_0000ffee;
    uint16_t uStack_c;
    
    if (*0xd255 != '\0') {
        iVar1 = (in_DX & 0xff) * 0x10;
        uStack_c = *(iVar1 + -0x3e8b);
        in_stack_0000ffee = -*(iVar1 + -0x3e8f);
        fcn.00003933(*(iVar1 + -0x3e93),*(iVar1 + -0x3e91),in_stack_0000ffee,*(iVar1 + -0x3e8d),*(iVar1 + -0x3e8a));
        *0xd255 = *0xd255 + -1;
        *0xd251 = *0xd251 + '\x01';
    }
    return CONCAT22(in_stack_0000ffee,uStack_c);
}


void fcn.00003933(ushort param_1,ushort param_2,ushort param_3,ushort param_4,ushort param_5,ushort param_6)

{
    uint8_t uVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar2 = -0x3e93;
    uVar1 = 0;
    do {
        if ((*(iVar2 + 8) & 1) == 0) {
            fcn.00002e77(param_1,param_2,param_3,param_4,param_5,param_6,uVar1);
            return;
        }
        uVar1 = uVar1 + 1;
        iVar2 = iVar2 + 0x10;
    } while (uVar1 < 0x10);
    return;
}


uint fcn.00002693(ushort param_1)

{
    char cVar1;
    uint8_t uVar2;
    uint16_t uVar3;
    ushort in_CX;
    uint16_t uVar4;
    uint8_t in_DL;
    uint8_t uVar5;
    ushort in_BX;
    int16_t iVar6;
    uint16_t uVar7;
    ushort unaff_DS;
    
    *0xd37c = in_DL;
    uVar4 = CONCAT11(in_CX >> 8,4);
    iVar6 = in_DL * 0x10;
    *0xd380 = *(iVar6 + -0x3e93);
    *0xd382 = *(iVar6 + -0x3e91);
    *0xd384 = *(iVar6 + -0x3e8f);
    *0xd386 = *(iVar6 + -0x3e8d);
    uVar7 = *0xd382;
    uVar3 = fcn.00002858();
    cVar1 = uVar4;
    if (cVar1 != '\0') {
        if (cVar1 == '\x03') {
            fcn.00002b0b();
            fcn.00002b49();
        }
        else if (cVar1 == '\x02') {
            if ((uVar4 & 0x100) != 0) {
                fcn.00002b49();
            }
            if ((uVar4 & 0x200) != 0) {
                fcn.00002b0b();
            }
        }
        else {
            *0xd37e = 0;
            *0xd37f = 0;
            if ((uVar3 <= *0xd380) && (*0xd37e = *0xd37e + '\x01', uVar3 + 0x18 <= *0xd380)) {
                *0xd37e = *0xd37e + '\x01';
            }
            if ((uVar7 <= *0xd382) && (*0xd37f = *0xd37f + '\x01', uVar7 + 6 <= *0xd382)) {
                *0xd37f = *0xd37f + '\x01';
            }
            if (*0xd37e == '\x01') {
                fcn.00002b49();
            }
            else if (*0xd37f == '\x01') {
                fcn.00002b0b();
            }
            else {
                *0xd388 = 0;
                if (*0xd37e == '\0') {
                    *0xd388 = *0xd388 + '\x02';
                }
                if (*0xd37f == '\0') {
                    *0xd388 = *0xd388 + '\x01';
                }
                *0xd389 = 0;
                if (*0xd384 < 0) {
                    *0xd389 = *0xd389 + '\x02';
                }
                if (*0xd386 < 0) {
                    *0xd389 = *0xd389 + '\x01';
                }
                cVar1 = *((*0xd388 * '\x04' + *0xd389) + 0xb5a);
                if (cVar1 == '\x01') {
                    fcn.00002b0b();
                }
                else if (cVar1 == '\x02') {
                    fcn.00002b49();
                }
                else {
                    uVar2 = *0xd380 & 7;
                    uVar5 = *0xd382 % 6;
                    if (1 < uVar5) {
                        uVar5 = uVar5 + 1;
                    }
                    if (4 < uVar5) {
                        uVar5 = uVar5 + 1;
                    }
                    cVar1 = *0xd388;
                    if (cVar1 == '\0') {
                        if (uVar2 < uVar5) {
                            fcn.00002b49();
                        }
                        else {
                            fcn.00002b0b();
                        }
                    }
                    else if (cVar1 == '\x01') {
                        if (uVar5 < -(uVar2 - 7)) {
                            fcn.00002b49();
                        }
                        else {
                            fcn.00002b0b();
                        }
                    }
                    else if (cVar1 == '\x02') {
                        if (uVar5 < -(uVar2 - 7)) {
                            fcn.00002b0b();
                        }
                        else {
                            fcn.00002b49();
                        }
                    }
                    else if (uVar2 < uVar5) {
                        fcn.00002b0b();
                    }
                    else {
                        fcn.00002b49();
                    }
                }
            }
        }
    }
    return CONCAT22(in_BX,param_1);
}


uint fcn.00002bec(ushort param_1)

{
    uint8_t uVar1;
    uint16_t in_DX;
    ushort in_BX;
    int16_t iVar2;
    uint16_t *puVar3;
    ushort unaff_DS;
    int8_t var_6h;
    
    iVar2 = (in_DX & 0xff) * 0x10;
    puVar3 = iVar2 + -0x3e93;
    if (0x142 < *(iVar2 + -0x3e91)) {
        if ((*0xd247 - 7U <= *puVar3) && (*puVar3 <= (*0xd247 + *0xd249 * 8) - 1)) {
            *(iVar2 + -0x3e8b) = *(iVar2 + -0x3e8b) & 0xfd;
            if (*0xd256 != '\0') {
                *(iVar2 + -0x3e8b) = *(iVar2 + -0x3e8b) | 2;
                *0xd256 = 0;
            }
            fcn.000052df();
            puVar3[1] = 0x143;
            puVar3[3] = -puVar3[3];
            uVar1 = (*puVar3 - *0xd247) + 7;
            iVar2 = (*0xd249 - 4U >> 1) * 5;
            if (*(iVar2 + 0xb7a) < uVar1) {
                if (*(iVar2 + 0xb7b) < uVar1) {
                    if (*(iVar2 + 0xb7c) < uVar1) {
                        if (*(iVar2 + 0xb7d) < uVar1) {
                            if (*(iVar2 + 0xb7e) < uVar1) {
                                puVar3[2] = 3;
                            }
                            else {
                                puVar3[2] = 2;
                            }
                        }
                        else {
                            puVar3[2] = 1;
                        }
                    }
                    else {
                        puVar3[2] = 0xffff;
                    }
                }
                else {
                    puVar3[2] = 0xfffe;
                }
            }
            else {
                puVar3[2] = 0xfffd;
            }
            if ((*0xd24c & 1) != 0) {
                *(puVar3 + 4) = puVar3[4] | 8;
            }
            fcn.00003970();
        }
    }
    return CONCAT22(in_BX,_var_6h);
}


uint fcn.00002d3e(ushort param_1,ushort param_2,ushort param_3,ushort param_4)

{
    uint8_t in_DL;
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    *0xd37d = in_DL;
    iVar2 = in_DL * 0x10;
    if ((*(iVar2 + -0x3e8b) & 8) == 0) {
        iVar3 = *(iVar2 + -0x3e91) + *(iVar2 + -0x3e8d);
        if (*0xd23c < *(iVar2 + -0x3e8a)) {
            iVar1 = 1;
            if (*(iVar2 + -0x3e8d) < 0) {
                iVar1 = -1;
            }
            iVar3 = iVar3 + iVar1;
        }
        *(iVar2 + -0x3e93) = *(iVar2 + -0x3e93) + *(iVar2 + -0x3e8f);
        *(iVar2 + -0x3e91) = iVar3;
    }
    else {
        *(iVar2 + -0x3e93) = *(iVar2 + -0x3e93) + *0xd24d;
    }
    fcn.00002b8c();
    fcn.00002693();
    fcn.00002cd3();
    if ((*(iVar2 + -0x3e8b) & 0xc) == 0) {
        fcn.00002bec();
    }
    fcn.00002d0a();
    return CONCAT22(param_1,param_4);
}


uint fcn.000038e0(void)

{
    ushort uVar1;
    ushort uVar2;
    
    uVar2 = 0;
    uVar1 = 0x130;
    fcn.00003933(0xed,0x130,2,0xfffe,0,1);
    return CONCAT22(uVar1,uVar2);
}


ushort fcn.0000233b(void)

{
    ushort in_AX;
    uint16_t uVar1;
    int16_t iVar2;
    int16_t iVar3;
    ushort unaff_DS;
    
    if (*0xd23b == '\0') {
        *0xd23b = 1;
        iVar3 = -0x3d33;
        iVar2 = 5;
        do {
            if (*(iVar3 + 8) != '\0') {
                fcn.00002493();
                *0xd254 = 0;
                uVar1 = *(iVar3 + 2) + 1;
                *(iVar3 + 2) = uVar1;
                if (0x151 < uVar1) {
                    *(iVar3 + 8) = 0;
                }
            }
            iVar3 = iVar3 + 9;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
    }
    else {
        *0xd23b = *0xd23b + -1;
    }
    return in_AX;
}


void fcn.00002e09(void)

{
    int16_t iVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar1 = 0x10;
    iVar2 = -0x3e93;
    do {
        if ((*(iVar2 + 8) & 1) != 0) {
            fcn.00002d3e();
        }
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    fcn.00002e2b();
    return;
}


void fcn.00002298(void)

{
    int16_t iVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar1 = 4;
    iVar2 = -0x3cf2;
    do {
        if ((*(iVar2 + 4) & 1) != 0) {
            fcn.00002222();
        }
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


ushort fcn.00005e65(void)

{
    char cVar1;
    char *pcVar2;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    pcVar2 = 0xd25a;
    if (*0xd239 != '\0') {
        pcVar2 = 0xd25b;
    }
    if (*pcVar2 != *0xd259) {
        cVar1 = fcn.00005e83();
        *pcVar2 = cVar1;
    }
    return in_stack_00000000;
}


uint fcn.00005ee1(ushort param_1)

{
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    if (*0xd399 != 0) {
        *0xd254 = 0;
    }
    if (*0xd398 == '\0') {
        *0xd398 = 2;
        if (*0xd399 != 0) {
            *0xd399 = *0xd399 + -1;
            *0xd3a0 = *0xd3a0 + '\x01';
            if (*0xd3a0 == '\n') {
                *0xd3a0 = 0;
                *0xd39f = *0xd39f + '\x01';
                if (*0xd39f == '\n') {
                    *0xd39f = 0;
                    *0xd39e = *0xd39e + '\x01';
                    if (*0xd39e == '\n') {
                        *0xd39e = 0;
                        *0xd39d = *0xd39d + '\x01';
                        if (*0xd39d == '\n') {
                            *0xd39d = 0;
                            *0xd39c = *0xd39c + '\x01';
                            if (*0xd39c == '\n') {
                                *0xd39c = 0;
                                *0xd39b = *0xd39b + '\x01';
                                if (*0xd39b == '\n') {
                                    *0xd39b = 0;
                                }
                            }
                        }
                    }
                }
            }
            fcn.00005fc3();
            fcn.00005f79();
        }
    }
    else {
        *0xd398 = *0xd398 + -1;
    }
    return CONCAT22(in_stack_00000000,param_1);
}


void fcn.000036fd(void)

{
    int16_t iVar1;
    ushort unaff_DS;
    
    iVar1 = 2;
    do {
        fcn.000055b9();
        fcn.000058a4();
        fcn.00005de1();
        fcn.00002451();
        while( true ) {
            if ((*0xd252 != 0) && (*0xd264 == '\0')) {
                fcn.00002451();
            }
            *0xd254 = 1;
            fcn.00005b26();
            fcn.00005ee1();
            fcn.0000521a();
            if ((*0xd252 != 0) && (*0xd264 == '\0')) {
                fcn.0000237e();
                fcn.0000240b();
            }
            fcn.0000653b();
            if ((iVar1 != 0) && (iVar1 = iVar1 + -1, iVar1 != 0)) break;
            if (*0xd254 != '\0') {
                fcn.0000375b();
                fcn.00003778();
                fcn.000037b8();
                return;
            }
        }
    } while( true );
}


void fcn.0000375b(void)

{
    int16_t iVar1;
    uchar *puVar2;
    ushort unaff_DS;
    
    iVar1 = 0x100;
    puVar2 = 0xc16d;
    do {
        *puVar2 = 0;
        puVar2 = puVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    iVar1 = 0x20;
    puVar2 = 0xc2ad;
    do {
        *puVar2 = 0xff;
        puVar2 = puVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


void fcn.00003863(void)

{
    ushort unaff_DS;
    
    fcn.0000375b();
    fcn.00003778();
    fcn.00003798();
    fcn.000037b8();
    *0xd264 = 0;
    *0xd259 = 0;
    *0xd25a = 0;
    *0xd25b = 0;
    *0xd262 = 1;
    *0xd263 = 1;
    *0xd398 = 1;
    *0xd23a = 4;
    *0xd23b = 1;
    *0xd23d = 0x600;
    *0xd255 = 0;
    *0xd257 = 0;
    *0xd258 = 0;
    *0xd235 = 0;
    return;
}


uint fcn.0000382c(ushort param_1)

{
    uchar *puVar1;
    uchar *puVar2;
    ushort in_AX;
    int16_t iVar3;
    uchar *puVar4;
    uchar *puVar5;
    ushort unaff_DS;
    
    puVar5 = 0x80da;
    puVar4 = 0x9b2;
    for (iVar3 = 0x12; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *0x80e8 = CONCAT11(*0xd24f % 10,*0xd24f / 10) + 0x3030;
    fcn.000044ac();
    fcn.00003b29();
    return CONCAT22(in_AX,param_1);
}


uint fcn.000044ac(ushort param_1,ushort param_2,ushort param_3)

{
    int16_t *piVar1;
    char *pcVar2;
    char *pcVar3;
    int16_t iVar4;
    char extraout_DL;
    int16_t iVar5;
    uint16_t uVar6;
    int16_t *unaff_DI;
    int16_t *piVar8;
    int16_t *piVar7;
    char *pcVar9;
    ushort unaff_DS;
    ushort in_stack_00000000;
    int16_t *piVar10;
    
    iVar4 = unaff_DI[1];
    iVar5 = iVar4;
    fcn.00004446();
    uVar6 = -(iVar5 * 0xe + -0x15e) >> 1;
    pcVar3 = -(*unaff_DI + -0x50) >> 1;
    if (extraout_DL != '\0') {
        pcVar3 = pcVar3 + -10;
    }
    piVar7 = unaff_DI + 2;
    *0xcecc = 0xf;
    iVar5 = iVar4;
    piVar10 = piVar7;
    do {
        fcn.00003e8a(iVar5,piVar10);
        piVar8 = piVar7;
        do {
            piVar7 = piVar8 + 1;
            piVar1 = piVar8;
            piVar8 = piVar7;
        } while (*piVar1 != '\0');
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    fcn.0000653b();
    do {
        fcn.00003e8a();
        pcVar9 = pcVar3;
        do {
            pcVar3 = pcVar9 + 1;
            pcVar2 = pcVar9;
            pcVar9 = pcVar3;
        } while (*pcVar2 != '\0');
        uVar6 = uVar6 - 1;
    } while (uVar6 != 0);
    return CONCAT22(in_stack_00000000,param_3);
}


uint fcn.00003f08(ushort param_1,ushort param_2,ushort param_3,ushort param_4,ushort param_5)

{
    int16_t *piVar1;
    ushort unaff_DS;
    
    fcn.000042f2();
    fcn.00004372();
    fcn.000042f2();
    fcn.0000483c();
    for (piVar1 = 0xaaf; *piVar1 != -1; piVar1 = piVar1 + 4) {
        fcn.000042f2();
        fcn.00004372();
    }
    for (piVar1 = 0xae9; *piVar1 != -1; piVar1 = piVar1 + 3) {
        fcn.00003da6();
    }
    fcn.00003da6();
    fcn.00003f9a();
    return CONCAT22(param_2,param_5);
}


uint fcn.0000391f(ushort param_1,ushort param_2)

{
    ushort in_stack_00000000;
    
    fcn.00005fc3();
    fcn.00005fd6();
    fcn.00005fe9();
    return CONCAT22(in_stack_00000000,param_2);
}


void fcn.000039f3(void)

{
    ushort unaff_DS;
    
    *0xd24f = 1;
    *0xd39b = 0;
    *0xd39c = 0;
    *0xd39d = 0;
    *0xd39e = 0;
    *0xd39f = 0;
    *0xd3a0 = 0;
    *0xd3a2 = 0;
    *0xd3a3 = 0;
    *0xd3a4 = 4;
    *0xd3a5 = 0;
    *0xd3a6 = 0;
    *0xd3a7 = 0;
    *0xd399 = 0;
    *0xd250 = 3;
    *0xd3ab = 0;
    *0xd3ac = 3;
    *0xced0 = 0;
    *0xcf0e = 0;
    *0xd265 = 0;
    return;
}


uint fcn.000037db(void)

{
    ushort unaff_DS;
    uchar in_CF;
    ushort in_stack_0000001a;
    ushort in_stack_0000001c;
    
    fcn.00003863();
    fcn.0000669c();
    fcn.000066ad();
    fcn.0000382c();
    fcn.0000669c();
    fcn.000066ad();
    fcn.000033b7();
    fcn.000065e9();
    *0xd239 = 0;
    *0xd237 = 0;
    fcn.00003f08();
    fcn.0000406d();
    fcn.0000391f();
    fcn.00005036();
    fcn.00006555();
    if (!in_CF) {
        fcn.0000658d();
    }
    *0xd239 = 1;
    *0xd237 = 0x6e00;
    fcn.00006637();
    return CONCAT22(in_stack_0000001a,in_stack_0000001c);
}


void fcn.00003610(void)

{
    ushort unaff_DS;
    
    fcn.00003904();
    fcn.000038e0();
    *0xd251 = 1;
    *0xd255 = 0;
    *0xd256 = 0;
    *0xd398 = 1;
    *0xd23a = 4;
    *0xd23b = 1;
    *0xd23d = 0x600;
    fcn.00002451();
    fcn.000055f9();
    fcn.00005817();
    fcn.0000564a();
    fcn.00005808();
    fcn.0000240b();
    fcn.0000653b();
    fcn.00003b4c();
    return;
}


ushort fcn.00003cdc(ushort param_1)

{
    code *pcVar1;
    uint8_t uVar2;
    ushort uVar3;
    char extraout_AH;
    uchar in_ZF;
    
    pcVar1 = swi(0x16);
    (*pcVar1)();
    if (!in_ZF) {
        pcVar1 = swi(0x16);
        (*pcVar1)();
        if (extraout_AH == '\x01') {
            fcn.00003cc2();
        }
        else if (extraout_AH == 'D') {
            uVar2 = in(0x61);
            out(0x61,uVar2 & 0xfc);
            fcn.000050e8();
            fcn.00005036();
            fcn.0000651b();
            fcn.000034d7();
            fcn.00004f26();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            fcn.000044ac();
            fcn.00005036();
            uVar3 = fcn.00004f72();
            return uVar3;
        }
    }
    return param_1;
}


ushort fcn.00003658(void)

{
    ushort unaff_DS;
    int8_t var_4h;
    ushort in_stack_00000036;
    
    fcn.000050cb();
    while( true ) {
        *0xd23c = *0xd23c + '\x01';
        if (*0xd23c == '\x03') {
            *0xd23c = 0;
        }
        fcn.00004f53();
        fcn.000055b9();
        fcn.00002451();
        fcn.00005de1();
        fcn.000058a4();
        fcn.0000233b();
        fcn.00002dbc();
        fcn.00002e09();
        fcn.000023d0();
        fcn.00002298();
        fcn.00005b26();
        fcn.00005be5();
        fcn.00005e65();
        fcn.0000237e();
        fcn.000055f9();
        fcn.00005817();
        fcn.00005d8c();
        fcn.0000240b();
        fcn.00005e23();
        fcn.0000564a();
        fcn.00005808();
        fcn.00005ee1();
        fcn.0000521a();
        fcn.0000653b();
        if (*0xd265 != '\0') goto code_r0x000036f3;
        if ((*0xd252 == 0) || (*0xd264 != '\0')) break;
        if (*0xd251 == '\0') {
            fcn.000052df();
code_r0x000036f3:
            fcn.000036fd();
            fcn.000050e8();
            return in_stack_00000036;
        }
    }
    fcn.000052df();
    goto code_r0x000036f3;
}


uint fcn.000038b7(ushort param_1,ushort param_2)

{
    uint8_t uVar1;
    int16_t iVar2;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    if (*0xd239 != '\0') {
        fcn.0000653b();
    }
    fcn.0000669c();
    iVar2 = 0x1e;
    do {
        do {
            uVar1 = in(0x3da);
        } while ((uVar1 & 8) != 0);
        do {
            uVar1 = in(0x3da);
        } while ((uVar1 & 8) == 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    fcn.00006555();
    return CONCAT22(in_stack_00000000,param_2);
}


void fcn.00003a59(void)

{
    char *pcVar1;
    ushort unaff_DS;
    
    *0xd250 = *0xd250 + -1;
    pcVar1 = 0xd3ac;
    *pcVar1 = *pcVar1 + -1;
    if (*pcVar1 < '\0') {
        *0xd3ac = 9;
        *0xd3ab = *0xd3ab + -1;
    }
    fcn.00005fe9();
    return;
}


void fcn.00003ab5(void)

{
    fcn.00002451();
    fcn.0000653b();
    fcn.00002451();
    fcn.000044ac();
    fcn.00003b29();
    return;
}


uint fcn.00004882(ushort param_1,ushort param_2,ushort param_3,ushort param_4)

{
    char extraout_DL;
    
    fcn.00004945();
    if (extraout_DL == '\v') {
        fcn.00004a3a();
        fcn.0000653b();
    }
    else {
        fcn.000044ac();
        fcn.00003b29();
        fcn.00004a3a();
        fcn.0000653b();
        fcn.00006665();
        fcn.000048c0();
        param_2 = 0x48ad;
        fcn.0000653b();
    }
    fcn.00006665();
    fcn.0000653b();
    return CONCAT22(param_2,param_4);
}


void fcn.00003caf(void)

{
    fcn.000044ac();
    fcn.00005036();
    fcn.00004f72();
    return;
}


uint fcn.0000220a(void)

{
    ushort in_AX;
    ushort in_stack_00000000;
    
    fcn.000021e0();
    return CONCAT22(in_AX,in_stack_00000000);
}


void fcn.0000253f(void)

{
    ushort unaff_DS;
    
    *0xd39e = *0xd39e + '\x05';
    if (9 < *0xd39e) {
        *0xd39e = *0xd39e + -10;
        *0xd39d = *0xd39d + '\x01';
        if (9 < *0xd39d) {
            *0xd39d = 0;
            *0xd39c = *0xd39c + '\x01';
            if (9 < *0xd39c) {
                *0xd39c = 0;
                *0xd39b = *0xd39b + '\x01';
                if (9 < *0xd39b) {
                    *0xd39b = 0;
                }
            }
        }
    }
    fcn.00005fc3();
    fcn.00005f79();
    return;
}


uint fcn.00003fde(ushort param_1,ushort param_2,ushort param_3,ushort param_4,ushort param_5)

{
    int16_t *piVar1;
    int16_t *piVar2;
    int16_t *piVar3;
    ushort unaff_DS;
    
    if (*0xd239 == '\0') {
        fcn.0000669c();
    }
    else {
        fcn.000066ad();
    }
    fcn.000042f2();
    fcn.00004372();
    fcn.000042f2();
    fcn.0000483c();
    for (piVar2 = 0x9c4; *piVar2 != -1; piVar2 = piVar2 + 4) {
        fcn.000042f2();
    }
    *0xcecc = 0;
    piVar2 = 0x9de;
    while (*piVar2 != -1) {
        fcn.00003e8a();
        piVar3 = piVar2 + 2;
        do {
            piVar2 = piVar3 + 1;
            piVar1 = piVar3;
            piVar3 = piVar2;
        } while (*piVar1 != '\0');
    }
    fcn.00003f9a();
    return CONCAT22(param_2,param_5);
}


void fcn.00003b94(void)

{
    ushort unaff_DS;
    
    fcn.00003863();
    fcn.00003904();
    fcn.000038e0();
    fcn.000055f9();
    fcn.00005817();
    fcn.0000564a();
    fcn.00005808();
    fcn.0000653b();
    *0xd256 = 0;
    *0xced0 = 1;
    fcn.00003bbd();
    fcn.000037c5();
    return;
}


ushort fcn.00003bbd(void)

{
    code *pcVar1;
    uchar extraout_AH;
    int16_t iVar2;
    ushort unaff_DS;
    char cVar3;
    int8_t var_4h;
    ushort uStack_2;
    
    iVar2 = 0x400;
    do {
        *0xd23c = *0xd23c + '\x01';
        cVar3 = *0xd23c == '\x03';
        if (cVar3) {
            *0xd23c = 0;
        }
        fcn.000055b9();
        fcn.00002451();
        fcn.000058a4();
        fcn.0000233b();
        fcn.00003c1b();
        fcn.00002e09();
        fcn.000023d0();
        fcn.00005b26();
        fcn.0000237e();
        fcn.000055f9();
        fcn.00005817();
        fcn.0000240b();
        fcn.0000564a();
        fcn.00005808();
        fcn.0000653b();
        pcVar1 = swi(0x16);
        (*pcVar1)();
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0 && cVar3 != '\0');
    if (iVar2 == 0) {
        uStack_2 = 0x3b00;
    }
    else {
        pcVar1 = swi(0x16);
        (*pcVar1)();
        uStack_2 = CONCAT11(0x3b,extraout_AH);
    }
    return uStack_2;
}


void fcn.00003b69(void)

{
    int16_t iVar1;
    ushort unaff_DS;
    
    iVar1 = *0xcece;
    fcn.000033b7();
    fcn.00003fde();
    fcn.0000406d();
    fcn.0000653b();
    fcn.00006665();
    iVar1 = iVar1 + 1;
    if (iVar1 == 0x77f) {
        iVar1 = 0x775;
    }
    *0xcece = iVar1;
    fcn.00003b94();
    return;
}


void fcn.00004ba7(void)

{
    fcn.00004a3a();
    fcn.0000653b();
    fcn.00006665();
    fcn.00004abd();
    return;
}


void fcn.00004a3a(void)

{
    ushort unaff_DS;
    
    if (*0xd239 == '\0') {
        fcn.0000669c();
    }
    else {
        fcn.000066ad();
    }
    fcn.00004b36();
    fcn.00004b7b();
    fcn.00004a53();
    return;
}


ushort fcn.00004abd(ushort param_1)

{
    code *pcVar1;
    int16_t iVar2;
    char in_ZF;
    int8_t var_4h;
    
    fcn.0000375b();
    fcn.00004aea();
    iVar2 = 0x400;
    do {
        fcn.00004b19();
        fcn.0000653b();
        pcVar1 = swi(0x16);
        (*pcVar1)();
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0 && in_ZF != '\0');
    if (iVar2 != 0) {
        pcVar1 = swi(0x16);
        (*pcVar1)();
    }
    return param_1;
}


uint fcn.00004f26(void)

{
    code *pcVar1;
    ushort in_stack_00000008;
    ushort in_stack_0000000c;
    
    fcn.00004ed0();
    pcVar1 = swi(0x10);
    (*pcVar1)();
    fcn.00005036();
    fcn.00004f72();
    pcVar1 = swi(0x10);
    (*pcVar1)();
    return CONCAT22(in_stack_00000008,in_stack_0000000c);
}


uint fcn.00003f9a(void)

{
    int16_t *piVar1;
    ushort in_AX;
    ushort in_DX;
    int16_t *piVar2;
    int16_t *piVar3;
    ushort unaff_DS;
    
    for (piVar2 = 0xb03; *piVar2 != -1; piVar2 = piVar2 + 4) {
        fcn.000042f2();
    }
    piVar2 = 0xb15;
    while (*piVar2 != -1) {
        fcn.00003e8a();
        piVar3 = piVar2 + 2;
        do {
            piVar2 = piVar3 + 1;
            piVar1 = piVar3;
            piVar3 = piVar2;
        } while (*piVar1 != '\0');
    }
    return CONCAT22(in_DX,in_AX);
}


uint fcn.0000442b(ushort param_1)

{
    ushort in_BX;
    
    fcn.000042f2();
    fcn.00004372();
    return CONCAT22(in_BX,param_1);
}


uint fcn.000043e4(ushort param_1,uint16_t param_2)

{
    ushort in_AX;
    int16_t in_DX;
    uint16_t in_BX;
    uint16_t uVar1;
    int16_t iVar2;
    int16_t var_4h;
    uint16_t var_8h;
    ushort uVar3;
    
    uVar1 = in_BX + in_DX >> 1;
    iVar2 = 0xc;
    do {
        uVar1 = uVar1 - 1;
        fcn.000042f2();
        uVar3 = 0x43ff;
        fcn.0000653b();
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    while (uVar1 = uVar1 - 1, in_BX < uVar1) {
        fcn.0000442b(uVar3);
        uVar3 = 0x4413;
        fcn.0000653b();
    }
    fcn.0000442b(uVar3);
    fcn.0000653b();
    fcn.0000442b();
    return CONCAT22(in_AX,var_8h);
}


uint fcn.00004446(void)

{
    ushort in_CX;
    ushort in_stack_00000000;
    int8_t var_6h;
    int16_t var_ch;
    
    fcn.000043e4();
    return CONCAT22(in_CX,in_stack_00000000);
}


uint fcn.00004945(ushort param_1)

{
    int16_t iVar1;
    char extraout_DL;
    char extraout_DL_00;
    char cVar2;
    ushort in_DX;
    uchar uVar3;
    ushort in_BX;
    uint16_t uVar4;
    uchar *puVar5;
    ushort unaff_DS;
    int8_t var_2h;
    
    uVar3 = in_DX >> 8;
    fcn.000049c9();
    if (extraout_DL + '\x01' != '\v') {
        fcn.000049ec(CONCAT11(uVar3,extraout_DL + '\x01'));
        cVar2 = extraout_DL_00 + -1;
        uVar4 = cVar2 * '\a';
        *(uVar4 + 0xd266) = *0xd39b;
        *(uVar4 + 0xd267) = *0xd39c;
        *(uVar4 + 0xd268) = *0xd39d;
        *(uVar4 + 0xd269) = *0xd39e;
        *(uVar4 + 0xd26a) = *0xd39f;
        *(uVar4 + 0xd26b) = *0xd3a0;
        *(cVar2 * '\x03' + 0xd34c) = *0xd3a8;
        *(cVar2 * '\x03' + 0xd34d) = *0xd3a9;
        puVar5 = cVar2 * '\x10' + 0xd2ac;
        iVar1 = 0x10;
        do {
            *puVar5 = 0;
            puVar5 = puVar5 + 1;
            iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
    }
    return CONCAT22(in_BX,param_1);
}


ushort fcn.000048c0(ushort param_1)

{
    char in_AL;
    int16_t iVar1;
    uint16_t uVar2;
    uchar *puVar3;
    uchar *puVar4;
    ushort unaff_DS;
    int8_t var_8h;
    
    *0xcecc = 0xe;
    *0xcecd = 7;
    puVar3 = 0xd36c;
    iVar1 = 0x10;
    do {
        *puVar3 = 0;
        puVar3 = puVar3 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    *0xd36a = 0xf;
    fcn.00004f7f(in_AL * '\x0e' + 0x8e,0x17);
    uVar2 = *0xd36b;
    if (uVar2 != 0) {
        puVar3 = (in_AL - 1) * 0x10 + -0x2d54;
        puVar4 = 0xd36c;
        do {
            *puVar3 = *puVar4;
            puVar3 = puVar3 + 1;
            puVar4 = puVar4 + 1;
            uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
    }
    *(*0xd36b + 0xd36c) = 0;
    *0xcecc = 0;
    fcn.00003e8a();
    return param_1;
}


uint fcn.00004b36(ushort param_1,ushort param_2,ushort param_3)

{
    ushort in_stack_00000000;
    
    fcn.000042f2();
    fcn.00004372();
    fcn.000042f2();
    fcn.000042f2();
    return CONCAT22(in_stack_00000000,param_3);
}


uint fcn.00004a53(ushort param_1)

{
    int16_t iVar1;
    ushort in_BX;
    ushort unaff_DS;
    
    *0xcecc = 1;
    *0xcecd = 7;
    fcn.00003e8a();
    *0xcecc = 0;
    iVar1 = 10;
    do {
        fcn.00003e8a();
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    iVar1 = 10;
    do {
        fcn.00003ec7();
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    iVar1 = 10;
    do {
        fcn.00003ec7();
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return CONCAT22(in_BX,param_1);
}


ushort fcn.00004aea(void)

{
    ushort in_AX;
    int16_t *piVar1;
    ushort unaff_DS;
    
    for (piVar1 = 0x723; *piVar1 != -1; piVar1 = piVar1 + 5) {
        fcn.00003933(piVar1[4],piVar1[3],piVar1[2],piVar1[1],*piVar1,1);
    }
    return in_AX;
}


void fcn.00004b19(void)

{
    ushort unaff_DS;
    
    *0xd23c = *0xd23c + '\x01';
    if (*0xd23c == '\x03') {
        *0xd23c = 0;
    }
    fcn.000055b9();
    fcn.00003235();
    fcn.000055f9();
    fcn.0000564a();
    return;
}


void fcn.00003235(void)

{
    int16_t iVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar1 = 0x10;
    iVar2 = -0x3e93;
    do {
        if ((*(iVar2 + 8) & 1) != 0) {
            fcn.000031b4();
        }
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


uint fcn.00004beb(void)

{
    char *pcVar1;
    char *pcVar2;
    char *pcVar3;
    ushort unaff_DS;
    ushort in_stack_0000000a;
    ushort in_stack_00000010;
    
    fcn.00004bc4();
    *0xcecc = 10;
    pcVar2 = "  The object of the game Paranoid is to remove all of the";
    while (*pcVar2 != -1) {
        fcn.00003e8a();
        pcVar3 = pcVar2;
        do {
            pcVar2 = pcVar3 + 1;
            pcVar1 = pcVar3;
            pcVar3 = pcVar2;
        } while (*pcVar1 != '\0');
    }
    *0xcecc = 0;
    fcn.00003e8a();
    fcn.00003e8a();
    fcn.0000653b();
    fcn.00004f72();
    fcn.00004bc4();
    *0xcecc = 10;
    pcVar2 = "  Some of the bricks have letters written on them, and when";
    while (*pcVar2 != -1) {
        fcn.00003e8a();
        pcVar3 = pcVar2;
        do {
            pcVar2 = pcVar3 + 1;
            pcVar1 = pcVar3;
            pcVar3 = pcVar2;
        } while (*pcVar1 != '\0');
    }
    *0xcecc = 0;
    fcn.00003e8a();
    fcn.00003e8a();
    fcn.0000653b();
    return CONCAT22(in_stack_0000000a,in_stack_00000010);
}


uint fcn.00004c87(ushort param_1,ushort param_2,ushort param_3)

{
    int16_t *piVar1;
    char cVar2;
    int16_t *piVar3;
    int16_t *piVar4;
    ushort unaff_DS;
    ushort in_stack_00000000;
    
    fcn.00004bc4();
    piVar3 = 0x141f;
    cVar2 = '\x01';
    do {
        piVar1 = piVar3;
        piVar3 = piVar3 + 2;
        if (*piVar1 != -1) {
            fcn.00005ab0();
        }
        cVar2 = cVar2 + '\x01';
    } while (cVar2 != ' ');
    *0xcecc = 0;
    fcn.00003e8a();
    fcn.00003e8a();
    *0xcecc = 10;
    piVar3 = 0x149b;
    while (*piVar3 != -1) {
        fcn.00003e8a();
        piVar4 = piVar3 + 2;
        do {
            piVar3 = piVar4 + 1;
            piVar1 = piVar4;
            piVar4 = piVar3;
        } while (*piVar1 != '\0');
    }
    fcn.0000653b();
    return CONCAT22(in_stack_00000000,param_3);
}


uint fcn.00004cf2(void)

{
    char *pcVar1;
    code *pcVar2;
    char *pcVar3;
    char *pcVar4;
    ushort unaff_DS;
    uchar uVar5;
    uchar uVar6;
    ushort in_stack_0000001c;
    ushort in_stack_00000022;
    
    fcn.00004bc4();
    *0xcecc = 0;
    fcn.00003e8a();
    fcn.00003e8a();
    *0xcecc = 10;
    pcVar3 = "This handy icon increases the size of your bat by a";
    while (uVar5 = *pcVar3 == -1, !uVar5) {
        fcn.00003e8a();
        pcVar4 = pcVar3;
        do {
            pcVar3 = pcVar4 + 1;
            pcVar1 = pcVar4;
            pcVar4 = pcVar3;
        } while (*pcVar1 != '\0');
    }
    fcn.00004dcb();
    fcn.00004e5b();
    fcn.0000653b();
    fcn.00006665();
    do {
        uVar6 = uVar5;
        fcn.00004e9b();
        fcn.00004e5b();
        fcn.0000653b();
        pcVar2 = swi(0x16);
        (*pcVar2)();
        uVar5 = 1;
    } while (uVar6);
    pcVar2 = swi(0x16);
    (*pcVar2)();
    fcn.00004bc4();
    *0xcecc = 0;
    fcn.00003e8a();
    fcn.00003e8a();
    *0xcecc = 10;
    pcVar3 = "To increase your stock of balls, catch this icon and you";
    while (uVar5 = *pcVar3 == -1, !uVar5) {
        fcn.00003e8a();
        pcVar4 = pcVar3;
        do {
            pcVar3 = pcVar4 + 1;
            pcVar1 = pcVar4;
            pcVar4 = pcVar3;
        } while (*pcVar1 != '\0');
    }
    fcn.00004e13();
    fcn.00004e5b();
    fcn.0000653b();
    fcn.00006665();
    do {
        uVar6 = uVar5;
        fcn.00004e9b();
        fcn.00004e5b();
        fcn.0000653b();
        pcVar2 = swi(0x16);
        (*pcVar2)();
        uVar5 = 1;
    } while (uVar6);
    pcVar2 = swi(0x16);
    (*pcVar2)();
    return CONCAT22(in_stack_0000001c,in_stack_00000022);
}


uint fcn.00004bc4(ushort param_1)

{
    ushort in_BX;
    
    fcn.000042f2();
    fcn.00004372();
    return CONCAT22(in_BX,param_1);
}


void fcn.000060f7(void)

{
    ushort unaff_DS;
    
    fcn.00005ffc();
    if (*0xced2 == '\0') {
        fcn.0000609b();
    }
    return;
}


void fcn.00005ffc(void)

{
    char *pcVar1;
    char *pcVar2;
    char *pcVar3;
    uchar *puVar4;
    ushort unaff_DS;
    bool bVar5;
    
    pcVar2 = 0x7b1;
    puVar4 = 0x80ce;
    while (bVar5 = *pcVar2 != -1, *pcVar2 != -1) {
        *puVar4 = 0;
        fcn.00006027();
        pcVar3 = pcVar2;
        if (bVar5) {
            *puVar4 = 1;
        }
        do {
            pcVar2 = pcVar3 + 1;
            pcVar1 = pcVar3;
            pcVar3 = pcVar2;
        } while (*pcVar1 != '$');
        puVar4 = puVar4 + 1;
    }
    *puVar4 = 0xff;
    fcn.00006041();
    return;
}


uint fcn.00003475(ushort param_1,ushort param_2)

{
    code *pcVar1;
    uchar extraout_AH;
    ushort in_AX;
    int16_t iVar2;
    ushort extraout_DX;
    uchar *puVar3;
    uchar *puVar4;
    ushort unaff_DS;
    uchar in_CF;
    
    puVar3 = 0x7a3;
    puVar4 = 0x800e;
    iVar2 = 0xe;
    do {
        *puVar4 = *puVar3;
        puVar3 = puVar3 + 1;
        puVar4 = puVar4 + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    pcVar1 = swi(0x21);
    iVar2 = (*pcVar1)();
    if (in_CF) {
        if (iVar2 != 2) {
            fcn.0000651b();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            fcn.0000651b();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            fcn.0000651b();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            pcVar1 = swi(0x21);
            (*pcVar1)();
            return CONCAT22(extraout_DX,CONCAT11(extraout_AH,3));
        }
        int.0000352f();
    }
    else {
        *0x800c = iVar2;
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
        pcVar1 = swi(0x21);
        (*pcVar1)();
    }
    return CONCAT22(in_AX,param_2);
}


void fcn.00006367(void)

{
    fcn.0000624e();
    fcn.0000653b();
    fcn.00006665();
    fcn.000064d9();
    fcn.00005036();
    return;
}


uint fcn.0000624e(ushort param_1,ushort param_2,ushort param_3,ushort param_4,ushort param_5)

{
    fcn.000042f2();
    fcn.00004372();
    fcn.000042f2();
    fcn.00004372();
    fcn.00006299();
    fcn.00006300();
    return CONCAT22(param_2,param_5);
}


uint fcn.00006299(ushort param_1,ushort param_2,ushort param_3,ushort param_4)

{
    char *pcVar1;
    char *pcVar2;
    ushort unaff_DS;
    
    fcn.000042f2();
    fcn.000042f2();
    pcVar2 = 0x550;
    while( true ) {
        pcVar1 = pcVar2;
        pcVar2 = pcVar2 + 1;
        if (*pcVar1 == -1) break;
        fcn.00004757();
    }
    fcn.00003da6();
    fcn.00003da6();
    fcn.00003da6();
    return CONCAT22(param_1,param_4);
}


ushort fcn.000064d9(void)

{
    code *pcVar1;
    char cVar2;
    ushort unaff_DS;
    uchar in_ZF;
    uchar uVar3;
    
    fcn.0000375b();
    fcn.000064aa();
    *0xcf0b = 0x3a5;
    *0xcf0d = 0;
    while( true ) {
        do {
            uVar3 = in_ZF;
            fcn.0000648d();
            fcn.0000633a();
            fcn.0000653b();
            pcVar1 = swi(0x16);
            (*pcVar1)();
            in_ZF = 1;
        } while (uVar3);
        pcVar1 = swi(0x16);
        cVar2 = (*pcVar1)();
        if (cVar2 == ' ') break;
        in_ZF = 0;
    }
    return 0x64f1;
}


void fcn.00003c38(void)

{
    char in_AL;
    uchar uVar1;
    uchar uVar2;
    
    uVar1 = 0;
    uVar2 = uVar1;
    if (in_AL != '\0') goto code_r0x00003c47;
    do {
        fcn.00005036();
        fcn.00003b69();
        fcn.00003c55();
        uVar2 = uVar1;
        if (!uVar1) {
            return;
        }
code_r0x00003c47:
        fcn.00005036();
        fcn.00004ba7();
        fcn.00003c55();
        uVar1 = 1;
    } while (uVar2);
    return;
}


uint fcn.00005e83(ushort param_1,ushort param_2)

{
    ushort in_AX;
    int16_t iVar1;
    uint8_t uVar2;
    uchar *puVar3;
    uchar *puVar4;
    ushort unaff_DS;
    char in_CF;
    bool bVar5;
    
    puVar4 = 0xd25c;
    puVar3 = 0xae3;
    iVar1 = 6;
    do {
        *puVar4 = *puVar3;
        puVar4 = puVar4 + 1;
        puVar3 = puVar3 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    fcn.00003da6();
    uVar2 = *0xd259;
    puVar3 = 0xd25c;
    iVar1 = 5;
    do {
        bVar5 = (uVar2 & 1) != 0;
        uVar2 = uVar2 >> 1 | in_CF << 7;
        if (!bVar5) {
            *puVar3 = 0x20;
        }
        puVar3 = puVar3 + 1;
        iVar1 = iVar1 + -1;
        in_CF = bVar5;
    } while (iVar1 != 0);
    fcn.00003da6();
    if (*0xd259 == '\x1f') {
        fcn.00003ad1();
    }
    return CONCAT22(in_AX,param_2);
}


void fcn.00003ad1(void)

{
    ushort unaff_DS;
    
    if (*0xd263 == '\0') {
        *0xd39e = *0xd39e + '\x02';
        if (9 < *0xd39e) {
            *0xd39e = *0xd39e + -10;
            *0xd39d = *0xd39d + '\x01';
            if (9 < *0xd39d) {
                *0xd39d = 0;
                *0xd39c = *0xd39c + '\x01';
                if (9 < *0xd39c) {
                    *0xd39c = 0;
                    *0xd39b = *0xd39b + '\x01';
                    if (9 < *0xd39b) {
                        *0xd39b = 0;
                    }
                }
            }
        }
        fcn.00005fc3();
        fcn.00005f79();
    }
    else {
        fcn.0000253f();
    }
    return;
}


uint8_t fcn.000061ea(void)

{
    uint8_t uVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    uint8_t *unaff_SI;
    ushort unaff_DS;
    
    uVar1 = *unaff_SI;
    if ((0x60 < uVar1) && (uVar1 < 0x7b)) {
        uVar1 = uVar1 & 0xdf;
    }
    uVar2 = uVar1 - 0x30;
    if (uVar2 < 10) {
        if (uVar2 < '\0') {
            return uVar2;
        }
    }
    else {
        uVar2 = uVar1 - 0x37;
        if (0xf < uVar2) {
            return uVar2;
        }
        if (uVar2 < 10) {
            return uVar2;
        }
    }
    uVar1 = unaff_SI[1];
    if ((0x60 < uVar1) && (uVar1 < 0x7b)) {
        uVar1 = uVar1 & 0xdf;
    }
    uVar3 = uVar1 - 0x30;
    if (uVar3 < 10) {
        if (uVar3 < '\0') {
            return uVar2;
        }
    }
    else {
        uVar3 = uVar1 - 0x37;
        if (0xf < uVar3) {
            return uVar2;
        }
        if (uVar3 < 10) {
            return uVar2;
        }
    }
    return uVar2 * '\x10' + uVar3;
}


void fcn.00003216(void)

{
    int16_t iVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar1 = 0x10;
    iVar2 = -0x3e93;
    do {
        if ((*(iVar2 + 8) & 1) != 0) {
            fcn.00003158();
        }
        iVar2 = iVar2 + 0x10;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}


ushort fcn.000064aa(void)

{
    ushort in_AX;
    int16_t *piVar1;
    ushort unaff_DS;
    
    for (piVar1 = 0x559; *piVar1 != -1; piVar1 = piVar1 + 5) {
        fcn.00003933(piVar1[4],piVar1[3],piVar1[2],piVar1[1],*piVar1,1);
    }
    return in_AX;
}


void fcn.0000648d(void)

{
    ushort unaff_DS;
    
    *0xd23c = *0xd23c + '\x01';
    if (*0xd23c == '\x03') {
        *0xd23c = 0;
    }
    fcn.000055b9();
    fcn.00003216();
    fcn.000055f9();
    fcn.0000564a();
    return;
}


void fcn.0000633a(void)

{
    char extraout_DL;
    uint8_t uVar1;
    int16_t iVar2;
    ushort unaff_DS;
    
    iVar2 = *0xcf0b;
    fcn.00006377();
    uVar1 = extraout_DL + 2;
    if (7 < uVar1) {
        iVar2 = iVar2 + 1;
        if (iVar2 == 0x523) {
            iVar2 = 0x3a5;
        }
        uVar1 = extraout_DL - 6;
    }
    *0xcf0d = uVar1;
    *0xcf0b = iVar2;
    return;
}

