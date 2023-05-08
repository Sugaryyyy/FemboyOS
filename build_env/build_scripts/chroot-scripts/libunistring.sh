#!/bin/bash 
cd /sources
wget -nc https://ftp.gnu.org/gnu/libunistring/libunistring-1.1.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libunistring-1.1 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
