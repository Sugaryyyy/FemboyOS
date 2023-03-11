cd /sources/
wget -nc https://dri.freedesktop.org/libdrm/libdrm-2.4.115.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson setup  --prefix=$XORG_PREFIX \
             --buildtype=release   \
             -Dudev=true           \
             -Dvalgrind=disabled   &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
