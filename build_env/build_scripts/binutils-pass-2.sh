. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed '6009s/$add_dir//' -i ltmain.sh

mkdir -v build
cd       build

../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd

make

make DESTDIR=$LFS install

rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.{a,la}

cd ..
rm -rf $1
. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
