. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.2.1

make
make html

make check

make install
make install-html

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
