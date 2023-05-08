#!/bin/bash 
cd /sources/
wget -nc $2
echo "Processing volume-key.sh >w<"

tar -xf volume_key-0.3.12.tar.gz
cd volume_key-volume_key-0.3.12/

autoreconf -fiv              &&
./configure --prefix=/usr    \
            --without-python &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
