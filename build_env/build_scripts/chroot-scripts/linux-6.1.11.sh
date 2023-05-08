#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
make mrproper

make menuconfig

make

make modules_install

cp -iv arch/x86/boot/bzImage /boot/vmlinuz-6.1.11-lfs-11.3-systemd

cp -iv System.map /boot/System.map-6.1.11

cp -iv .config /boot/config-6.1.11

install -d /usr/share/doc/linux-6.1.11
cp -r Documentation/* /usr/share/doc/linux-6.1.11
ln -f /boot/vmlinuz-6.1.11-lfs-11.3-systemd /boot/vmlinuz

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
