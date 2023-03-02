cd /sources/
wget -nc $2
echo "Downloading make dependencies (doxygen)"
wget -nc https://doxygen.nl/files/doxygen-1.9.6.src.tar.gz
tar -xf doxygen-1.9.6.src.tar.gz
cd doxygen-1.9.6
mkdir -v build &&
cd       build &&

cmake -G "Unix Makefiles"         \
      -DCMAKE_BUILD_TYPE=Release  \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -Dbuild_wizard=ON           \
      -Duse_libclang=ON           \
      -Duse-iconv=OFF             \
      -Wno-dev .. &&

make -j$(nproc)

make install &&
install -vm644 ../doc/*.1 /usr/share/man/man1


. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

qmake PREFIX=/opt/qt5
make -j$(nproc)
make install


. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
