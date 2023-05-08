#!/bin/bash 
cd /sources/
wget -nc  https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --disable-static &&
make

make install &&
install -v -m644 doc/Vorbis* /usr/share/doc/libvorbis-1.3.7

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
