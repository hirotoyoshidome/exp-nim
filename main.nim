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

# 関数を使う
echo add(2,3)
