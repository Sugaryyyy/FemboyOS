cd /sources/
wget -nc https://downloads.sourceforge.net/libmng/libmng-2.0.3.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --disable-static &&
make

make install &&

install -v -m755 -d        /usr/share/doc/libmng-2.0.3 &&
install -v -m644 doc/*.txt /usr/share/doc/libmng-2.0.3

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
