#!/bin/bash 
cd /sources/
wget -nc  https://people.freedesktop.org/~hughsient/releases/libgusb-0.3.10.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd    build &&

meson --prefix=/usr --buildtype=release -Ddocs=false .. &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
