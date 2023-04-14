module  REG_16_SET(regout,regin,clk,we,set);
  output [15:0] regout;
  input  clk,we,set;
  input  [15:0] regin;
  reg [15:0] regout;

  always @ (posedge clk)
	   begin
		    if(set)
		       regout<=16'd1;
		    else if(we)
					 regout<=regin;
		    else 
					 regout<=regout;
	   end
endmodule