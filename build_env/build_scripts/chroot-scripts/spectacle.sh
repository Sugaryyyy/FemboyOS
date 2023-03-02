cd /sources/
wget -nc $2
echo "Downloading dependencies (xcb-util-cursor)"
rm -rf /sources/libxcb-cursor/
git clone https://gitlab.freedesktop.org/xorg/lib/libxcb-cursor
cd libxcb-cursor
git submodule update --init
./autogen.sh
make 
make install
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
