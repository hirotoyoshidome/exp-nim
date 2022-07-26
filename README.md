# Exp Nim

### Build

```
nim c main.nim
./main
```

### Docker

```
docker build -t mynim .
docker run --rm -it -d -v $(pwd):/var/nim --name mynim mynim:latest
docker exec -it mynim bash
```

### Trans C lang

```
# nim c --app:lib --noMain --noLinking --header --nimcache:nim-cache lib.nim

nim c --noMain --noLinking --header --nimcache:nim-cache lib.nim


# not working
wget https://github.com/nim-lang/Nim/archive/refs/tags/v1.6.6.zip
unzip v1.6.6.zip
gcc -w -I ./Nim-1.6.6/lib/ -I ./nim-cache/ ./nim-cache/*.c  test.c -o test.o
```

### nimble

```
# init
nimble init

# build
nimble build

# test
nimble test
```
