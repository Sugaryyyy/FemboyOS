. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.1.0

make
make html

make check

make install
make install-html

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
