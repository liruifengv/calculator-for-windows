.PHONY: init clean

calculator: src/main.c
	gcc $(pkg-config --cflags gtk4) -o output/calculator src/main.c $(pkg-config --libs gtk4)

init:
	test -d output || mkdir output

clean:
	rm -f output/*
