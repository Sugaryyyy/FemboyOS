cd /sources/
wget -nc https://github.com/qpdf/qpdf/releases/download/v11.2.0/qpdf-11.2.0.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      -DBUILD_STATIC_LIBS=OFF     \
      -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/qpdf-11.2.0 \
      .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
