module C_FLA_REG(c_flag,clk,mmul_en,c_flag_in,c_flag_we);
  output [1:0] c_flag;
  input clk,mmul_en,c_flag_we;
  input [1:0] c_flag_in;
  reg [1:0] c_flag;
  //c_flag=2'b00 represent that c is stored in regc.
  //c_flag=2'b01 represent that c is stored in regd.
  //c_flag=2'b10 represent that c is stored in regb.
  
  always @(posedge clk)
		  if(mmul_en)
		    c_flag <= 2'b00;//represent that c is stored in regc before operation start.
		  else if(c_flag_we)
			  c_flag <= c_flag_in;
			else
			  c_flag <= c_flag;		
endmodule