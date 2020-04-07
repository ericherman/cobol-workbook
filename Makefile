default: check

COBOL_PREFIX=/home/eric/builds/gnucobol-2.2

#  -x                    build an executable program
#  -F, -free             use free source format
#  -fixed                use fixed source format (default)
COBC_FLAGS= -x -free
COBC=$(COBOL_PREFIX)/bin/cobc $(COBC_FLAGS)

COBENV=LD_LIBRARY_PATH=$(COBOL_PREFIX)/lib/

hello: hello.cobol
	$(COBC) hello.cobol -o hello

check-hello: hello
	$(COBENV) ./hello

hello2: hello2.cobol
	$(COBC) hello2.cobol -o hello2

check-hello2: hello2
	$(COBENV) ./hello2

check: check-hello check-hello2
	@echo "ok"

clean:
	rm -fv hello hello2
