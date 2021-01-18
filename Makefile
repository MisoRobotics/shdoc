all: dist

build:
	mkdir build

dist: build
	cd build && cmake .. && cpack

install: dist
	sudo dpkg -i build/*.deb

clean:
	rm -rf build

.PHONY: all clean dist install
