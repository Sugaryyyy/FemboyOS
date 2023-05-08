#!/bin/bash 
cd /sources/
wget -nc $2
cp v2.3.1.tar.gz fluidsynth-2.3.1.tar.gz 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr        \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 