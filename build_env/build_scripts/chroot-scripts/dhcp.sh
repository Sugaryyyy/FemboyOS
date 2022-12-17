. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
( export CFLAGS="${CFLAGS:--g -O2} -Wall -fno-strict-aliasing                 \
        -D_PATH_DHCLIENT_SCRIPT='\"/usr/sbin/dhclient-script\"'     \
        -D_PATH_DHCPD_CONF='\"/etc/dhcp/dhcpd.conf\"'               \
        -D_PATH_DHCLIENT_CONF='\"/etc/dhcp/dhclient.conf\"'"        &&

./configure --prefix=/usr                                           \
            --sysconfdir=/etc/dhcp                                  \
            --localstatedir=/var                                    \
            --with-srv-lease-file=/var/lib/dhcpd/dhcpd.leases       \
            --with-srv6-lease-file=/var/lib/dhcpd/dhcpd6.leases     \
            --with-cli-lease-file=/var/lib/dhclient/dhclient.leases \
            --with-cli6-lease-file=/var/lib/dhclient/dhclient6.leases
) &&
make -j1

make install &&
install -v -m755 client/scripts/linux /usr/sbin/dhclient-script

install -vdm755 /etc/dhcp &&
cat > /etc/dhcp/dhclient.conf << "EOF"
# Begin /etc/dhcp/dhclient.conf
#
# Basic dhclient.conf(5)

#prepend domain-name-servers 127.0.0.1;
request subnet-mask, broadcast-address, time-offset, routers,
        domain-name, domain-name-servers, domain-search, host-name,
        netbios-name-servers, netbios-scope, interface-mtu,
        ntp-servers;
require subnet-mask, domain-name-servers;
#timeout 60;
#retry 60;
#reboot 10;
#select-timeout 5;
#initial-interval 2;

# End /etc/dhcp/dhclient.conf
EOF

install -v -dm 755 /var/lib/dhclient

make install-service-dhclient

cat > /etc/sysconfig/ifconfig.eth0 << "EOF"
ONBOOT="yes"
IFACE="eth0"
SERVICE="dhclient"
DHCP_START=""
DHCP_STOP=""

# Set PRINTIP="yes" to have the script print
# the DHCP assigned IP address
PRINTIP="no"

# Set PRINTALL="yes" to print the DHCP assigned values for
# IP, SM, DG, and 1st NS. This requires PRINTIP="yes".
PRINTALL="no"
EOF

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
