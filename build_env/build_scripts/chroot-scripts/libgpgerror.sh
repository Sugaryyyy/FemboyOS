#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr &&
make

make install &&
install -v -m644 -D README /usr/share/doc/libgpg-error-1.46/README

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
