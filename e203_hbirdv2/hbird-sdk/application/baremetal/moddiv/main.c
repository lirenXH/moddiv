#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "hbird_sdk_soc.h"
extern void moddiv();
int main(void)
{
    moddiv();
    printf("%d: moddiv complete!\r\n");
    return 0;
}

