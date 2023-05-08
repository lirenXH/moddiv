//计数器 0-7 comlete
module COUNTER(count,clk,rst,count_en); 
	output [2:0] count;
	input clk,rst,count_en;
	reg  [2:0] count;
	
	always @(posedge clk)
		if(rst)
			count <= 3'd0; 
		else	if(count_en)
			count <= count+3'b1;
		else
			count <= count;		
endmodule