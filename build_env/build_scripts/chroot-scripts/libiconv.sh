#!/bin/bash 
cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr/
make 
make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
echo "Recompiling gettext to use libiconv :3"
cd /sources/
rm -rf gettext-0.21.1/
tar -xf gettext-0.21.1.tar.xz
cd gettext-0.21.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21.1
make

make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
echo "Compiling gettext completed!~"