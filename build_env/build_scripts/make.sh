. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
