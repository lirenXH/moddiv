`timescale 1ns / 1ns
module  MMUL_ref;
  reg [256:0] a,b,c,p,ab_mod_p; 
  reg [511:0] a_mul_b;
  reg clk;
     
 
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin      
      a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
      b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
      p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
      a_mul_b=a*b;
      ab_mod_p=a_mul_b%p;
      c=0;
      while(a)
        begin
          #100 if(a[0]) c=c+b;
               $display("c=%h,b=%h",c,b);
          #100 if(c>=p) c=c-p;
               $display("c=%h,p=%h",c,p);
          #100 a=a>>1;
          #100 b=b<<1;
          #100 if(b>=p) b=b-p;
               $display("b=%h,p=%h",b,p);          
        end          
	    #200  $finish;		
    end					
endmodule 
