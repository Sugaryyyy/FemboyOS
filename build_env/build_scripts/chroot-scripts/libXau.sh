cd /sources/
wget -nc https://www.x.org/pub/individual/lib/libXau-1.0.11.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure $XORG_CONFIG &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
