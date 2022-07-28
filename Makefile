.PHONY:	init	main	main2	main3	main4	main5	nim-c

.SILENT:
init:
	nimble install

main:
	nim c main.nim && ./main

main2:
	nim c main2.nim && ./main2

main3:
	nim c main3.nim && ./main3

main4:
	nim c --app:lib --out:main4.so --threads:on main4.nim && python3 main.py

main5:
	nim c main5.nim && ./main5

nim-c:
	nim c --noMain --noLinking --header --nimcache:nim-cache lib.nim && gcc -w -I ./Nim-1.6.6/lib/ -I ./nim-cache/ ./nim-cache/*.c  test.c -o test.o && ./test.o
