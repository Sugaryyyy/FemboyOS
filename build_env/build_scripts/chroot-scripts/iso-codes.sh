#!/bin/bash 
cd /sources/
wget -nc $2
cp iso-codes_4.12.0.orig.tar.xz iso-codes-4.12.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
