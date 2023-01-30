cd /sources/
wget -nc https://dri.freedesktop.org/libdrm/libdrm-2.4.112.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd    build &&

meson --prefix=$XORG_PREFIX \
      --buildtype=release   \
      -Dudev=true           \
      -Dvalgrind=false      &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
