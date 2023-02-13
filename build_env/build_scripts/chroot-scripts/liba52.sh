cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr \
            --mandir=/usr/share/man \
            --enable-shared \
            --disable-static \
            CFLAGS="${CFLAGS:--g -O2} $([ $(uname -m) = x86_64 ] && echo -fPIC)" &&
make

make install &&
cp liba52/a52_internal.h /usr/include/a52dec &&
install -v -m644 -D doc/liba52.txt \
    /usr/share/doc/liba52-0.7.4/liba52.txt

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
