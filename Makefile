default: check

COBOL_PREFIX=/home/eric/builds/gnucobol-2.2

COBC=$(COBOL_PREFIX)/bin/cobc

hello: hello.cobol
	$(COBC) -x -free hello.cobol -o hello

check-hello: hello
	LD_LIBRARY_PATH=$(COBOL_PREFIX)/lib/ ./hello

hello2: hello2.cobol
	$(COBC) -x -free hello2.cobol -o hello2

check-hello2: hello2
	LD_LIBRARY_PATH=$(COBOL_PREFIX)/lib/ ./hello2

check: check-hello check-hello2
	@echo "ok"

clean:
	rm -fv hello hello2
