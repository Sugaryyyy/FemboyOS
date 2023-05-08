#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

LIBS=-lm                      \
./configure --prefix=/usr     \
            --without-doxygen \
            --docdir=/usr/share/doc/gavl-1.4.0 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
