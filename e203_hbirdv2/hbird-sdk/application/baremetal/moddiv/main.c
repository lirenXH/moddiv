#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "hbird_sdk_soc.h"
extern void mmod();
extern void mdiv();
int main(void)
{
    printf("moddiv begin!\r\n");//想办法吧加密结果打印出来
    //mmod();
    mdiv();
    printf("moddiv complete!\r\n");
    return 0;
}

