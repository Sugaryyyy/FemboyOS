#!/bin/bash 
cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

tar -xf ../libsass-3.6.5.tar.gz &&
pushd libsass-3.6.5 &&

autoreconf -fi &&

./configure --prefix=/usr --disable-static &&
make -j$(nproc)

make install

popd &&
autoreconf -fi &&

./configure --prefix=/usr &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
