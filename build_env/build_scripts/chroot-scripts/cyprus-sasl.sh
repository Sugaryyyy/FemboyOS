#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure
make -j$(nproc)
make install
ln -s /usr/local/lib/sasl2 /usr/lib/sasl2

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
