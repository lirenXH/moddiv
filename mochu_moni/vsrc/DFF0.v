//寄存器
module  DFF0(out,in,clk);
  output out;
  input  in,clk;  
  reg  out;

  always @ (posedge clk)
	   out<=in;
endmodule