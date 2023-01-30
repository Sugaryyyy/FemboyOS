cd /sources/
wget -nc http://downloads.webmproject.org/releases/webp/libwebp-1.2.4.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr           \
            --enable-libwebpmux     \
            --enable-libwebpdemux   \
            --enable-libwebpdecoder \
            --enable-libwebpextras  \
            --enable-swap-16bit-csp \
            --disable-static        &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
