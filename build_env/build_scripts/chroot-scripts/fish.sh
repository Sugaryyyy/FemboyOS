#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

cmake 

make

make install

ln -f /usr/local/bin/fish /usr/bin/fish

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
