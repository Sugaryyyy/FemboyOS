cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir bld &&
cd    bld &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DGIT_ARCHETYPE=1           \
      -Wno-dev ../source          &&
make -j$(nproc)

make install &&
rm -vf /usr/lib/libx265.a 

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
