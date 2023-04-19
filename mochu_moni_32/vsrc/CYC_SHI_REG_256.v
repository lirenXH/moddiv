module  CYC_SHI_REG_256(regout,regin,clk,we,sel_cyc);
  output [31:0] regout;
  input [31:0] regin;
  input  clk,we,sel_cyc;
  wire [31:0] muxout;        

  MUX21_32  MUX21_32(muxout,sel_cyc,regin,regout);
  SHI_REG_256  SHI_REG_256(regout,muxout,clk,we);  
endmodule