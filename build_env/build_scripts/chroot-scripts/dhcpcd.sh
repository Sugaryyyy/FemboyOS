#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
install  -v -m700 -d /var/lib/dhcpcd &&

groupadd -g 52 dhcpcd        &&
useradd  -c 'dhcpcd PrivSep' \
         -d /var/lib/dhcpcd  \
         -g dhcpcd           \
         -s /bin/false     \
         -u 52 dhcpcd &&
chown    -v dhcpcd:dhcpcd /var/lib/dhcpcd 

sed '/Deny everything else/i SECCOMP_ALLOW(__NR_getrandom),' \
    -i src/privsep-linux.c

./configure --prefix=/usr                \
            --sysconfdir=/etc            \
            --libexecdir=/usr/lib/dhcpcd \
            --dbdir=/var/lib/dhcpcd      \
            --runstatedir=/run           \
            --privsepuser=dhcpcd         &&
make

make install

tar -xf /sources/blfs-systemd-units-20220720.tar.xz
cd blfs-systemd-units-20220720

make install-dhcpcd

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
