//sel_ls=0,shift right 16bits,high 16bits from outside input regin;sel_ls=1,left shift 1bit.
module  LR_SHI_REG_CLR_sim(regout,b256,regin,clk,we,sel_ls,clr,reg257);
  output [15:0] regout;
  output b256;
  input [15:0] regin;
  input  clk,we,sel_ls,clr;
  
  output [256:0] reg257;
  
  wire [15:0] regout0,regout1,regout2,regout3,regout4,regout5,regout6,regout7,
              regout8,regout9,regout10,regout11,regout12,regout13,regout14,
              muxout0,muxout1,muxout2,muxout3,muxout4,muxout5,muxout6,muxout7,
              muxout8,muxout9,muxout10,muxout11,muxout12,muxout13,muxout14,muxout15;        

  MUX21_16  MUX21_16_0(muxout0,sel_ls,regin,{regout0[14:0],regout1[15]});//sel_ls=0,select regin;sel_ls=1,select left shift
  REG_16_CLR  REG_16_0(regout0,muxout0,clk,we,clr);
  MUX21_16  MUX21_16_1(muxout1,sel_ls,regout0,{regout1[14:0],regout2[15]});
  REG_16_CLR  REG_16_1(regout1,muxout1,clk,we,clr);
  MUX21_16  MUX21_16_2(muxout2,sel_ls,regout1,{regout2[14:0],regout3[15]});
  REG_16_CLR  REG_16_2(regout2,muxout2,clk,we,clr);
  MUX21_16  MUX21_16_3(muxout3,sel_ls,regout2,{regout3[14:0],regout4[15]});
  REG_16_CLR  REG_16_3(regout3,muxout3,clk,we,clr);
  MUX21_16  MUX21_16_4(muxout4,sel_ls,regout3,{regout4[14:0],regout5[15]});
  REG_16_CLR  REG_16_4(regout4,muxout4,clk,we,clr);
  MUX21_16  MUX21_16_5(muxout5,sel_ls,regout4,{regout5[14:0],regout6[15]});
  REG_16_CLR  REG_16_5(regout5,muxout5,clk,we,clr);
  MUX21_16  MUX21_16_6(muxout6,sel_ls,regout5,{regout6[14:0],regout7[15]});
  REG_16_CLR  REG_16_6(regout6,muxout6,clk,we,clr);
  MUX21_16  MUX21_16_7(muxout7,sel_ls,regout6,{regout7[14:0],regout8[15]});
  REG_16_CLR  REG_16_7(regout7,muxout7,clk,we,clr);
  MUX21_16  MUX21_16_8(muxout8,sel_ls,regout7,{regout8[14:0],regout9[15]});
  REG_16_CLR  REG_16_8(regout8,muxout8,clk,we,clr);
  MUX21_16  MUX21_16_9(muxout9,sel_ls,regout8,{regout9[14:0],regout10[15]});
  REG_16_CLR  REG_16_9(regout9,muxout9,clk,we,clr);
  MUX21_16  MUX21_16_10(muxout10,sel_ls,regout9,{regout10[14:0],regout11[15]});
  REG_16_CLR  REG_16_10(regout10,muxout10,clk,we,clr);
  MUX21_16  MUX21_16_11(muxout11,sel_ls,regout10,{regout11[14:0],regout12[15]});
  REG_16_CLR  REG_16_11(regout11,muxout11,clk,we,clr);
  MUX21_16  MUX21_16_12(muxout12,sel_ls,regout11,{regout12[14:0],regout13[15]});
  REG_16_CLR  REG_16_12(regout12,muxout12,clk,we,clr);
  MUX21_16  MUX21_16_13(muxout13,sel_ls,regout12,{regout13[14:0],regout14[15]});
  REG_16_CLR  REG_16_13(regout13,muxout13,clk,we,clr);
  MUX21_16  MUX21_16_14(muxout14,sel_ls,regout13,{regout14[14:0],regout[15]});
  REG_16_CLR  REG_16_14(regout14,muxout14,clk,we,clr);
  MUX21_16  MUX21_16_15(muxout15,sel_ls,regout14,{regout[14:0],1'b0});
  REG_16_CLR  REG_16_15(regout,muxout15,clk,we,clr);
  DFF1  DFF1(b256,regout0[15],clk,sel_ls); 
  
  assign reg257={b256,regout0,regout1,regout2,regout3,regout4,regout5,regout6,regout7,
              regout8,regout9,regout10,regout11,regout12,regout13,regout14,regout};
      
endmodule