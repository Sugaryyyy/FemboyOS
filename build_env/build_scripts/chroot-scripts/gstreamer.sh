#!/bin/bash 
cd /sources/
wget -nc https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.22.0.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson  --prefix=/usr       \
       --buildtype=release \
       -Dgst_debug=false   \
       -Dpackage-origin=https://www.linuxfromscratch.org/blfs/view/11.3-systemd/ \
       -Dpackage-name="GStreamer 1.22.0 BLFS" &&
ninja
rm -rf /usr/bin/gst-* /usr/{lib,libexec}/gstreamer-1.0
ninja install
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
