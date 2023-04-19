//使能 16位寄存器
module  REG_16(regout,regin,clk,we);
  output [15:0] regout;
  input  clk,we;
  input  [15:0] regin;
  reg [15:0] regout;

  always @ (posedge clk)
	   begin
		    if(we)
					 regout<=regin;
		    else 
					 regout<=regout;
	   end
endmodule