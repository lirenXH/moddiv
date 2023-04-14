`timescale 1ns / 1ns
module  MINV_MDIV_tb;
  wire [15:0] regx1out,regx2out;  
  wire minv_mdiv_rdy,minv_mdiv_flag;  
  reg [15:0] datain;
  reg  clk,rst,minv_mdiv_en,loada,loadp,outx1,outx2,loadb,minv_mdiv;
  reg [255:0] a,b,p;
    
  MINV_MDIV  MINV_MDIV(regx1out,regx2out,minv_mdiv_rdy,minv_mdiv_flag,
                       datain,clk,rst,minv_mdiv,minv_mdiv_en,loada,loadb,loadp,outx1,outx2);
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      #20   rst=1;
            minv_mdiv_en=0;
            loada=0;
            loadb=0;
            loadp=0;
            outx1=0;
            outx2=0;
            minv_mdiv=1;//minv_mdiv=1,represent modular inversion operation,
                        //minv_mdiv=0,represent modular division operation b/a mod p.
                 
      #200  rst=0;
            a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //a=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //b=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            //a=5;
            //p=11;
            //a=256'h787968b4fa32c3fd2417842e73bbfeff2f3c848b6831d7e0ec65228b3937e498;
            //b=256'h63E4C6D3_B23B0C84_9CF84241_484BFE48_F61D59A5_B16BA06E_6E12D1DA_27C5249A;
            //p=256'h8542d69e4c044f18e8b92435bf6ff7de457283915c45517d722edb8b08f1dfc3;            
            //a=256'h421debd61b62eab6746434ebc3cc315e32220b3badd50bdc4c4e6c147fedd43d;
            //b=256'h0680512bcbb42c07d47349d2153b70c4e5d7fdfcbfa36ea1a85841b9e46e09a2;
            //p=256'h8542d69e4c044f18e8b92435bf6ff7de457283915c45517d722edb8b08f1dfc3;
            
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
            minv_mdiv_en=1;
      #100  minv_mdiv_en=0;
    end
  always@(posedge clk)
    if(minv_mdiv_rdy==1)
      begin
        #200 	outx1=1;
              outx2=1;
              
        #1500 outx1=0;
              outx2=0;
              
        #200 	$finish;
      end			
endmodule 
