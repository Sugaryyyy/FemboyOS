echo "Installing Busybox"
cd /sources
cp busybox-x86_64 /usr/bin/busybox
chmod +x /usr/bin/busybox
cp busybox-x86_64 /bin/busybox
chmod +x /bin/busybox
echo "Finished!"