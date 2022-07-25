proc helloWorld(): cstring {.exportc, cdecl.} =
    return "HelloWorld"
