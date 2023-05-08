#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
gzip -cd ../libpng-1.6.39-apng.patch.gz | patch -p1

./configure --prefix=/usr --disable-static &&
make

make install &&
mkdir -v /usr/share/doc/libpng-1.6.39 &&
cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.39

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
