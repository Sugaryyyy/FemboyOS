. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -e 's/-qt4/-qt5/'              \
    -e 's/moc_location/host_bins/' \
    -i examples/C/qt/meson.build   &&

sed -e 's/Qt/&5/'                  \
    -i meson.build

grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'

mkdir build &&
cd    build    &&

CXXFLAGS+="-O2 -fPIC"            \
meson setup                      \
      --prefix=/usr              \
      --buildtype=release        \
      -Dlibaudit=no              \
      -Dlibpsl=false             \
      -Dnmtui=true               \
      -Dovs=false                \
      -Dppp=false                \
      -Dselinux=false            \
      -Dqt=false                 \
      -Dsession_tracking=systemd \
      -Dmodem_manager=false      \
      .. &&
ninja

ninja install &&
mv -v /usr/share/doc/NetworkManager{,-1.42.0}

for file in $(echo ../man/*.[1578]); do
    section=${file##*.} &&
    install -vdm 755 /usr/share/man/man$section
    install -vm 644 $file /usr/share/man/man$section/
done

cp -Rv ../docs/{api,libnm} /usr/share/doc/NetworkManager-1.42.0

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
/usr/sbin/usermod -a -G netdev <username>

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
