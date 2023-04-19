//使能 32位寄存器  1
module  REG_32(regout,regin,clk,we);
  output [31:0] regout;
  input  clk,we;
  input  [31:0] regin;
  reg [31:0] regout;

  always @ (posedge clk)
	   begin
		    if(we)
					 regout<=regin;
		    else 
					 regout<=regout;
	   end
endmodule