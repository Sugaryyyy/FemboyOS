#!/bin/bash 
cd /sources/
wget -nc $2
echo "Processing dependencies :3"
wget -nc $3
wget -nc $4
wget -nc $5
wget -nc $6
tar -xf id3lib-3.8.3.tar.gz
cd id3lib-3.8.3
patch -Np1 -i ../id3lib-3.8.3-consolidated_patches-1.patch &&

libtoolize -fc                &&
aclocal                       &&
autoconf                      &&
automake --add-missing --copy &&

./configure --prefix=/usr --disable-static &&
make

make install  &&
cp doc/man/* /usr/share/man/man1 &&

install -v -m755 -d /usr/share/doc/id3lib-3.8.3 &&
install -v -m644 doc/*.{gif,jpg,png,ico,css,txt,php,html} \
                    /usr/share/doc/id3lib-3.8.3

cd /sources/
tar -xf fftw-3.3.10.tar.gz
cd fftw-3.3.10

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     \
            --enable-avx2    &&
make -j$(nproc)

make install 

make clean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     \
            --enable-avx2    \
            --enable-float   &&
make -j$(nproc)

make install

make clean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-long-double &&
make -j$(nproc)

make install

cd /sources/

tar -xf librsvg-2.54.5.tar.xz
cd librsvg-2.54.5

./configure --prefix=/usr    \
            --enable-vala    \
            --disable-static \
            --docdir=/usr/share/doc/librsvg-2.54.5 &&
make -j$(nproc)

make install

gdk-pixbuf-query-loaders --update-cache

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
