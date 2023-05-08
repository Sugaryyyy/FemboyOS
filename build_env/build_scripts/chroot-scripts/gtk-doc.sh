#!/bin/bash 
cd /sources/
wget -nc https://download.gnome.org/sources/gtk-doc/1.33/gtk-doc-1.33.2.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
autoreconf -fiv           &&
./configure --prefix=/usr &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
