cd /sources/
wget -nc https://github.com/intel/libva/releases/download/2.15.0/libva-2.15.0.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure $XORG_CONFIG &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
