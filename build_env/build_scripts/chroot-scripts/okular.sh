cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

SKIP_OPTIONAL='LibSpectre;CHM;LibZip;DjVuLibre;EPub;QMobipocket;Discount'

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -DFORCE_NOT_REQUIRED_DEPENDENCIES="$SKIP_OPTIONAL" \
      -Wno-dev .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
