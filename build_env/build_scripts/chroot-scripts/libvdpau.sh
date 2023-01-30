cd /sources/
wget -nc https://gitlab.freedesktop.org/vdpau/libvdpau/-/archive/1.5/libvdpau-1.5.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd    build &&

meson --prefix=$XORG_PREFIX .. &&
ninja

ninja install 
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
