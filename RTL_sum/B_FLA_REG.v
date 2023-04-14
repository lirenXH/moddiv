module B_FLA_REG(b_flag,clk,mmul_en,b_flag_in,b_flag_we);
  output [1:0] b_flag;
  input clk,mmul_en,b_flag_we;
  input [1:0] b_flag_in;
  reg [1:0] b_flag;
  //b_flag=2'b00 represent that b is stored in regc.
  //b_flag=2'b01 represent that b is stored in regd.
  //b_flag=2'b10 represent that b is stored in regb.
  
  always @(posedge clk)
		  if(mmul_en)
		    b_flag <= 2'b10;//represent that b is stored in regb before operation start.
		  else if(b_flag_we)
			  b_flag <= b_flag_in;
			else
			  b_flag <= b_flag;		
endmodule