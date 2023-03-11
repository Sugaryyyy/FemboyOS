cd /sources/
wget -nc https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.22.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson  --prefix=/usr       \
       --buildtype=release \
       -Dpackage-origin=https://www.linuxfromscratch.org/blfs/view/11.3-systemd/ \
       -Dpackage-name="GStreamer 1.22.0 BLFS"    \
       --wrap-mode=nodownload &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
