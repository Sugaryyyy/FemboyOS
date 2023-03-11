. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make

#make test # Uncomment if you want to run test :3 (one test probably will fail)

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install

mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.0.8

cp -vfr doc/* /usr/share/doc/openssl-3.0.8

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
