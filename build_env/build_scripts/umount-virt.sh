echo "Unmounting ${LFS:?}"
echo "Unbinding ${DIST_ROOT:?}"

umount $LFS/dist
umount $LFS/run
umount $LFS/sys
umount $LFS/proc
umount $LFS/dev/pts
umount $LFS/dev