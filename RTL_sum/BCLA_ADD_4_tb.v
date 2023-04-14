`timescale 1ns / 1ns
module  BCLA_ADD_4_tb;      
  wire [3:0] sum;
  wire g,p;
  reg [3:0] a,b;
  reg c_in;     
  reg clk;
  
  BCLA_ADD_4 BCLA_ADD_4(sum,g,p,a,b,c_in);
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
	begin 
    #20   a=4'd1;
          b=4'd2;
          c_in=1'd0;
    #100  a=4'd3;
          b=4'd4;
          c_in=1'd1;
    #100  a=4'd5;
          b=4'd6;
          c_in=1'd0;
    #100  a=4'd7;
          b=4'd8;
          c_in=1'd1;
    #100  a=4'd7;
          b=4'd8;
          c_in=1'd0;
	  #200  $finish;		
	end					
endmodule 
