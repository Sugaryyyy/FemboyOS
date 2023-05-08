#!/bin/bash 
cd /sources/
wget -nc https://downloads.xiph.org/releases/flac/flac-1.4.2.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr                                \
            --disable-thorough-tests                     \
            --docdir=/usr/share/doc/flac-1.4.2          &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
