#!/bin/bash 
cd /sources
wget -nc https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/2.2/shared-mime-info-2.2.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir -p build &&
cd    build &&

meson --prefix=/usr --buildtype=release -Dupdate-mimedb=true .. &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
