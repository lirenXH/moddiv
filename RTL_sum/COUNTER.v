module COUNTER(count,clk,rst,count_en); 
	output [3:0] count;
	input clk,rst,count_en;
	reg  [3:0] count;
	
	always @(posedge clk)
		if(rst)
			count <= 4'd0; 
		else	if(count_en)
			count <= count+1;
		else
			count <= count;		
endmodule