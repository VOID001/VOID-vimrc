PWD = $(shell pwd)

.PHONY: install clean

simulation:
	- @stow --dir=$(shell pwd)/../ $(shell dirname $PWD) -n -v

install:
	- @echo "WARNING! This operation will install the configuration files into your filesystem, really proceeding ? (Ctrl-C to abort)"
	- @read
	- @stow --dir=$(shell pwd)/../ $(shell dirname $PWD) --target=/home/$(USER)
