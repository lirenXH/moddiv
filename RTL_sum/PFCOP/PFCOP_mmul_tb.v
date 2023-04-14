`timescale 1ns / 1ns
module  PFCOP_mmul_tb;
  wire [15:0] dataout;
  wire madd_msub_rdy,mmul_rdy,minv_mdiv_rdy;
  reg clk,rst,load_en,madd_en,msub_en,mmul_en,minv_mdiv,minv_mdiv_en,out_en;
  reg [3:0] load_addr;
  reg [15:0] datain;
  reg [1:0] out_addr;
  reg [255:0] a,b,p,correct_result;
  reg [511:0] a_mul_b;
  
  PFCOP  PFCOP(dataout,madd_msub_rdy,mmul_rdy,minv_mdiv_rdy,clk,rst,load_en,load_addr,
              datain,madd_en,msub_en,mmul_en,minv_mdiv,minv_mdiv_en,out_en,out_addr);
    
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      #20   rst=1;
            load_en=0;
            madd_en=0;
            msub_en=0;
            mmul_en=0;
            minv_mdiv_en=0;
            out_en=0;
      #200  rst=0;
            //a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            //b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;            
            a=256'h5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            b=256'h59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            p=256'hFFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            datain=a[15:0];
            load_en=1;
            load_addr=3;          
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
      #100  load_addr=4;            
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
      #100  load_addr=5;
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
      #100  load_en=0;
            mmul_en=1;
            a_mul_b=a*b;
            correct_result=a_mul_b % p;
      #100  mmul_en=0;
      #1000000  out_en=1;
                out_addr=1;
      #1600 out_en=0;
      #200  $finish;		
    end					
endmodule 
