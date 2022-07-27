import std/net


# https://nim-lang.org/docs/net.html


proc main() =
    const host: string = "kichiru.com"
    const port: int8 = 80

    let socket = newSocket()
    var fd = socket.getFD()
    socket.connect(host, Port(port))


    socket.close()

main()
