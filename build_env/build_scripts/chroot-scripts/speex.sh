#!/bin/bash 
cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speex-1.2.1 &&
make

make install

echo "Making speexdsp :3"

cd ..                          &&
tar -xf speexdsp-1.2.1.tar.gz &&
cd speexdsp-1.2.1             &&

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speexdsp-1.2.1 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
