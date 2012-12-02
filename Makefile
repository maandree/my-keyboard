MAP = sv-maandree

default:
	sudo loadkeys "./$(MAP).map"

use: install
	loadkeys "$(MAP)"

compress:
	gzip -9f < "$(MAP).map" > "$(MAP).map.gz"

install: compress
	install -m644 "$(MAP).map.gz" "/usr/share/kbd/keymaps/i386/qwerty/"

clean:
	if [ -f "$(MAP).map.gz" ]; then  rm "$(MAP).map.gz";  fi

.PHONY: default use compress clean

