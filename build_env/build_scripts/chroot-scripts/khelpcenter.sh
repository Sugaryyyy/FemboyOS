cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make

make install  &&

mv -v $KF5_PREFIX/share/kde4/services/khelpcenter.desktop /usr/share/applications/ &&
rm -rv $KF5_PREFIX/share/kde4

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
