`timescale 1ns / 1ns
module  BCLA_ADD_16_tb;      
  wire [15:0] sum;
  wire c_out;
  reg [15:0] a,b;
  reg c_in,clk;
  
  BCLA_ADD_16  BCLA_ADD_16(sum,c_out,a,b,c_in);
  
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      #20   a=16'd126;
            b=16'd218;
            c_in=1'd0;
      #100  a=16'd319;
            b=16'd456;
            c_in=1'd1;
      #100  a=16'd5128;
            b=16'd6379;
            c_in=1'd0;
      #100  a=16'd7562;
            b=16'd8396;
            c_in=1'd1;
      #100  a=16'd65532;
            b=16'd8;
            c_in=1'd0;
	    #200  $finish;		
    end					
endmodule 
