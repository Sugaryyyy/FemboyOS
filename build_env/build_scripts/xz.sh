#!/bin/bash 
. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.4.1

make

make DESTDIR=$LFS install

rm -v $LFS/usr/lib/liblzma.la

cd ..
rm -rf $1
. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
