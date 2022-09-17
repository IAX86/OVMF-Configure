DESTDIR = /usr/bin
SHELL = /bin/bash

all: ia32 x64

x64: ovmfconfigure-x64.bash
	cp ovmfconfigure-x64.bash ovmfconfigure-x64

ia32: ovmfconfigure-ia32.bash
	cp ovmfconfigure-ia32.bash ovmfconfigure-ia32

install: ovmfconfigure-ia32 ovmfconfigure-x64
	mkdir -p '$(DESTDIR)'
	cp -t $(DESTDIR) ovmfconfigure-ia32 ovmfconfigure-x64

clean-all:
	rm -f ovmfconfigure-*

clean:
	rm -f ovmfconfigure-*.bash

test:
	echo It works!