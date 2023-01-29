cd /sources/
wget -nc https://www.kernel.org/pub/linux/utils/usb/usbutils/usbutils-014.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --datadir=/usr/share/hwdata &&
make

make install

install -dm755 /usr/share/hwdata/ &&
wget http://www.linux-usb.org/usb.ids -O /usr/share/hwdata/usb.ids

cat > /usr/lib/systemd/system/update-usbids.service << "EOF" &&
[Unit]
Description=Update usb.ids file
Documentation=man:lsusb(8)
DefaultDependencies=no
After=local-fs.target network-online.target
Before=shutdown.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/wget http://www.linux-usb.org/usb.ids -O /usr/share/hwdata/usb.ids
EOF
cat > /usr/lib/systemd/system/update-usbids.timer << "EOF" &&
[Unit]
Description=Update usb.ids file weekly

[Timer]
OnCalendar=Sun 03:00:00
Persistent=true

[Install]
WantedBy=timers.target
EOF
systemctl enable update-usbids.timer

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
