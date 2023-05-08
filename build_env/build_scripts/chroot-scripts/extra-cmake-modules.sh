#!/bin/bash 
cd /sources/
wget -nc https://download.kde.org/stable/frameworks/5.103/extra-cmake-modules-5.103.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/"lib64"/s/64//' kde-modules/KDEInstallDirsCommon.cmake &&

sed -e '/PACKAGE_INIT/i set(SAVE_PACKAGE_PREFIX_DIR "${PACKAGE_PREFIX_DIR}")' \
    -e '/^include/a set(PACKAGE_PREFIX_DIR "${SAVE_PACKAGE_PREFIX_DIR}")' \
    -i ECMConfig.cmake.in &&

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
