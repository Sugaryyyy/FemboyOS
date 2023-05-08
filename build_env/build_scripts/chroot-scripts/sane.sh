#!/bin/bash 
cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

groupadd --force -g 70 scanner
usermod -G scanner -a tester

sg scanner -c "                  \
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --with-group=scanner \
            --with-lockdir=/run/lock \
            --docdir=/usr/share/doc/sane-backends-1.0.32" &&
make -j$(nproc)

make install                                         &&
install -m 644 -v tools/udev/libsane.rules           \
                  /etc/udev/rules.d/65-scanner.rules &&
mkdir -p          /run/lock/sane &&
chgrp -v scanner  /run/lock/sane

tar -xf ../sane-frontends-1.0.14.tar.gz &&
cd sane-frontends-1.0.14                &&

sed -i -e "/SANE_CAP_ALWAYS_SETTABLE/d" src/gtkglue.c &&
./configure --prefix=/usr --mandir=/usr/share/man &&
make -j$(nproc)

make install &&
install -v -m644 doc/sane.png xscanimage-icon-48x48-2.png \
    /usr/share/sane

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
