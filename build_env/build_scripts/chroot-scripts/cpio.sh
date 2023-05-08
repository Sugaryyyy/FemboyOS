#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/The name/,+2 d' src/global.c

./configure --prefix=/usr \
            --enable-mt   \
            --with-rmt=/usr/libexec/rmt &&
make &&
makeinfo --html            -o doc/html      doc/cpio.texi &&
makeinfo --html --no-split -o doc/cpio.html doc/cpio.texi &&
makeinfo --plaintext       -o doc/cpio.txt  doc/cpio.texi

make install &&
install -v -m755 -d /usr/share/doc/cpio-2.13/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/cpio-2.13/html &&
install -v -m644    doc/cpio.{html,txt} \
                    /usr/share/doc/cpio-2.13


. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
