//sel_rs=0,shift right 32bits,high 32bits from outside input regin;sel_rs=1,right shift 1bit.  1
//modfy: while right shift 1bit,the most left bit come from outside input bit256.
//add clr 0 function.2016.10.14
module  RR_SHI_REG_MDY_CLR(regout,bit256,regin,clk,we,sel_rs,clr);
  output [31:0] regout;
  
  input [31:0] regin;
  input  clk,we,sel_rs,bit256,clr;
  
  wire [31:0] regout0,regout1,regout2,regout3,regout4,regout5,regout6,
              muxout0,muxout1,muxout2,muxout3,muxout4,muxout5,muxout6,muxout7;        

  MUX21_32  MUX21_32_0(muxout0,sel_rs,regin,{bit256,regout0[31:1]});//sel_rs=0,select regin;sel_rs=1,select right shift 1bit.
  REG_32_CLR  REG_32_0(regout0,muxout0,clk,we,clr);
  MUX21_32  MUX21_32_1(muxout1,sel_rs,regout0,{regout0[0],regout1[31:1]});
  REG_32_CLR  REG_32_1(regout1,muxout1,clk,we,clr);
  MUX21_32  MUX21_32_2(muxout2,sel_rs,regout1,{regout1[0],regout2[31:1]});
  REG_32_CLR  REG_32_2(regout2,muxout2,clk,we,clr);
  MUX21_32  MUX21_32_3(muxout3,sel_rs,regout2,{regout2[0],regout3[31:1]});
  REG_32_CLR  REG_32_3(regout3,muxout3,clk,we,clr);
  MUX21_32  MUX21_32_4(muxout4,sel_rs,regout3,{regout3[0],regout4[31:1]});
  REG_32_CLR  REG_32_4(regout4,muxout4,clk,we,clr);
  MUX21_32  MUX21_32_5(muxout5,sel_rs,regout4,{regout4[0],regout5[31:1]});
  REG_32_CLR  REG_32_5(regout5,muxout5,clk,we,clr);
  MUX21_32  MUX21_32_6(muxout6,sel_rs,regout5,{regout5[0],regout6[31:1]});
  REG_32_CLR  REG_32_6(regout6,muxout6,clk,we,clr);
  MUX21_32  MUX21_32_7(muxout7,sel_rs,regout6,{regout6[0],regout[31:1]});
  REG_32_CLR  REG_32_7(regout,muxout7,clk,we,clr);
  // MUX21_16  MUX21_16_8(muxout8,sel_rs,regout7,{regout7[0],regout8[15:1]});
  // REG_16_CLR  REG_16_8(regout8,muxout8,clk,we,clr);
  // MUX21_16  MUX21_16_9(muxout9,sel_rs,regout8,{regout8[0],regout9[15:1]});
  // REG_16_CLR  REG_16_9(regout9,muxout9,clk,we,clr);
  // MUX21_16  MUX21_16_10(muxout10,sel_rs,regout9,{regout9[0],regout10[15:1]});
  // REG_16_CLR  REG_16_10(regout10,muxout10,clk,we,clr);
  // MUX21_16  MUX21_16_11(muxout11,sel_rs,regout10,{regout10[0],regout11[15:1]});
  // REG_16_CLR  REG_16_11(regout11,muxout11,clk,we,clr);
  // MUX21_16  MUX21_16_12(muxout12,sel_rs,regout11,{regout11[0],regout12[15:1]});
  // REG_16_CLR  REG_16_12(regout12,muxout12,clk,we,clr);
  // MUX21_16  MUX21_16_13(muxout13,sel_rs,regout12,{regout12[0],regout13[15:1]});
  // REG_16_CLR  REG_16_13(regout13,muxout13,clk,we,clr);
  // MUX21_16  MUX21_16_14(muxout14,sel_rs,regout13,{regout13[0],regout14[15:1]});
  // REG_16_CLR  REG_16_14(regout14,muxout14,clk,we,clr);
  // MUX21_16  MUX21_16_15(muxout15,sel_rs,regout14,{regout14[0],regout[15:1]});
  // REG_16_CLR  REG_16_15(regout,muxout15,clk,we,clr);
       
endmodule