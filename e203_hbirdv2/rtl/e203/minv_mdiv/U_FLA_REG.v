//指定flag输出寄存器  1
module U_FLA_REG(u_flag,clk,u_flag_rst,u_flag_set);
  output  u_flag;
  input  clk,u_flag_rst,u_flag_set;  
  reg  u_flag;
  //u_flag=1'b1 represent that u is stored in regu.
  //u_flag=1'b0 represent that u is stored in regt.
    
  always @(posedge clk)
		  if(u_flag_rst)
		    u_flag <= 1'b1;//represent that u is stored in regu before operation start.
		  else if(u_flag_set)
			  u_flag <= ~u_flag;
			else
			  u_flag <= u_flag;		
endmodule