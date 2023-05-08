#!/bin/bash 
cd /sources/
wget -nc  https://downloads.xiph.org/releases/ogg/libogg-1.3.5.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libogg-1.3.5 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
