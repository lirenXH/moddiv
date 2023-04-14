module  DFF1(out,in,clk,we);
  output out;
  input  in,clk,we;  
  reg  out;

  always @ (posedge clk)
	   begin
		    if(we)
		       out<=in;		    
		    else
					 out<=out;		    
	   end
endmodule