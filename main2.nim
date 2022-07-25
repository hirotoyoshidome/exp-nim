import os

# ブロック(名前をつけることも可能, breakで抜けることもできる)
block:
    const filePath: string = "./sample.txt"
    var f: File = open(filePath, FileMode.fmRead)
    # deferは事後条件を設定できる(途中でreturnされた時とかでもチェックできるので便利)
    # pre, postでも事前チェックと事後チェックができる
    defer:
        close(f)

    # ファイルサイズ
    echo f.getFileSize()

    # 一行読み込み
    echo f.readLine()

    # 最後まで読み込み
    while f.endOfFile == false:
        echo f.readLine()



# ポインタ(varで宣言する必要がある？)
var
    num: int = 100
    # 型の指定が必要(GCされない)
    num_ptr: ptr int = num.addr
    # 型の指定は不要(GCされない)
    num_pointer: pointer = num.addr
    # GCされる（refはnewするための型）
    num_ref: ref int

    # GCの恩恵を受けたいならrefを使うのが良い。メモリとポインタを知っていればptrを使っても良い(解放する必要あり)


echo(num)

# ptr型は出力できない？
# echo num_ptr

# reprを使うと出力可能
echo repr(num_ptr)

# -> string
echo type(repr(num_ptr))

# これも不可
# echo num_pointer
# アドレスのみ表示でptrの出力とは異なる
echo repr(num_pointer)
# -> string
echo type(repr(num_pointer))

num_ref = new int
# ポインタへ代入する時は [] をつける(逆参照)
num_ref[] = 1000
# echo num_ref
echo repr(num_ref)
echo type(repr(num_ref))

# これで値が参照できる
echo num_ref[]
echo num_ptr[]

# pointer型はできない
# echo num_pointer[]

# Nimでは基本的に関数へ値を渡す時は参照渡しらしい。(値のコピーが発生しない)
