#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21.1
        
make

#make check # Uncomment to run tests.

make install
chmod -v 0755 /usr/lib/preloadable_libintl.so

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
