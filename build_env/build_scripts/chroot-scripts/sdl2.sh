#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr &&
make -j$(nproc)

make install              &&
rm -v /usr/lib/libSDL2*.a

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
