import std/strutils


#[
    comment
    comment
    comment
]#

proc main() =
    echo "Plase input something..."
    var name = readLine(stdin)
    echo name

    # just declare.
    var tmp: string
    # echo blank
    echo tmp
    tmp = "aaa"
    # echo aaa
    echo tmp

    # multi declare.(default init zero.)
    var x, y: int

    echo x, y, "aaa"

    let str_num: string = "121"
    let int_num: int64 = parseInt(str_num)
    echo str_num
    echo int_num

    # case statement
    case int_num
    of 0..100: echo "under 100"
    of 101..200: echo "between 100 and 200"
    else: discard

    # countdown
    for i in countdown(10,1):
        echo i

    # when statement (need const , let or var is Error)
    const when_int: int32 = 100
    when when_int == 50:
        echo "val is 50"
    elif when_int == 100:
        echo "val is 50"
    else:
        echo "unknown val"

    # Enum
    type
        Direction = enum
            north, south, east, west
    # not string.
    var d: Direction = south
    echo d
    echo type(d)

main()
