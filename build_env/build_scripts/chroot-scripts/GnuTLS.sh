#!/bin/bash 
cd /sources/
wget -nc https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.0.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr \
            --docdir=/usr/share/doc/gnutls-3.8.0 \
            --with-default-trust-store-pkcs11="pkcs11:" &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
