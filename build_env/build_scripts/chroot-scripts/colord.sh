#!/bin/bash 
cd /sources/
wget -nc  https://www.freedesktop.org/software/colord/releases/colord-1.4.6.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

echo "idk what's wrong with this, it might error or not, it probably will work without it tho :3"

groupadd -g 71 colord &&
useradd -c "Color Daemon Owner" -d /var/lib/colord -u 71 \
        -g colord -s /bin/false colord

mkdir -p build &&
cd build &&

meson --prefix=/usr            \
      --buildtype=release      \
      -Ddaemon_user=colord     \
      -Dvapi=true              \
      -Dsystemd=true           \
      -Dlibcolordcompat=true   \
      -Dargyllcms_sensor=false \
      -Dbash_completion=false  \
      -Ddocs=false             \
      -Dman=false ..           &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
