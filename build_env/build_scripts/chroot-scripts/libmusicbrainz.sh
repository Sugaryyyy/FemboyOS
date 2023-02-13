cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

patch -Np1 -i ../libmusicbrainz-5.1.0-cmake_fixes-1.patch

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
