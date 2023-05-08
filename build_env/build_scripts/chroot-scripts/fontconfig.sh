#!/bin/bash 
cd /sources/
wget -nc https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.14.0.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs       \
            --docdir=/usr/share/doc/fontconfig-2.14.0 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
