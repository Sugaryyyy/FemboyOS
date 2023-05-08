#!/bin/bash 
cd /sources/
wget -nc  https://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i 's/png_\(sizeof\)/\1/g' examples/png2theora.c &&
./configure --prefix=/usr --disable-static &&
make

make install

cd examples/.libs &&
for E in *; do
  install -v -m755 $E /usr/bin/theora_${E}
done

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
