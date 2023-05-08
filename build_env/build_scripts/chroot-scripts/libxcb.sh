#!/bin/bash 
cd /sources/
wget  https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.15.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
PYTHON=python3                \
./configure $XORG_CONFIG      \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.15 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
