#!/bin/bash 
cd /sources/
wget -nc $2
cp v0.13.2.tar.gz qtkeychain-0.13.2.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
