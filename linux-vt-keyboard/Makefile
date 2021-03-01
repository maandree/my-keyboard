.POSIX:

PREFIX = /usr
NAME    = sv-maandree


all: sv-maandree.map.gz

sv-maandree.map.gz: sv-maandree.map
	gzip -9f < sv-maandree.map > sv-maandree.map.gz

install: sv-maandree.map.gz
	mkdir -p -- "$(DESTDIR)$(PREFIX)/share/kbd/keymaps/i386/qwerty/"
	cp -- sv-maandree.map.gz "$(DESTDIR)$(PREFIX)/share/kbd/keymaps/i386/qwerty/$(NAME).map.gz"

uninstall:
	-rm -f -- "$(DESTDIR)$(PREFIX)/share/kbd/keymaps/i386/qwerty/$(NAME).map.gz"
	-rm -f -- "$(DESTDIR)$(PREFIX)/share/kbd/keymaps/i386/qwerty/$(NAME).map"

clean:
	-rm -f -- sv-maandree.map.gz

use:
	loadkeys ./sv-maandree.map

.PHONY: all install uninstall clean use
