cd /sources/
wget -nc https://download.osgeo.org/libtiff/tiff-4.4.0.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p libtiff-build &&
cd       libtiff-build &&

cmake -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/libtiff-4.4.0 \
      -DCMAKE_INSTALL_PREFIX=/usr -G Ninja .. &&
ninja

ninja install
sed -i /Version/s/\$/$(cat ../VERSION)/ /usr/lib/pkgconfig/libtiff-4.pc

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
