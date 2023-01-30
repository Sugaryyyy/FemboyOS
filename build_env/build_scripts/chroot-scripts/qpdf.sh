cd /sources/
wget -nc https://github.com/qpdf/qpdf/releases/download/release-qpdf-10.6.3/qpdf-10.6.3.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/qpdf-10.6.3 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
