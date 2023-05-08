#!/bin/bash 
. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr   \
            --host=$LFS_TGT

make

make DESTDIR=$LFS install

. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
