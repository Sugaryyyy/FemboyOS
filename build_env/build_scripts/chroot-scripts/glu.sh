cd /sources/
wget -nc ftp://ftp.freedesktop.org/pub/mesa/glu/glu-9.0.2.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd    build &&

meson --prefix=$XORG_PREFIX -Dgl_provider=gl --buildtype=release .. &&
ninja

ninja install &&
rm -vf /usr/lib/libGLU.a

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
