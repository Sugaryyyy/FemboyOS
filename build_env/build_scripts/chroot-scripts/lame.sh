#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr --enable-mp3rtp --disable-static &&
make

make pkghtmldir=/usr/share/doc/lame-3.100 install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
