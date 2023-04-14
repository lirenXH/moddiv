`timescale 1ns / 1ns
module  MMUL_tb;
  wire [15:0] regcout,regdout,regbout;
  wire [1:0] c_flag;
  wire  mmul_rdy;
  reg [15:0] datain;
  reg  clk,rst,mmul_en,loada,loadb,loadp,outc,outd,outb;
  reg [255:0] a,b,p,correct_result; 
  reg [511:0] a_mul_b;
  
   
  MMUL  MMUL(regcout,regdout,regbout,c_flag,mmul_rdy,
             datain,clk,rst,mmul_en,loada,loadb,loadp,outc,outd,outb);
    
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      #20   rst=1;
            mmul_en=0;
            loada=0;
            loadb=0;
            loadp=0;
            outc=0;
            outd=0;
            outb=0;
      #200  rst=0;
            a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            //a=256'h8FE30BBF_F2660BE1_715A4589_334C74C7;
            //b=256'hD0A9877C_C62A4740_02DF32E5_2139F0A0;
            //p=256'hFFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            //a=256'h6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            //b=256'h6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //p=256'hFFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;            
            //a=256'h5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            //b=256'h59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //p=256'hFFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;            
            datain=a[15:0];
            loada=1;            
      #100  datain=a[31:16];
      #100  datain=a[47:32];
      #100  datain=a[63:48];
      #100  datain=a[79:64];
      #100  datain=a[95:80];
      #100  datain=a[111:96];
      #100  datain=a[127:112];
      #100  datain=a[143:128];
      #100  datain=a[159:144];
      #100  datain=a[175:160];
      #100  datain=a[191:176];
      #100  datain=a[207:192];
      #100  datain=a[223:208];
      #100  datain=a[239:224];
      #100  datain=a[255:240];      
      #100  loada=0;
            loadb=1;            
            datain=b[15:0];
      #100  datain=b[31:16];
      #100  datain=b[47:32];
      #100  datain=b[63:48];
      #100  datain=b[79:64];
      #100  datain=b[95:80];
      #100  datain=b[111:96];
      #100  datain=b[127:112];
      #100  datain=b[143:128];
      #100  datain=b[159:144];
      #100  datain=b[175:160];
      #100  datain=b[191:176];
      #100  datain=b[207:192];
      #100  datain=b[223:208];
      #100  datain=b[239:224];
      #100  datain=b[255:240];
      #100  loadb=0;
            loadp=1;
            datain=p[15:0];
      #100  datain=p[31:16];
      #100  datain=p[47:32];
      #100  datain=p[63:48];
      #100  datain=p[79:64];
      #100  datain=p[95:80];
      #100  datain=p[111:96];
      #100  datain=p[127:112];
      #100  datain=p[143:128];
      #100  datain=p[159:144];
      #100  datain=p[175:160];
      #100  datain=p[191:176];
      #100  datain=p[207:192];
      #100  datain=p[223:208];
      #100  datain=p[239:224];
      #100  datain=p[255:240];      
      #100  loadp=0;
            mmul_en=1;
            a_mul_b=a*b;
            correct_result=a_mul_b%p;
      #100  mmul_en=0;
      #1000000 outc=1;
               outd=1;
               outb=1;
      #1600 outc=0;
            outd=0;
            outb=0;                
	    #200  $finish;		
    end					
endmodule 
