all: submodule.update build

build:
	@hugo

clean:
	@rm -rf docs/*

submodule.init:
	@git submodule init

submodule.update: submodule.init
	@git submodule update --remote themes/minimal

dev:
	@hugo server -D
