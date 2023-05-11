.global mmod 
.global mdiv
mmod:
    li s3,0x90000100        #s3 19 为a基地址寄存器   9000_0008有存程序其他数据 使用会出问题 
    li t0,0x334C74C7 
    sw t0, 0x0(s3)
    li t0,0x715A4589 
    sw t0, 0x4(s3)
    li t0,0xF2660BE1 
    sw t0, 0x8(s3)
    li t0,0x8FE30BBF 
    sw t0, 0xc(s3)
    li t0,0x6A39C994
    sw t0, 0x10(s3)
    li t0,0x5F990446
    sw t0, 0x14(s3)
    li t0,0x1F198119
    sw t0, 0x18(s3)
    li t0,0x32C4AE2C
    sw t0, 0x1c(s3)
    #store a complete
    li s4,0x90000120        #s4 20 为b基地址寄存器
    li t0,0x2139F0A0 
    sw t0, 0x0(s4)
    li t0,0x02DF32E5 
    sw t0, 0x4(s4)
    li t0,0xC62A4740 
    sw t0, 0x8(s4)
    li t0,0xD0A9877C 
    sw t0, 0xc(s4)
    li t0,0x6B692153
    sw t0, 0x10(s4)
    li t0,0x59BDCEE3
    sw t0, 0x14(s4)
    li t0,0xF4F6779C
    sw t0, 0x18(s4)
    li t0,0xBC3736A2
    sw t0, 0x1c(s4)       
    #store b complete
    li s5,0x90000140        #s5 21 为p基地址寄存器
    li t0,0xFFFFFFFF 
    sw t0, 0x0(s5)
    li t0,0xFFFFFFFF 
    sw t0, 0x4(s5)
    li t0,0x00000000 
    sw t0, 0x8(s5)
    li t0,0xFFFFFFFF
    sw t0, 0xc(s5)
    li t0,0xFFFFFFFF
    sw t0, 0x10(s5)
    li t0,0xFFFFFFFF
    sw t0, 0x14(s5)
    li t0,0xFFFFFFFF
    sw t0, 0x18(s5)
    li t0,0xFFFFFFFE
    sw t0, 0x1c(s5)       
    #store p complete
    li s6,0x90001000        #s6 22 为result基地址寄存器
   #.insn r opcode, func3, func7, rd, rs1, rs2
    #模逆
    .insn r 0x7b,    0x2,   0x8,  x0,  s3, x0  #load_A_inv
    .insn r 0x7b,    0x2,   0x3,  x0,  s5, x0  #load_P
    .insn r 0x7b,    0x0,   0x5,  x0,  x0, x0  #Startwork
    .insn r 0x7b,    0x2,   0x4,  x0,  s6, x0  #Writeback
    ret

mdiv:
    li s3,0x90000100        #s3 19 为a基地址寄存器   9000_0008有存程序其他数据 使用会出问题 
    li t0,0x334C74C7 
    sw t0, 0x0(s3)
    li t0,0x715A4589 
    sw t0, 0x4(s3)
    li t0,0xF2660BE1 
    sw t0, 0x8(s3)
    li t0,0x8FE30BBF 
    sw t0, 0xc(s3)
    li t0,0x6A39C994
    sw t0, 0x10(s3)
    li t0,0x5F990446
    sw t0, 0x14(s3)
    li t0,0x1F198119
    sw t0, 0x18(s3)
    li t0,0x32C4AE2C
    sw t0, 0x1c(s3)
    #store a complete
    li s4,0x90000120        #s4 20 为b基地址寄存器
    li t0,0x2139F0A0 
    sw t0, 0x0(s4)
    li t0,0x02DF32E5 
    sw t0, 0x4(s4)
    li t0,0xC62A4740 
    sw t0, 0x8(s4)
    li t0,0xD0A9877C 
    sw t0, 0xc(s4)
    li t0,0x6B692153
    sw t0, 0x10(s4)
    li t0,0x59BDCEE3
    sw t0, 0x14(s4)
    li t0,0xF4F6779C
    sw t0, 0x18(s4)
    li t0,0xBC3736A2
    sw t0, 0x1c(s4)       
    #store b complete
    li s5,0x90000140        #s5 21 为p基地址寄存器
    li t0,0xFFFFFFFF 
    sw t0, 0x0(s5)
    li t0,0xFFFFFFFF 
    sw t0, 0x4(s5)
    li t0,0x00000000 
    sw t0, 0x8(s5)
    li t0,0xFFFFFFFF
    sw t0, 0xc(s5)
    li t0,0xFFFFFFFF
    sw t0, 0x10(s5)
    li t0,0xFFFFFFFF
    sw t0, 0x14(s5)
    li t0,0xFFFFFFFF
    sw t0, 0x18(s5)
    li t0,0xFFFFFFFE
    sw t0, 0x1c(s5)       
    #store p complete
    li s6,0x90001000        #s6 22 为result基地址寄存器
   #.insn r opcode, func3, func7, rd, rs1, rs2
    # 模除
    .insn r 0x7b,    0x2,   0x1,  x0,  s3, x0  #load_A_div
    .insn r 0x7b,    0x2,   0x2,  x0,  s4, x0  #load_B
    .insn r 0x7b,    0x2,   0x3,  x0,  s5, x0  #load_P
    .insn r 0x7b,    0x0,   0x5,  x0,  x0, x0  #Startwork
    .insn r 0x7b,    0x2,   0x4,  x0,  s6, x0  #Writeback
    ret