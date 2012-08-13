LIBPATH=/usr/lib
HEADERPATH=/usr/include/libsocket

all: libsocket libsocketpp

libsocket:
	cd C; \
	make so

libsocketpp:
	cd C++; \
	make so

install: install-headers
	cd C; make install; \
	cd ../C++; make install

install-headers:
	mkdir -p $(HEADERPATH); \
	cp headers/*.h* $(HEADERPATH)

clean:
	rm *.so; \
	cd C; make clean; \
	cd ../C++; make clean
