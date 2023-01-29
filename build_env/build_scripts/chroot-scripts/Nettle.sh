cd /sources/
wget https://ftp.gnu.org/gnu/nettle/nettle-3.8.1.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --disable-static &&
make

make install &&
chmod   -v   755 /usr/lib/lib{hogweed,nettle}.so &&
install -v -m755 -d /usr/share/doc/nettle-3.8.1 &&
install -v -m644 nettle.html /usr/share/doc/nettle-3.8.1

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
