#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "hbird_sdk_soc.h"
 extern void mmod(const int a_addr,const int p_addr,const int raddr);
 extern void mdiv(const int a_addr,const int b_addr,const int p_addr,const int raddr);
int getIndexOfSigns(char ch);
int main()
{
    int   *a_ptr;
    int   *b_ptr;
    int   *p_ptr;
    int   raddr  = 0x90001000;                          //结果基地址
    int   a_addr = 0x90001100;
    int   b_addr = 0x90001120;
    int   p_addr = 0x90001140;
    int   a_value[8],b_value[8],p_value[8];
    char  a_value_t[256] = "32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7_";
    char  b_value_t[256] = "BC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0_";
    char  p_value_t[256] = "FFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF_";
    int   div_or_mod = 0;//0 div 1 mod
    a_ptr = (int *)a_addr;
    b_ptr = (int *)b_addr;
    p_ptr = (int *)p_addr;

	int t = 1;
    printf("enter value a = ");
	for(int i = 0;i < 8;i++)                       //存入数据A
	{
        for(int j = 8;j >=0 ;j--){                //额外一个给_
            if(a_value_t[i*9 + j]!= '_'){
                a_value[i] = a_value[i] + t * getIndexOfSigns(a_value_t[i*9 + j]);
                t = t * 16;
            }
	    }
        t = 1;
        printf("%08x_",a_value[i]);
    }

    printf("\n");
    for(int i = 7;i >= 0;i--){
        *a_ptr = a_value[i];
        //printf("write %08x addr %08x\n",a_value[i],a_ptr);
        a_ptr = a_ptr + 1;//1 对应32bit
    }

    if(div_or_mod == 0){                           //若为模除存入数据B
        printf("enter value b = ");
        for(int i = 0;i < 8;i++)
        {
            for(int j = 8;j >=0 ;j--){                
                if(b_value_t[i*9 + j]!= '_'){
                    b_value[i] = b_value[i] + t * getIndexOfSigns(b_value_t[i*9 + j]);
                    t = t * 16;
                }
            }
            t = 1;
            printf("%08x_",b_value[i]);
        }
        printf("\n");
        for(int i = 7;i >= 0;i--){
            *b_ptr = b_value[i];
            //printf("write %08x addr %08x\n",a_value[i],a_ptr);
            b_ptr = b_ptr + 1;
        }
    }

    printf("enter value p = ");                    //存入数据P
	for(int i = 0;i < 8;i++)
	{
        for(int j = 8;j >=0 ;j--){                
            if(p_value_t[i*9 + j]!= '_'){
                p_value[i] = p_value[i] + t * getIndexOfSigns(p_value_t[i*9 + j]);
                t = t * 16;
            }
	    }
        t = 1;
        printf("%08x_",p_value[i]);
    }

    printf("\n");
    for(int i = 7;i >= 0;i--){
        *p_ptr = p_value[i];
        //printf("write %08x addr %08x\n",a_value[i],a_ptr);
        p_ptr = p_ptr + 1;
    }


    if(div_or_mod == 0){
        printf("mdiv begin!\r\n");                 //调用NICE模块
        mdiv(a_addr,b_addr,p_addr,raddr);          //模除
        printf("mdiv complete!\r\nresult = "); 
    }else{
        printf("mmod begin!\r\n");                 
        mmod(a_addr,p_addr,raddr);                 //模逆
        printf("mmod complete!\r\nresult = "); 
    }                

    for (int i = 7; i >= 0; i--){                  //结果打印
        raddr =  0x90001000 + i * 4;
        printf("%08x_",*(int *)raddr);
    }
    printf("\n");
    return 0;
}
 
int getIndexOfSigns(char ch)
{
    if(ch >= '0' && ch <= '9')
    {
        return ch - '0';
    }
    if(ch >= 'A' && ch <='F') 
    {
        return ch - 'A' + 10;
    }
    if(ch >= 'a' && ch <= 'f')
    {
        return ch - 'a' + 10;
    }
    
    return -1;
}
