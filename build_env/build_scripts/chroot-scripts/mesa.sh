cd /sources/
wget -nc https://mesa.freedesktop.org/archive/mesa-22.1.7.tar.xz
wget -nc https://www.linuxfromscratch.org/patches/blfs/11.2/mesa-22.1.7-add_xdemos-1.patch 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../mesa-22.1.7-add_xdemos-1.patch

mkdir -p build &&
cd    build &&

meson --prefix=$XORG_PREFIX   \
      --buildtype=release     \
      -Dplatforms=x11,wayland \
      -Dgallium-drivers=auto  \
      -Dglx=dri               \
      -Dvalgrind=disabled     \
      -Dlibunwind=disabled    \
      ..                      &&

ninja

ninja install 

install -v -dm755 /usr/share/doc/mesa-22.1.7 &&
cp -rfv ../docs/* /usr/share/doc/mesa-22.1.7

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
