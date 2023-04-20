//使能置一寄存器  1
module RDY_FLA_REG(mmul_rdy,clk,mmul_en,set_mmul_rdy,has_done);
  output mmul_rdy;
  input clk,mmul_en,set_mmul_rdy,has_done;
  reg mmul_rdy;
  
  always @(posedge clk)
		  if(mmul_en || has_done)
			  mmul_rdy <= 0; 
		  else if(set_mmul_rdy)
			  mmul_rdy <= 1;
			else
			  mmul_rdy <= mmul_rdy;  		
endmodule