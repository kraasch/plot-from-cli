

test:
	make clean
	cat ./test-data/dat_01 | python3 ./src/plot_bars.py
	make view
	make clean

view:
	sxiv ./temp.png

clean:
	rm -f ./temp.png

SHELL=/bin/bash

hub_update:
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/plot_bars.py)"    "${HOME}/.local/bin/plot_bars"
