#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
cd nspr                                                     &&
sed -ri '/^RELEASE/s/^/#/' pr/src/misc/Makefile.in &&
sed -i 's#$(LIBRARY) ##'   config/rules.mk         &&

./configure --prefix=/usr \
            --with-mozilla \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
