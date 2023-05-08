#!/bin/bash 
echo " The following command will overwrite the current boot loader."
echo "Do not run the command if this is not desired, for example,"
echo "if using a third party boot manager to manage the Master Boot Record (MBR). "
echo "Continuing in 5 seconds, to cancel, terminate the script."
sleep 5

grub-install /dev/sda

cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod ext2
set root=(hd0,2)

menuentry "GNU/Linux, FemboyOS" {
        linux   /boot/vmlinuz-5.19.2-lfs-11.2-systemd root=/dev/sda2 ro
}
EOF