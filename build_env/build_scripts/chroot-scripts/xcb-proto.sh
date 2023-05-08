#!/bin/bash 
cd /sources/
wget https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.15.2.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

PYTHON=python3 ./configure $XORG_CONFIG

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
