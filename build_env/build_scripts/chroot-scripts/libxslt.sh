#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i s/3000/5000/ libxslt/transform.c doc/xsltproc.{1,xml} &&

./configure --prefix=/usr --disable-static --without-python  &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
