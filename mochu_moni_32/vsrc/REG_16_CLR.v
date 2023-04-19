//清零 使能 16位寄存器
module  REG_16_CLR(regout,regin,clk,we,clr);
  output [15:0] regout;
  input  clk,we,clr;
  input  [15:0] regin;
  reg [15:0] regout;

  always @ (posedge clk)
	   begin
		    if(clr)
		       regout<=16'd0;
		    else if(we)
					 regout<=regin;
		    else 
					 regout<=regout;
	   end
endmodule