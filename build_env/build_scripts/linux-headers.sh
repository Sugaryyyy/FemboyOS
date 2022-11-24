echo
echo "Linux Headers"
echo
sleep 1
cd $LFS/sources
tar -xf linux-5.19.2.tar.xz
cd linux-5.19.2

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr

cd $LFS/sources
rm -rf linux-5.19.2 