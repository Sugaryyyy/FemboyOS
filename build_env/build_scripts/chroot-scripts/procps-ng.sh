#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.2 \
            --disable-static                        \
            --disable-kill                          \
            --with-systemd

make

#make check # Uncomment if you want to run tests. One test named free with commit may fail if some applications with a custom memory allocator (for example, JVM and Web browsers) are running on the host distro. 

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
