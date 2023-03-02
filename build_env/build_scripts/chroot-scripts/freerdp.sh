echo "Processing FreeRDP's dependencies :3"

pip3 install jsonschema

rm -rf mbedtls
git clone https://github.com/Mbed-TLS/mbedtls
cd mbedtls

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr/       \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install

cd /sources/

wget -nc https://kerberos.org/dist/krb5/1.20/krb5-1.20.1.tar.gz
tar -xf krb5-1.20.1.tar.gz
cd krb5-1.20.1/

cd src
./configure --prefix=/usr
make
make install

cd /sources/
wget -nc https://github.com/libfuse/libfuse/releases/download/fuse-3.14.0/fuse-3.14.0.tar.xz
tar -xf fuse-3.14.0.tar.xz
cd fuse-3.14.0/
mkdir -p build &&
cd       build &&
meson --prefix=/usr/ ..
ninja
ninja install
echo "Processing FreeRDP :3"
cd /sources/
rm -rf FreeRDP/
git clone https://github.com/FreeRDP/FreeRDP
cd FreeRDP

mkdir -p build &&
cd       build &&

cmake -DCHANNEL_URBDRC=ON                \
      -DWITH_DSP_FFMPEG=ON               \
      -DWITH_CUPS=ON                     \
      -DWITH_PULSE=ON                    \
      -DCMAKE_INSTALL_PREFIX=/usr/       \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make -j$(nproc)

make install


. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
