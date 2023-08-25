.PHONY: init clean

calculator: main.o add.o
	gcc -o output/calculator output/main.o output/add.o

main.o: add.o src/main.c
	gcc -c src/main.c -o output/main.o

add.o: src/add.h src/add.c
	gcc -c src/add.c -o output/add.o

init:
	test -d output || mkdir output

clean:
	rm -f output/*
