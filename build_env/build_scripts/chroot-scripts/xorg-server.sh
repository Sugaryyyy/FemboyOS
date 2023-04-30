cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

meson --prefix=$XORG_PREFIX \
      --localstatedir=/var  \
      -Dsuid_wrapper=true   \
      -Dxkb_output_dir=/var/lib/xkb &&
ninja

ninja install &&
mkdir -pv /etc/X11/xorg.conf.d

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
