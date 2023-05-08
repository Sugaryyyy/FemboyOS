#!/bin/bash 
cd /sources/
wget -nc https://github.com/harfbuzz/harfbuzz/releases/download/7.0.0/harfbuzz-7.0.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson --prefix=/usr        \
      --buildtype=release  \
      -Dgraphite2=enabled  &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
