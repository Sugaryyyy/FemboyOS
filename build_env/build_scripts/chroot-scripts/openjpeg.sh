cd /sources/
wget -nc https://github.com/uclouvain/openjpeg/archive/v2.5.0/openjpeg-2.5.0.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -v build &&
cd       build &&

cmake -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DBUILD_STATIC_LIBS=OFF .. &&
make

make install &&

pushd ../doc &&
  for man in man/man?/* ; do
      install -v -D -m 644 $man /usr/share/$man
  done
popd

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
