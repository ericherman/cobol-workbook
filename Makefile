# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright (C) 202o Eric Herman <eric@freesa.org>

# $@ : target label
# $< : the first prerequisite after the colon
# $^ : all of the prerequisite files
# $* : wildcard matched part

default: check

COBOL_PREFIX=/home/eric/builds/gnucobol-2.2

#  -x                    build an executable program
#  -F, -free             use free source format
#  -fixed                use fixed source format (default)
COBC_FLAGS= -x -free
COBC=$(COBOL_PREFIX)/bin/cobc $(COBC_FLAGS)

COBENV=LD_LIBRARY_PATH=$(COBOL_PREFIX)/lib/

hello: hello.cobol
	$(COBC) $< -o $@

check-hello: hello
	$(COBENV) ./$<

hello2: hello2.cobol
	$(COBC) $< -o $@

check-hello2: hello2
	$(COBENV) ./$<

check: check-hello check-hello2
	@echo "ok"

clean:
	rm -fv hello hello2
