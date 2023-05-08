#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make -f unix/Makefile generic_gcc

make prefix=/usr MANDIR=/usr/share/man/man1 -f unix/Makefile install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
