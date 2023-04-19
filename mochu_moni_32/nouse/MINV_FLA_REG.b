//两位使能寄存器
module MINV_FLA_REG(minv_flag,clk,minv_flag_in,minv_flag_we);
  output [1:0] minv_flag;
  input  clk,minv_flag_we; 
  input [1:0] minv_flag_in; 
  reg [1:0] minv_flag;
  //minv_flag=2'b00 represent that minv is stored in regx1.
  //minv_flag=2'b01 represent that minv is stored in regx2.
  //minv_flag=2'b11 represent that minv is stored in regt.
    
  always @(posedge clk)
		  if(minv_flag_we)
			  minv_flag <= minv_flag_in;
			else
			  minv_flag <= minv_flag;		
endmodule