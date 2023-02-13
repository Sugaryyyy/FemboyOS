cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir -p build &&
cd    build &&

meson --prefix=/usr       \
      --buildtype=release \
      -Ddatabase=gdbm     \
      -Ddoxygen=false     \
      -Dbluez5=disabled   &&
ninja

ninja install

rm -fv /etc/dbus-1/system.d/pulseaudio-system.conf

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
