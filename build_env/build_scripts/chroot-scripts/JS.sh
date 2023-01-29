cd /sources/
wget -nc https://archive.mozilla.org/pub/firefox/releases/91.12.0esr/source/firefox-91.12.0esr.source.tar.xz    
tar -xf firefox-91.12.0esr.source.tar.xz
cd firefox-91.12.0

mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm

export SHELL=/bin/sh

mkdir -p obj &&
cd       obj &&

sh ../js/src/configure.in --prefix=/usr            \
                          --with-intl-api          \
                          --with-system-zlib       \
                          --with-system-icu        \
                          --disable-jemalloc       \
                          --disable-debug-symbols  \
                          --enable-readline        &&
make

rm -fvr /usr/lib/libmozjs-91.so

make install &&
rm -v /usr/lib/libjs_static.ajs &&
sed -i '/@NSPR_CFLAGS@/d' /usr/bin/js91-config

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
