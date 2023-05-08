#!/bin/bash 
cd /sources/
wget -nc $2
cp libspiro-dist-20220722.tar.gz libspiro-20220722.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
