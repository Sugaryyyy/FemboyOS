cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

PATH+=:/usr/sbin                \
./configure --prefix=/usr       \
            --enable-cmdlib     \
            --enable-pkgconfig  \
            --enable-udev_sync  &&
make

make -C tools install_tools_dynamic &&
make -C udev  install                 &&
make -C libdm install

make install
make install_systemd_units

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
