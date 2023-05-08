#!/bin/bash 
cd /sources/
wget -nc https://www.x.org/pub/individual/lib/libXdmcp-1.1.4.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure $XORG_CONFIG --docdir=/usr/share/doc/libXdmcp-1.1.4 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
