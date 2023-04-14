module  DFF_CARRY(c_out,c_in,clk,we,clr);
  output c_out;
  input  c_in,clk,we,clr;  
  reg  c_out;

  always @ (posedge clk)
	   begin
		    if(clr)
		       c_out<=1'b0;
		    else if(we)
					 c_out<=c_in;
		    else 
					 c_out<=c_out;
	   end
endmodule