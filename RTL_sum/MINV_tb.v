`timescale 1ns / 1ns
module  MINV_tb;
  wire [15:0] regtout_16,regx1out,regx2out;  
  wire minv_rdy;  
  wire [1:0] minv_flag;  
  reg [15:0] datain;
  reg  clk,rst,minv_en,loada,loadp,outx1,outx2,outt;
  reg [255:0] a,p;
    
  MINV  MINV(regx1out,regx2out,regtout_16,minv_rdy,minv_flag,
             datain,clk,rst,minv_en,loada,loadp,outx1,outx2,outt);
  
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      #20   rst=1;
            minv_en=0;
            loada=0;
            loadp=0;
            outx1=0;
            outx2=0;
            outt=0;     
      #200  rst=0;
            //a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            //b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            a=5;
            p=11;            
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
            minv_en=1;
      #100  minv_en=0;
    end
  always@(posedge clk)
    if(minv_rdy==1)
      begin
        #200 	outx1=1;
              outx2=1;
              outt=1;
        #1500 outx1=0;
              outx2=0;
              outt=0;
        #200 	$finish;
      end			
endmodule 
