import std/sequtils

# 基本構文(ほぼPython)

# コメントアウトはこのようにする

# ()がなくても問題ない
echo "Hello world"
# ;必要ない(pythonと同じ構文)
echo("Hello")

# 変数はvar, let, constで定義できる(letは定数, constはコンパイル時定数)
var
    a:int = 10
    b:string = "abc"

echo a
echo b

let c = 5;
echo(c)
# letは定数なので、再代入不可
# c = 6;

# constはコンパイル時定数
const d = "test"
echo d
# 再代入は不可
# d = "abc"

# if文
if a > c:
    echo("aの方が大きい")
else:
    echo "bの方が大きい"

# for文
for i in 1..10:
    echo i

# 配列
let ary = [1,2,3];
for i in ary:
    echo i

echo ary.len

# 関数(関数の場合は型が必要)
proc add(x:int, y:int): int =
    return x + y

# 戻り値の無い場合でも型が必要（returnがなくても最後の変数を返却する仕様のため）
proc show(x:string): string =
    discard """
    戻り値なし
    """
    echo x

# 関数を使う
echo add(2,3)
# 戻り値が必要ない場合はdiscardを指定して返却を捨てる必要がある
discard show("Hello")
# ↓はコンパイルエラーになる
# show("hello")

# 複数行のコメントもdiscardで実現できる
discard """
aaa
"""

# 定義のみの場合は = はなし
proc prt(x:string = "abc"): string

discard prt("aaa")
# 関数は使う前に定義する必要があるが、定義だけしておけば利用可能

# 引数のデフォルトも使える
discard prt()

proc prt(x:string = "abc"): string =
    echo x

# @[]はSeqs型(シークエンス) 可変長のリスト
let ary2 = @[1, 2]

echo ary2[0]

# 無名関数を利用する(import std/sequtils の必要あり)
echo ary2.map(proc (x:int):int = x+1)
# ↑と同じ意味
echo ary2.map do (x:int) -> int : x+1


# Pragmaはコンパイル時に指示を与えることができる
# discardable を与えると戻り値なしの関数を呼び出す時にdiscardする必要がなくなる
proc show_p(x:string): string {.discardable.} = 
    echo x
show_p("abc")

# イテレータの定義も可能
iterator mycnt(x:int,y:int): int =
    var c = x
    while c < y:
        yield c
        # これは単純にインクリメント
        inc(c)
# 定義したイテレータを使う
for i in mycnt(1,10):
    echo i


# 文字列結合
let str1:string = "abc"
let str2:string = "def"
echo str1 & str2

# これはエラー
# echo str1 + str2

# typeで独自の型の宣言ができる
type
    SubInt = range[0..5]

# 0-5の値しか設定できない
var sbi:SubInt = 0
# エラーになる
# var sbi2:SubInt = 6
