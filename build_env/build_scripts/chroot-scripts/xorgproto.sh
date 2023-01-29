cd /sources/
wget https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2022.2.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd       build &&

meson --prefix=$XORG_PREFIX -Dlegacy=true .. &&
ninja

ninja install &&
mv -v $XORG_PREFIX/share/doc/xorgproto{,-2022.2}

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
