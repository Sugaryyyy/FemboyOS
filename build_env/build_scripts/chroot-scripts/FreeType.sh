cd /sources/
wget  https://downloads.sourceforge.net/freetype/freetype-2.12.1.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h  &&

./configure --prefix=/usr --enable-freetype-config --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
