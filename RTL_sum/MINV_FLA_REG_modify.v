module MINV_FLA_REG_modify(minv_flag,clk,minv_flag_in,minv_flag_we);
  output  minv_flag;
  input  clk,minv_flag_we; 
  input  minv_flag_in; 
  reg  minv_flag;
  //minv_flag=1'b0 represent that minv is stored in regx1.
  //minv_flag=1'b1 represent that minv is stored in regx2.
    
  always @(posedge clk)
		  if(minv_flag_we)
			  minv_flag <= minv_flag_in;
			else
			  minv_flag <= minv_flag;		
endmodule