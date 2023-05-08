//置一 使能 32位寄存器 1
module  REG_32_SET(regout,regin,clk,we,set);
  output [31:0] regout;
  input  clk,we,set;
  input  [31:0] regin;
  reg [31:0] regout;

  always @ (posedge clk)
	   begin
		    if(set)
		       regout<=32'd1;
		    else if(we)
					 regout<=regin;
		    else 
					 regout<=regout;
	   end
endmodule