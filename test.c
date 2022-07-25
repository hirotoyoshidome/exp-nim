#include <stdio.h>
#include "lib.h"

// wrap.
void callNimProcTest()
{
    // TODO 動いていない
    // Nimの初期化
    NimMain();

    // 呼び出し
    // helloWorld();
}

int main()
{
    callNimProcTest();
    printf("%s\n", "done");
    return 0;
}
