. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd

./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)

make FILE_COMPILE=$(pwd)/build/src/file

make DESTDIR=$LFS install

rm -v $LFS/usr/lib/libmagic.la

. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
