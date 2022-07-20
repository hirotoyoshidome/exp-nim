### Exp Nim

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
