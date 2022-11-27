echo "Running from chroot!"
bash -e /dist/build_env/build_scripts/test.sh
echo
echo
echo "Building stuff"
echo
echo
echo
#bash -e /dist/build_env/build_scripts/chroot-scripts/man-pages.sh man-pages-5.13.tar.xz
#bash -e /dist/build_env/build_scripts/chroot-scripts/lana-etc.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/glibc.sh glibc-2.36.tar.xz 