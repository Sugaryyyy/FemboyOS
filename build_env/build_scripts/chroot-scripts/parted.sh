#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr --disable-static &&
make &&

make -C doc html                                       &&
makeinfo --html      -o doc/html       doc/parted.texi &&
makeinfo --plaintext -o doc/parted.txt doc/parted.texi

make install &&
install -v -m755 -d /usr/share/doc/parted-3.5/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/parted-3.5/html &&
install -v -m644    doc/{FAT,API,parted.{txt,html}} \
                    /usr/share/doc/parted-3.5
                    
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
