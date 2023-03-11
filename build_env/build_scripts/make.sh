. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -e '/ifdef SIGPIPE/,+2 d' \
    -e '/undef  FATAL_SIG/i FATAL_SIG (SIGPIPE);' \
    -i src/main.c

./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make

make DESTDIR=$LFS install

cd ..
rm -rf $1

. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
