cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr          \
            --shared-cares         \
            --shared-libuv         \
            --shared-openssl       \
            --shared-nghttp2       \
            --shared-zlib          \
            --with-intl=system-icu &&
make -j$(nproc)

make install &&
ln -sf node /usr/share/doc/node-16.17.0

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
