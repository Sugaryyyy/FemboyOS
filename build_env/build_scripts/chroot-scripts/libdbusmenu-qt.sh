#!/bin/bash 
cd /sources/
wget -nc $2
cp libdbusmenu-qt_0.9.3+16.04.20160218.orig.tar.gz libdbusmenu-qt-0.9.3+16.04.20160218.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      -DWITH_DOC=OFF              \
      -Wno-dev .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
