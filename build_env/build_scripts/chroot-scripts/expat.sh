. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.4.8

make

make check

make install

install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.4.8

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
