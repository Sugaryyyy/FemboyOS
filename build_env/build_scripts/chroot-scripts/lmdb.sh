#!/bin/bash 
cd /sources/
wget -nc $2
cp LMDB_0.9.29.tar.gz lmdb-LMDB_0.9.29.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

cd libraries/liblmdb &&
make                 &&
sed -i 's| liblmdb.a||' Makefile

make prefix=/usr install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
