cd /sources/
wget -nc  https://www.x.org/pub/individual/data/xkeyboard-config/xkeyboard-config-2.36.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i -E 's/(ln -s)/\1f/' rules/meson.build &&

mkdir build &&
cd    build &&

meson --prefix=$XORG_PREFIX --buildtype=release .. &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
