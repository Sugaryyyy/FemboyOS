cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr     \
            --disable-static  \
            --enable-lib-only \
            --docdir=/usr/share/doc/nghttp2-1.52.0 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
