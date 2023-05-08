#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1

make
make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
