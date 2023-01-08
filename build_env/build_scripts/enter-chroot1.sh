echo "Entering chroot: ${LFS:?}"

bash -e $DIST_ROOT/build_env/build_scripts/mount-virt.sh

cp $DIST_ROOT/build_env/build_scripts/inchroot.sh $LFS
echo "Run bash inchroot.sh to continue." 
chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(FemboyOS chroot >w<) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin:/bin     \
    bash --login                  

bash -e $DIST_ROOT/build_env/build_scripts/umount-virt.sh
