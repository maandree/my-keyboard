SHELL=bash

all: maandree-16.psfu.gz

maandree-16.psf: maandree-16
	txt2psf maandree-16 maandree-16.psf

maandree-16.psfu: maandree-16.psf
	psfaddtable maandree-16.psf <(psfgettable <(gunzip < /usr/share/kbd/consolefonts/lat9w-16.psfu.gz)) maandree-16.psfu

maandree-16.psfu.gz: maandree-16.psfu
	gzip maandree-16.psfu

install:
	maandree-16.psfu.gz /usr/share/kbd/consolefonts/maandree-16.psfu.gz

depends:
	@echo 'nafe: building psf file'
	@echo 'kbd:  converting psf to psfu'

