cd /sources/
wget -nc https://xkbcommon.org/download/libxkbcommon-1.4.1.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release -Denable-docs=false .. &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
