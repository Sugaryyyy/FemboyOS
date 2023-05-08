#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --mandir=/usr/share/man &&
make

make install &&
install -v -d -m755 /usr/share/doc/links-2.28 &&
install -v -m644 doc/links_cal/* KEYS BRAILLE_HOWTO \
    /usr/share/doc/links-2.28

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
