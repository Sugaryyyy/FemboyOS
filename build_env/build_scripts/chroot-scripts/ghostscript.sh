#!/bin/bash 
cd /sources/
wget -nc https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs1000/ghostscript-10.0.0.tar.xz
wget -nc https://downloads.sourceforge.net/gs-fonts/ghostscript-fonts-std-8.11.tar.gz
wget -nc https://downloads.sourceforge.net/gs-fonts/gnu-gs-fonts-other-6.0.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
rm -rf freetype lcms2mt jpeg libpng openjpeg

rm -rf zlib &&

./configure --prefix=/usr           \
            --disable-compile-inits \
            --with-system-libtiff   &&
make -j$(nproc)

make so

make install

make soinstall &&
install -v -m644 base/*.h /usr/include/ghostscript &&
ln -sfvn ghostscript /usr/include/ps

mv -v /usr/share/doc/ghostscript/10.00.0 /usr/share/doc/ghostscript-10.00.0  &&
rm -rfv /usr/share/doc/ghostscript &&
cp -r examples/ /usr/share/ghostscript/10.00.0

tar -xvf ../ghostscript-fonts-std-8.11.tar.gz -C /usr/share/ghostscript --no-same-owner &&
tar -xvf ../gnu-gs-fonts-other-6.0.tar.gz     -C /usr/share/ghostscript --no-same-owner &&
fc-cache -v /usr/share/ghostscript/fonts/

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
