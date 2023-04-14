module  CYC_SHI_REG_256(regout,regin,clk,we,sel_cyc);
  output [15:0] regout;
  input [15:0] regin;
  input  clk,we,sel_cyc;
  wire [15:0] muxout;        

  MUX21_16  MUX21_16(muxout,sel_cyc,regin,regout);
  SHI_REG_256  SHI_REG_256(regout,muxout,clk,we);  
endmodule