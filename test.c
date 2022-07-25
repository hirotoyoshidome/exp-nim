#include <stdio.h>
#include "lib.h"

// wrap.
void callNimProcTest()
{
    // Nimの初期化
    NimMain();

    // 呼び出し
    char* hello = helloWorld();
    printf("%s\n", hello);
}

int main()
{
    callNimProcTest();
    printf("%s\n", "done");
    return 0;
}
