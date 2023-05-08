#!/bin/bash 
mkdir -pv /boot/efi &&
mount -v -t vfat /dev/sda1 /boot/efi

cat >> /etc/fstab << EOF
/dev/sda1 /boot/efi vfat defaults 0 1
EOF

grub-install --bootloader-id=LFS --recheck

efibootmgr | cut -f 1

cat > /boot/grub/grub.cfg << EOF
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod part_gpt
insmod ext2
set root=(hd0,2)

if loadfont /boot/grub/fonts/unicode.pf2; then
  set gfxmode=auto
  insmod all_video
  terminal_output gfxterm
fi

menuentry "GNU/Linux, Linux 5.19.2-lfs-11.2"  {
  linux   /boot/vmlinuz-5.19.2-lfs-11.2 root=/dev/sda2 ro
}

menuentry "Firmware Setup" {
  fwsetup
}
EOF

# If you're using Windows and want to Dual Boot FemboyOS and Windows (why), uncommment everything below.

#cat >> /boot/grub/grub.cfg << EOF
# Begin Windows addition

#menuentry "Windows" {
#  insmod fat
#  insmod chain
#  set root=(hd0,1)
#  chainloader /EFI/Microsoft/Boot/bootmgfw.efi
#}
#EOF
