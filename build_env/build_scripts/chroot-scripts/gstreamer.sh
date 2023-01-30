cd /sources/
wget -nc  https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.20.3.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson  --prefix=/usr       \
       --buildtype=release \
       -Dgst_debug=false   \
       -Dpackage-origin=https://www.linuxfromscratch.org/blfs/view/11.2-systemd/ \
       -Dpackage-name="GStreamer 1.20.3 BLFS" &&
ninja

ninja install
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
