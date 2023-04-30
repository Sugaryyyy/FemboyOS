cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX    \
            --buildtype=release      \
            -Ddebug-gui=false        \
            -Dtests=false            \
            -Dlibwacom=false         \
            -Dudev-dir=/usr/lib/udev \
            ..                      &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
