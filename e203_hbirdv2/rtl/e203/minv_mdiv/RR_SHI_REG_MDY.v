//sel_rs=0,shift right 32bits,high 32bits from outside input regin;sel_rs=1,right shift 1bit.  1
//modfy: while right shift 1bit,the most left bit come from outside input bit256.
module  RR_SHI_REG_MDY(regout,bit256,regin,clk,we,sel_rs);
  output [255:0] regout;
  
  input [31:0] regin;
  input  clk,we,sel_rs,bit256;
  
  wire [31:0] regout0,regout1,regout2,regout3,regout4,regout5,regout6,regout7,
              muxout0,muxout1,muxout2,muxout3,muxout4,muxout5,muxout6,muxout7;        

  MUX21_32  MUX21_32_0(muxout0,sel_rs,regin,{bit256,regout0[31:1]});//sel_rs=0,select regin;sel_rs=1,select right shift 1bit.
  REG_32  REG_32_0(regout0,muxout0,clk,we);
  MUX21_32  MUX21_32_1(muxout1,sel_rs,regout0,{regout0[0],regout1[31:1]});
  REG_32  REG_32_1(regout1,muxout1,clk,we);
  MUX21_32  MUX21_32_2(muxout2,sel_rs,regout1,{regout1[0],regout2[31:1]});
  REG_32  REG_32_2(regout2,muxout2,clk,we);
  MUX21_32  MUX21_32_3(muxout3,sel_rs,regout2,{regout2[0],regout3[31:1]});
  REG_32  REG_32_3(regout3,muxout3,clk,we);
  MUX21_32  MUX21_32_4(muxout4,sel_rs,regout3,{regout3[0],regout4[31:1]});
  REG_32  REG_32_4(regout4,muxout4,clk,we);
  MUX21_32  MUX21_32_5(muxout5,sel_rs,regout4,{regout4[0],regout5[31:1]});
  REG_32  REG_32_5(regout5,muxout5,clk,we);
  MUX21_32  MUX21_32_6(muxout6,sel_rs,regout5,{regout5[0],regout6[31:1]});
  REG_32  REG_32_6(regout6,muxout6,clk,we);
  MUX21_32  MUX21_32_7(muxout7,sel_rs,regout6,{regout6[0],regout7[31:1]});
  REG_32  REG_32_7(regout7,muxout7,clk,we);
  
  assign regout={regout0,regout1,regout2,regout3,regout4,regout5,regout6,regout7};
       
endmodule