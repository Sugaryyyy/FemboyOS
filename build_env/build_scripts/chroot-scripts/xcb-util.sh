#!/bin/bash 
cd /sources/
wget -nc https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure $XORG_CONFIG &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
