set -e

echo "Preparing ${LFS:?}"

chown -R root:root $LFS/{usr,lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -R root:root $LFS/lib64 ;;
esac

mkdir -pv $LFS/{dev,proc,sys,run,tempscripts}

bash -e $DIST_ROOT/build_env/build_scripts/mount-virt.sh

cp $DIST_ROOT/build_env/build_scripts/finish-chroot.sh $LFS/tempscripts

chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    bash /tempscripts/finish-chroot.sh

bash -e $DIST_ROOT/build_env/build_scripts/umount-virt.sh

echo "Welcome back to your host, you're back from chroot! >w<"
