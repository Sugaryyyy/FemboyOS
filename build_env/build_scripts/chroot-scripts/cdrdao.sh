#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr --mandir=/usr/share/man &&
make

make install &&
install -v -m755 -d /usr/share/doc/cdrdao-1.2.4 &&
install -v -m644 README /usr/share/doc/cdrdao-1.2.4

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
