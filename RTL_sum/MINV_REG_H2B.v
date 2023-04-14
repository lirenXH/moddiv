module  MINV_REG_H2B(out,in,clk,we,clr,rs_en);
  output [1:0] out;
  input  [1:0] in;
  input  clk,we,clr,rs_en;  
  reg [1:0] out;

  always @ (posedge clk)
	   begin
		    if(clr)
		       out<=2'b00;		    
		    else if(we)
		       out<=in;		    
		    else if(rs_en)
		       out<={out[1],out[1]};
		    else
					 out<=out;		    
	   end
endmodule