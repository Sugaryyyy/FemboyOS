#!/bin/bash 
cd /sources/
rm -rf kdevelop-pg-qt/
git clone https://invent.kde.org/kdevelop/kdevelop-pg-qt
cd kdevelop-pg-qt

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
