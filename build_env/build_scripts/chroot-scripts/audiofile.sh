cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

patch -Np1 -i ../audiofile-0.3.6-consolidated_patches-1.patch &&
autoreconf -fiv                             &&

./configure --prefix=/usr --disable-static  &&

make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
