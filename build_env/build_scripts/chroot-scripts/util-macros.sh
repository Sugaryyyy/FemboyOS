#!/bin/bash 
cd /sources/
wget -nc https://www.x.org/pub/individual/util/util-macros-1.20.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure $XORG_CONFIG

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
