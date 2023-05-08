#!/bin/bash 
cd /sources/
wget -nc https://downloads.xiph.org/releases/cdparanoia/cdparanoia-III-10.2.src.tgz
wget -nc https://www.linuxfromscratch.org/patches/blfs/11.2/cdparanoia-III-10.2-gcc_fixes-1.patch
mv cdparanoia-III-10.2.src.tgz cdparanoia-III-10.2.tgz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
        
patch -Np1 -i ../cdparanoia-III-10.2-gcc_fixes-1.patch &&
./configure --prefix=/usr --mandir=/usr/share/man &&
make -j1

make install &&
chmod -v 755 /usr/lib/libcdda_*.so.0.10.2

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
