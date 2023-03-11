cd /sources/
wget -nc https://poppler.freedesktop.org/poppler-23.02.0.tar.xz
wget -nc https://poppler.freedesktop.org/poppler-data-0.4.12.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build                      &&
cd    build                         &&

cmake  -DCMAKE_BUILD_TYPE=Release   \
       -DCMAKE_INSTALL_PREFIX=/usr  \
       -DTESTDATADIR=$PWD/testfiles \
       -DENABLE_UNSTABLE_API_ABI_HEADERS=ON \
       ..                           &&
make -j$(nproc)
make install 

install -v -m755 -d           /usr/share/doc/poppler-23.02.0 &&
cp -vr ../glib/reference/html /usr/share/doc/poppler-23.02.0

tar -xf ../../poppler-data-0.4.12.tar.gz &&
cd poppler-data-0.4.12

make prefix=/usr install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
