cd /sources
wget https://ftp.gnu.org/gnu/libunistring/libunistring-1.0.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libunistring-1.0 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
