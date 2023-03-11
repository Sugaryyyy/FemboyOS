echo "Setting up Network."

systemctl disable systemd-networkd-wait-online

cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf

domain FemboyOS
nameserver 8.8.8.8
nameserver 1.1.1.1

# End /etc/resolv.conf
EOF

echo "FemboyOS" > /etc/hostname

cat > /etc/hosts << "EOF"
# Begin /etc/hosts

127.0.0.1 localhost.localdomain localhost
127.0.1.1 localhost FemboyOS
<192.168.0.2> <FQDN> <HOSTNAME> [alias1] [alias2] ...
::1       localhost ip6-localhost ip6-loopback
ff02::1   ip6-allnodes
ff02::2   ip6-allrouters

# End /etc/hosts
EOF