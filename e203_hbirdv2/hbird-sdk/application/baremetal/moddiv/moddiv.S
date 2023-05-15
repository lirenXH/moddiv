.global mmod 
.global mdiv
mmod:
    #模逆
    .insn r 0x7b,    0x2,   0x8,  x0,  a0, x0  #load_A_inv
    .insn r 0x7b,    0x2,   0x3,  x0,  a1, x0  #load_P
    .insn r 0x7b,    0x0,   0x5,  x0,  x0, x0  #Startwork
    .insn r 0x7b,    0x2,   0x4,  x0,  a2, x0  #Writeback
    ret

mdiv:
    # 模除
    .insn r 0x7b,    0x2,   0x1,  x0,  a0, x0  #load_A_div
    .insn r 0x7b,    0x2,   0x2,  x0,  a1, x0  #load_B
    .insn r 0x7b,    0x2,   0x3,  x0,  a2, x0  #load_P
    .insn r 0x7b,    0x0,   0x5,  x0,  x0, x0  #Startwork
    .insn r 0x7b,    0x2,   0x4,  x0,  a3, x0  #Writeback
    ret