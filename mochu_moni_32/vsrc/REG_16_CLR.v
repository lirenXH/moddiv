//清零 使能 32位寄存器 1
module  REG_32_CLR(regout,regin,clk,we,clr);
  output [31:0] regout;
  input  clk,we,clr;
  input  [31:0] regin;
  reg [31:0] regout;

  always @ (posedge clk)
	   begin
		    if(clr)
		       regout<=32'd0;
		    else if(we)
					 regout<=regin;
		    else 
					 regout<=regout;
	   end
endmodule