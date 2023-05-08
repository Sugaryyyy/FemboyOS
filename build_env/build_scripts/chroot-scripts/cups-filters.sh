#!/bin/bash 
cd /sources/
wget -nc https://www.openprinting.org/download/cups-filters/cups-filters-1.28.16.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --without-rcdir      \
            --disable-static     \
            --disable-avahi      \
            --docdir=/usr/share/doc/cups-filters-1.28.16 &&
make

make install

install -v -m644 utils/cups-browsed.service /lib/systemd/system/cups-browsed.service

systemctl enable cups-browsed

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
