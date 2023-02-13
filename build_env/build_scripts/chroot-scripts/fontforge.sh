cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir -p build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      -Wno-dev .. \
      -DENABLE_X11=ON &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
