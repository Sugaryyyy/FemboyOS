. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'

mkdir -p build &&
cd    build    &&

CXXFLAGS+="-O2 -fPIC"            \
meson --prefix=/usr              \
      --buildtype=release        \
      -Dlibaudit=no              \
      -Dlibpsl=false             \
      -Dnmtui=false               \
      -Dovs=false                \
      -Dppp=false                \
      -Dselinux=false            \
      -Dqt=false                 \
      -Dsession_tracking=systemd \
      -Dmodem_manager=false      \
      -Dintrospection=false \
      .. &&
ninja

ninja install &&
mv -v /usr/share/doc/NetworkManager{,-1.38.4}

cat >> /etc/NetworkManager/NetworkManager.conf << "EOF"
[main]
plugins=keyfile
EOF

cat > /etc/NetworkManager/conf.d/polkit.conf << "EOF"
[main]
auth-polkit=true
EOF

cat > /etc/NetworkManager/conf.d/dhcp.conf << "EOF"
[main]
dhcp=dhclient
EOF

cat > /etc/NetworkManager/conf.d/no-dns-update.conf << "EOF"
[main]
dns=none
EOF

groupadd -fg 86 netdev &&
/usr/sbin/usermod -a -G netdev root

cat > /usr/share/polkit-1/rules.d/org.freedesktop.NetworkManager.rules << "EOF"
polkit.addRule(function(action, subject) {
    if (action.id.indexOf("org.freedesktop.NetworkManager.") == 0 && subject.isInGroup("netdev")) {
        return polkit.Result.YES;
    }
});
EOF

systemctl enable NetworkManager

systemctl disable NetworkManager-wait-online

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
