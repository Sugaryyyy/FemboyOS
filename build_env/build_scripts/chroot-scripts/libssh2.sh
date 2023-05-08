#!/bin/bash 
cd /sources/
wget https://www.libssh2.org/download/libssh2-1.10.0.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
