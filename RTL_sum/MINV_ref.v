`timescale 1ns / 1ns
module  MINV_ref;
  reg [258:0] a,p,u,v,x1,x2,a_inv_mod_p,result;
  reg [517:0] product; 
  reg clk;
     
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin      
      //a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
      //a=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
      //p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
      //a=5;
      //p=11;
      a=256'h787968B4_FA32C3FD_2417842E_73BBFEFF_2F3C848B_6831D7E0_EC65228B_3937E498;
      p=256'h8542D69E_4C044F18_E8B92435_BF6FF7DE_45728391_5C45517D_722EDB8B_08F1DFC3;
      u=a;//1 step of binary algorithm for inversion in F(p) 
      v=p;
      x1=1;//2 step of binary algorithm for inversion in F(p)
      x2=0;
      
      while((u!=1)&&(v!=1))//3 step of binary algorithm for inversion in F(p)
        begin
          while(u[0]==0)//3.1 step of binary algorithm for inversion in F(p)
            begin
              #100  u=u>>1;$display("u=%h",u);
              #100  if(x1[0]==0)
                      begin x1={x1[258],x1[258:1]};$display("x1=%h",x1);end
                    else
                      begin x1=(x1+p);x1={x1[258],x1[258:1]};$display("x1=%h",x1);end
            end
          while(v[0]==0)//3.2 step of binary algorithm for inversion in F(p)
            begin
              #100  v=v>>1;$display("v=%h",v);
              #100  if(x2[0]==0)
                      begin x2={x2[258],x2[258:1]};$display("x2=%h",x2);end
                    else
                      begin x2=(x2+p);x2={x2[258],x2[258:1]};$display("x2=%h",x2);end
            end
          #100  if(u>=v)//3.3 step of binary algorithm for inversion in F(p)
                  begin
                    u=u-v;$display("u=%h",u);
                    x1=x1-x2;$display("x1=%h",x1);
                  end
                else
                  begin
                    v=v-u;$display("v=%h",v);
                    x2=x2-x1;$display("x2=%h",x2);
                  end
        end
        
      #100  if(u==1)//4 step of binary algorithm for inversion in F(p)
              begin
                while(x1[258]==1)
                  begin x1=x1+p;$display("x1=%h",x1);end
                a_inv_mod_p=x1 % p;$display("a_inv_mod_p=%h",a_inv_mod_p);
              end
            else
              begin
                while(x2[258]==1)
                  begin x2=x2+p;$display("x2=%h",x2);end                
                a_inv_mod_p=x2 % p;$display("a_inv_mod_p=%h",a_inv_mod_p);
              end
              
      #100  product=a_inv_mod_p*a;$display("product=%h",product);
      #100  result=product % p;$display("result=%h",result);
      #200  $finish;		
    end					
endmodule 
