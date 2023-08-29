.PHONY: init clean run

calculator: src/main.c
	gcc.exe -o output/calculator src/main.c $(shell pkg-config --libs gtk4) $(shell pkg-config --cflags gtk4)

run: calculator
	./output/calculator

init:
	test -d output || mkdir output

clean:
	rm -f output/*
