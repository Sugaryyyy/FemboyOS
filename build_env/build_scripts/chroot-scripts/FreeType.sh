#!/bin/bash 
cd /sources/
wget -nc https://downloads.sourceforge.net/freetype/freetype-2.13.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h  &&

./configure --prefix=/usr --enable-freetype-config --disable-static &&
make

make install 

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
