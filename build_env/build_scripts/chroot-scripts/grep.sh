#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i "s/echo/#echo/" src/egrep.sh

./configure --prefix=/usr

make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
