cd /sources/
wget https://download.gnome.org/sources/gobject-introspection/1.72/gobject-introspection-1.72.0.tar.xz  
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd    build &&

meson --prefix=/usr --buildtype=release .. &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
