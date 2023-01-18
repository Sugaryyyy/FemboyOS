. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../glib-2.72.3-skip_warnings-1.patch
rm -rf build/
mkdir build &&
cd    build &&

meson --prefix=/usr       \
      --buildtype=release \
      -Dman=false          \
      ..                  &&
ninja

ninja install &&

mkdir -p /usr/share/doc/glib-2.72.3 &&
cp -r ../docs/reference/{gio,glib,gobject} /usr/share/doc/glib-2.72.3

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
