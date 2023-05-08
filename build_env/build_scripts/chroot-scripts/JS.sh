#!/bin/bash 
cd /sources/
wget -nc https://archive.mozilla.org/pub/firefox/releases/102.8.0esr/source/firefox-102.8.0esr.source.tar.xz
tar -xf firefox-102.8.0esr.source.tar.xz
cd firefox-91.12.0

mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm

export SHELL=/bin/sh

grep -rl \"rU\" | xargs sed -i 's/"rU"/"r"/'

mkdir obj &&
cd    obj &&

sh ../js/src/configure.in --prefix=/usr            \
                          --with-intl-api          \
                          --with-system-zlib       \
                          --with-system-icu        \
                          --disable-jemalloc       \
                          --disable-debug-symbols  \
                          --enable-readline        &&
make -j$(nproc)

rm -fv /usr/lib/libmozjs-102.so

make install &&
rm -v /usr/lib/libjs_static.ajs &&
sed -i '/@NSPR_CFLAGS@/d' /usr/bin/js102-config

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
