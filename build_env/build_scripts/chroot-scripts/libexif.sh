cd /sources/
wget -nc https://github.com/libexif/libexif/releases/download/v0.6.24/libexif-0.6.24.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr    \
            --disable-static \
            --with-doc-dir=/usr/share/doc/libexif-0.6.24 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
