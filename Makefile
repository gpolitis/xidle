# See LICENSE file for copyright and license details.

include config.mk

SRC = xidle.c
OBJ = ${SRC:.c=.o}

all: xidle

.c.o:
	@echo CC $<
	@${CC} -c $<

xidle: ${OBJ}
	@echo CC -o $@
	@${CC} -o $@ ${OBJ} ${LDFLAGS}

install: all
	@echo installing executable file to ${PREFIX}/bin
	@mkdir -p ${PREFIX}/bin
	@cp -f xidle ${PREFIX}/bin
	@chmod 755 ${PREFIX}/bin/xidle

uninstall:
	@echo removing executable file from ${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/xidle

.PHONY: all install uninstall
