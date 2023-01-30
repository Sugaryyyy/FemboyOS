cd /sources/
wget -nc  https://download.gnome.org/sources/pango/1.50/pango-1.50.9.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release --wrap-mode=nofallback .. &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
