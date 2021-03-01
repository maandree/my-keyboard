.POSIX:

PREFIX = /usr
NAME   = maandree-16

LAT9W_16_PATH = /usr/share/kbd/consolefonts/lat9w-16.psfu.gz

all: maandree-16.psfu.gz

maandree-16.psf: maandree-16
	txt2psf maandree-16 maandree-16.psf

maandree-16.psfu: maandree-16.psf
	gunzip < $(LAT9W_16_PATH) | psfgettable - | psfaddtable maandree-16.psf - maandree-16.psfu

maandree-16.psfu.gz: maandree-16.psfu
	gzip -9f < maandree-16.psfu > maandree-16.psfu.gz

install:
	mkdir -p -- /usr/share/kbd/consolefonts/
	cp -- maandree-16.psfu.gz "$(DESTDIR)$(PREFIX)/share/kbd/consolefonts/$(NAME).psfu.gz"

uninstall:
	-rm -f -- "$(DESTDIR)$(PREFIX)/share/kbd/consolefonts/$(NAME).psfu.gz"

clean:
	-rm -f -- maandree-16.psfu.gz maandree-16.psfu maandree-16.psf

.PHONY: all install uninstall clean
