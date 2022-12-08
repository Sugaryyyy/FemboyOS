. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../systemd-251-glibc_2.36_fix-1.patch

sed -i -e 's/GROUP="render"/GROUP="video"/' \
       -e 's/GROUP="sgx", //' rules.d/50-udev-default.rules.in

mkdir -p build
cd       build

meson --prefix=/usr                 \
      --buildtype=release           \
      -Ddefault-dnssec=no           \
      -Dfirstboot=false             \
      -Dinstall-tests=false         \
      -Dldconfig=false              \
      -Dsysusers=false              \
      -Drpmmacrosdir=no             \
      -Dhomed=false                 \
      -Duserdb=false                \
      -Dman=false                   \
      -Dmode=release                \
      -Dpamconfdir=no               \
      -Ddocdir=/usr/share/doc/systemd-251 \
      ..

ninja

ninja install

tar -xf ../../systemd-man-pages-251.tar.xz --strip-components=1 -C /usr/share/man

systemd-machine-id-setup

systemctl preset-all

systemctl disable systemd-sysupdate

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
