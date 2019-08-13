deps:
	mkdir -p bin lib tmp
build:
	make deps
	gcc -c src/hello.c -o tmp/hello.o \
		&& ar rcs lib/libhello.a tmp/hello.o
run:
	make build
	gcc -o bin/main example/main.c \
		-Llib -lhello \
		-Iinclude \
	chmod +x bin/* \
		&& ./bin/main
clean:
	rm -rf bin lib tmp
