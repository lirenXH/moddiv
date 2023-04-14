module  SHI_REG_256(regout,regin,clk,we);
  output [15:0] regout;
  input [15:0] regin;
  input  clk,we;
  wire [15:0] regout0,regout1,regout2,regout3,regout4,regout5,regout6,regout7,
              regout8,regout9,regout10,regout11,regout12,regout13,regout14;        

  REG_16  REG_16_0(regout0,regin,clk,we);
  REG_16  REG_16_1(regout1,regout0,clk,we);
  REG_16  REG_16_2(regout2,regout1,clk,we);
  REG_16  REG_16_3(regout3,regout2,clk,we);
  REG_16  REG_16_4(regout4,regout3,clk,we);
  REG_16  REG_16_5(regout5,regout4,clk,we);
  REG_16  REG_16_6(regout6,regout5,clk,we);
  REG_16  REG_16_7(regout7,regout6,clk,we);
  REG_16  REG_16_8(regout8,regout7,clk,we);
  REG_16  REG_16_9(regout9,regout8,clk,we);
  REG_16  REG_16_10(regout10,regout9,clk,we);
  REG_16  REG_16_11(regout11,regout10,clk,we);
  REG_16  REG_16_12(regout12,regout11,clk,we);
  REG_16  REG_16_13(regout13,regout12,clk,we);
  REG_16  REG_16_14(regout14,regout13,clk,we);
  REG_16  REG_16_15(regout,regout14,clk,we);  
     
endmodule