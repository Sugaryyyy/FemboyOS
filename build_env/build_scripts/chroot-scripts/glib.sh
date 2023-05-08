#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../glib-2.74.5-skip_warnings-1.patch

if [ -e /usr/include/glib-2.0 ]; then
    rm -rf /usr/include/glib-2.0.old &&
    mv -vf /usr/include/glib-2.0{,.old}
fi

rm -rf build/
mkdir build &&
cd    build &&

meson --prefix=/usr       \
      --buildtype=release \
      -Dman=true          \
      ..                  &&
ninja

ninja install &&

mkdir -p /usr/share/doc/glib-2.74.5 &&
cp -r ../docs/reference/{gio,glib,gobject} /usr/share/doc/glib-2.74.5

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
