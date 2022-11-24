echo "Mounting ${LFS:?}"
echo "Binding ${DIST_ROOT:?}"

mount -v --bind /dev $LFS/dev

mount -v --bind /dev/pts $LFS/dev/pts
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run

if [ -h $LFS/dev/shm ]; then
  mkdir -pv $LFS/$(readlink $LFS/dev/shm)
fi

mkdir -p $LFS/dist
mount -v --bind $DIST_ROOT/ $LFS/dist