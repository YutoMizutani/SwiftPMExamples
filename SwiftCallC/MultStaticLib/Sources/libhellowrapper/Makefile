deps:
	bash -c "cd externals/libhello && make deps"
	mkdir -p bin lib tmp
build:
	make deps
	bash -c "cd externals/libhello && make build"
	gcc -c src/hellowrapper.c -o tmp/hellowrapper.o \
		-Iexternals/libhello/include \
		&& ar rcs \
			lib/libhellowrapper.a \
			tmp/hellowrapper.o
run:
	make build
	gcc example/main.c -o bin/main \
		-Lexternals/libhello/lib -lhello \
		-Llib \
		-Iinclude \
		&& chmod +x bin/* \
		&& ./bin/main
clean:
	bash -c "cd externals/libhello && make clean"
	rm -rf bin lib tmp
