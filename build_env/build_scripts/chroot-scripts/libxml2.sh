. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
autoreconf -fiv

./configure --prefix=/usr           \
            --sysconfdir=/etc       \
            --disable-static        \
            --with-history          \
            PYTHON=/usr/bin/python3 \
            --docdir=/usr/share/doc/libxml2-2.10.0 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
