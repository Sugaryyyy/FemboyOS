cd /sources/
wget -nc https://github.com/jasper-software/jasper/archive/version-3.0.6/jasper-3.0.6.tar.gz
mv jasper-3.0.6.tar.gz jasper-version-3.0.6.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p BUILD &&
cd    BUILD &&

cmake -DCMAKE_INSTALL_PREFIX=/usr    \
      -DCMAKE_BUILD_TYPE=Release     \
      -DCMAKE_SKIP_INSTALL_RPATH=YES \
      -DJAS_ENABLE_DOC=NO            \
      -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/jasper-3.0.6 \
      ..  &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
