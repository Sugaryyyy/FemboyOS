. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)
make

make DESTDIR=$LFS install

cd ..

rm -rf $1

. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
