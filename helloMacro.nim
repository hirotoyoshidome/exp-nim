import macros


# マクロ
# *をマクロ名の後ろにつけることでpublicになる(つけないと別ファイルで呼び出しできない)
macro helloMacro*(): untyped =
    nnkStmtList.newTree(
        nnkCommand.newTree(
            newIdentNode("echo"),
            newLit("hello")
        )
    )
