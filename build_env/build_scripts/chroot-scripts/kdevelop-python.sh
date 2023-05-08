#!/bin/bash 
cd /sources/
rm -rf kdev-python/
git clone https://invent.kde.org/kdevelop/kdev-python
git checkout python310
cd kdev-python

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
