#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1

make
make html

make install
make install-html

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
