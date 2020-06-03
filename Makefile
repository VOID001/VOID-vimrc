PWD = $(shell pwd)

# Use the Makefile string subsitution to retrieve the basedir name
PACKAGE = $(lastword $(subst /, , $(PWD)))

.PHONY: install clean uninstall

simulation:
	- @stow --dir=$(shell pwd)/../ $(PACKAGE) --target=/home/$(USER) -n -v

install:  ~/.vim/autoload/plug.vim
	- @echo "WARNING! This operation will install the configuration files into your filesystem, really proceeding ? (Ctrl-C to abort, Other keys to proceed)"
	- @read
	- @stow --dir=$(shell pwd)/../ $(PACKAGE) --target=/home/$(USER)

uninstall:
	- @stow -D --dir=$(shell pwd)/../ $(PACKAGE) --target=/home/$(USER)

~/.vim/autoload/plug.vim:
	- mkdir -p ~/.vim/autoload
	- @curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
