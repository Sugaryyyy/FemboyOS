cd $LFS/sources
tar -xf binutils-2.39.tar.xz
cd binutils-2.39

mkdir -v build
cd       build

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror

make && make install

cd $LFS/sources

rm -rf binutils-2.39
