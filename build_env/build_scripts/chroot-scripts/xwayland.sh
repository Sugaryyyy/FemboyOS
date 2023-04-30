cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i '/install_man/,$d' meson.build &&

mkdir build &&
cd    build &&

meson --prefix=$XORG_PREFIX         \
      --buildtype=release           \
      -Dxkb_output_dir=/var/lib/xkb \
      ..                            &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
