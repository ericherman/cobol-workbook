default: check

COBOL_PREFIX=/home/eric/builds/gnucobol-2.2

COBC=$(COBOL_PREFIX)/bin/cobc

hello: hello.cobol
	$(COBC) -x -free hello.cobol -o hello

check: hello
	LD_LIBRARY_PATH=$(COBOL_PREFIX)/lib/ ./hello

clean:
	rm -fv hello
