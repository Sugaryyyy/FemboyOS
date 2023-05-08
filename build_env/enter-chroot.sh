#!/bin/bash 
set -e

echo "Dist Root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root (sudo -E ./enter-chroot.sh) :)"
  exit
fi

bash -e $DIST_ROOT/build_env/build_scripts/mount-virt.sh

chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(FemboyOS chroot >w<) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin:/bin:/sbin     \
    bash --login                  

bash -e $DIST_ROOT/build_env/build_scripts/umount-virt.sh
