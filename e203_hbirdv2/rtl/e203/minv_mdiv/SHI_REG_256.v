//循环移位寄存器  1
module  SHI_REG_256(regout,regin,clk,we);
  output [31:0] regout;
  input [31:0] regin;
  input  clk,we;
  wire [31:0] regout0,regout1,regout2,regout3,regout4,regout5,regout6;        

  REG_32  REG_32_0(regout0,regin,clk,we);
  REG_32  REG_32_1(regout1,regout0,clk,we);
  REG_32  REG_32_2(regout2,regout1,clk,we);
  REG_32  REG_32_3(regout3,regout2,clk,we);
  REG_32  REG_32_4(regout4,regout3,clk,we);
  REG_32  REG_32_5(regout5,regout4,clk,we);
  REG_32  REG_32_6(regout6,regout5,clk,we);
  REG_32  REG_32_7(regout,regout6,clk,we);
 
     
endmodule