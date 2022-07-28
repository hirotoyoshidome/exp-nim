# open arrays
proc showSize(oa: openArray[string]): int =
    return oa.len

var
    fruits: seq[string]
    caps: array[3, string]

caps = ["shibuya", "shinjuku", "shinagawa"]
echo caps

fruits.add("banana")
fruits.add("orange")

echo fruits

echo showSize(fruits)
echo showSize(caps)


# Varargs
proc showXargs(args: varargs[string]) =
    for a in args:
        echo a

showXargs("a", "b", "c")


# OOP
type
    # * is public
    Person* = object
        name: string
        age: int

var p1: Person = Person(name: "test", age: 20)
echo p1.name


# tuples
type
    Person2* = tuple
        name: string
        age: int
var p2: Person2 = (name: "test2", age: 30)
echo p2.name
# access index.
echo p2[1]



# procedural type
proc greet(word: string): string =
    return "Hello, " & word
proc communicate(pc: proc(x: string): string, word: string) =
    echo pc(word)

communicate(greet, "abc")
