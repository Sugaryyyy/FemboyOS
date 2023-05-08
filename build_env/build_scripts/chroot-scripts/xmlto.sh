#!/bin/bash 
cd /sources/
wget -nc https://releases.pagure.org/xmlto/xmlto-0.0.28.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
LINKS="/usr/bin/links" \
./configure --prefix=/usr &&

make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
