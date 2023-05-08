#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i '/( oxygen/ s/)/scalable )/' CMakeLists.txt

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr -Wno-dev ..

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
