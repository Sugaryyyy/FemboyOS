cd /sources/
wget -nc https://downloads.sourceforge.net/infozip/unzip60.tar.gz
wget -nc  https://www.linuxfromscratch.org/patches/blfs/11.3/unzip-6.0-consolidated_fixes-1.patch
wget -nc https://j3e.de/linux/convmv/convmv-2.05.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
echo "Installing convmv (To fix locale issues in unzip)"
cd ..

tar xf convmv-2.05.tar.gz

cd /sources/convmv-2.05

make 

make install

ln -f /usr/local/bin/convmv /usr/bin

cd /sources

tar -xf unzip60.tar.gz

convmv -f cp936 -t utf-8 -r --nosmart --notest \
    /sources/unzip60/

cd unzip60

patch -Np1 -i ../unzip-6.0-consolidated_fixes-1.patch

make -f unix/Makefile generic

make prefix=/usr MANDIR=/usr/share/man/man1 \
 -f unix/Makefile install

echo "Done :3"
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
