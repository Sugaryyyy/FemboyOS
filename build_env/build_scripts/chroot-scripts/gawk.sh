#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make

make LN='ln -f' install

mkdir -pv                                   /usr/share/doc/gawk-5.2.1
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.2.1

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
