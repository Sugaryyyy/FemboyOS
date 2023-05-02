echo "Running from chroot!"
echo
echo
echo "Building stuff"
echo
echo
echo

bash -e /dist/build_env/build_scripts/chroot-scripts/man-pages.sh man-pages-6.03.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/iana-etc.sh iana-etc-20230202.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/glibc.sh glibc-2.37.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/zlib.sh zlib-1.2.13.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bzip2.sh bzip2-1.0.8.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/xz.sh xz-5.2.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/zstd.sh zstd-1.5.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/file.sh file-5.44.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/readline.sh readline-8.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/m4.sh m4-1.4.19.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bc.sh bc-6.2.4.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/flex.sh flex-2.6.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/tcl.sh tcl8.6.13-src.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/expect.sh expect5.45.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/dejagnu.sh dejagnu-1.6.3.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/binutils.sh binutils-2.40.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gmp.sh gmp-6.2.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mpfr.sh mpfr-4.2.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mpc.sh mpc-1.3.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/attr.sh attr-2.5.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/acl.sh acl-2.3.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libcap.sh libcap-2.67.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/shadow.sh shadow-4.13.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gcc.sh gcc-12.2.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/pkg-config.sh pkg-config-0.29.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ncurses.sh ncurses-6.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/sed.sh sed-4.9.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/psmisc.sh psmisc-23.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gettext.sh gettext-0.21.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bison.sh bison-3.8.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/grep.sh grep-3.8.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/bash.sh bash-5.2.15.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtool.sh libtool-2.4.7.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gdbm.sh gdbm-1.23.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gperf.sh gperf-3.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/expat.sh expat-2.5.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/inetutils.sh inetutils-2.4.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/less.sh less-608.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/perl.sh perl-5.36.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xml-parser.sh XML-Parser-2.46.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/intltool.sh intltool-0.51.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/autoconf.sh autoconf-2.71.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/automake.sh automake-1.16.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/openssl.sh openssl-3.0.8.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmod.sh kmod-30.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libelf.sh elfutils-0.188.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libffi.sh libffi-3.4.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/python.sh Python-3.11.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/wheel.sh wheel-0.38.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ninja.sh ninja-1.11.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/meson.sh meson-1.0.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/coreutils.sh coreutils-9.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/check.sh check-0.15.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/diffutils.sh diffutils-3.9.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gawk.sh gawk-5.2.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/findutils.sh findutils-4.9.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/groff.sh groff-1.22.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/grub-legacy.sh grub-2.06.tar.xz #Uncomment if you want to build for a Legacy instead of a UEFI system :3
bash -e /dist/build_env/build_scripts/chroot-scripts/gzip.sh gzip-1.12.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/iproute2.sh iproute2-6.1.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kbd.sh kbd-2.5.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libpipeline.sh libpipeline-1.5.6.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/make.sh make-4.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/patch.sh patch-2.7.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/tar.sh tar-1.34.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/texinfo.sh texinfo-7.0.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/vim.sh vim-9.0.1273.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/nano.sh nano-6.4.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/markupsafe.sh MarkupSafe-2.1.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/jinja2.sh Jinja2-3.1.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libcap.sh libcap-2.67.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/systemd.sh systemd-252.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/d-bus.sh dbus-1.14.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/man-db.sh man-db-2.11.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/procps-ng.sh procps-ng-4.0.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/util-linux.sh util-linux-2.38.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/e2fsprogs.sh e2fsprogs-1.47.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/strip.sh # Strips debugging symbols.
bash -e /dist/build_env/build_scripts/chroot-scripts/cleanup.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/networksetup.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/inputrc.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/shells.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/systemdconf.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/fstab.sh
#bash -e /dist/build_env/build_scripts/chroot-scripts/linux-5.19.2.sh linux-5.19.2.tar.xz # Uncomment and comment the line below if you want to use the 5.19.2 kernel instead of 6.11.2
bash -e /dist/build_env/build_scripts/chroot-scripts/linux-6.1.11.sh linux-6.1.11.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/sudo.sh sudo-1.9.13p1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/busybox.sh
#bash -e /dist/build_env/build_scripts/chroot-scripts/grub-legacy-conf # WARNING! This command installs FemboyOS to your HOST machine in Legacy mode
# If you do not want to install FemboyOS to your host, do not uncomment the line above. 

bash -e /dist/build_env/build_scripts/chroot-scripts/grub-efi.sh # Comment this if you're building for a Legacy system.
#bash -e /dist/build_env/build_scripts/chroot-scripts/grub-efi-config.sh # WARNING! This command installs FemboyOS to your HOST machine in UEFI mode!
# If you do not want to install FemboyOS to your host, do not uncomment the line above. 
bash -e /dist/build_env/build_scripts/chroot-scripts/postlfscfg.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/which.sh which-2.21.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/squashfs-tools.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/cdrtools.sh cdrtools-3.02a09.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/lsb-release.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/cpio.sh cpio-2.13.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/mkinitramfs.sh



bash -e /dist/build_env/build_scripts/chroot-scripts/motd.sh 

bash -e /dist/build_env/build_scripts/chroot-scripts/libarchive.sh libarchive-3.6.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/curl.sh curl-7.88.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libuv.sh libuv-v1.44.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cmake.sh cmake-3.25.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/git.sh git-2.39.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/neofetch.sh 

echo "Setting up networking :3"

bash -e /dist/build_env/build_scripts/chroot-scripts/dhcpcd.sh dhcpcd-9.4.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/dhcp.sh dhcp-4.4.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libnl.sh libnl-3.7.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/iw.sh iw-5.19.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/wget.sh wget-1.21.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libxml2.sh libxml2-2.10.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libxslt.sh libxslt-1.1.37.tar.xz  
bash -e /dist/build_env/build_scripts/chroot-scripts/pcre.sh pcre-8.45.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/glib.sh glib-2.74.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/wpa_supplicant.sh wpa_supplicant-2.10.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/iptables.sh iptables-1.8.9.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/net-tools.sh net-tools-2.10.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtasn1.sh libtasn1-4.19.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/p11-kit.sh p11-kit-0.24.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/nspr.sh nspr-4.35.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/nss.sh nss-3.88.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/make-ca.sh make-ca-1.12.tar.xz
echo "Building shells :3"
echo "You can safely quit this script if you want a barebones system."
echo "Continuing in 10 seconds."
sleep 10
# Optional

bash -e /dist/build_env/build_scripts/chroot-scripts/zsh.sh zsh-5.9.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/fish.sh fish-3.6.0.tar.xz

echo "Building Links and image libraries :3"
# Optional

bash -e /dist/build_env/build_scripts/chroot-scripts/libpng.sh libpng-1.6.39.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libjpeg.sh libjpeg-turbo-2.1.5.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/yasm.sh yasm-1.3.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libevent.sh libevent-2.1.12-stable.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/brotli.sh brotli-1.0.9.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/links.sh links-2.28.tar.bz2

bash -e /dist/build_env/build_scripts/chroot-scripts/uwufetch.sh

echo "Building KDE :3"
echo "You need a internet connection in chroot, it should work automatically."
echo "Testing internet connection:"

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline, you need a internet connection to install a DE."
    echo "Bailing out, you're on your own. Good luck :3"
    exit -1
fi



echo "Setting up the Xorg Build Environment"    
export XORG_PREFIX="/usr"

export XORG_CONFIG="--prefix=$XORG_PREFIX --sysconfdir=/etc \
    --localstatedir=/var --disable-static"

mkdir /etc/profile.d/
touch /etc/profile.d/xorg.sh

cat > /etc/profile.d/xorg.sh << EOF
XORG_PREFIX="$XORG_PREFIX"
XORG_CONFIG="--prefix=\$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static"
export XORG_PREFIX XORG_CONFIG
EOF
chmod 644 /etc/profile.d/xorg.sh

cat > /etc/sudoers.d/xorg << EOF
Defaults env_keep += XORG_PREFIX
Defaults env_keep += XORG_CONFIG
EOF

echo "
PATH="/usr/bin:/usr/sbin:/bin:/sbin:/opt/rustc/bin:/opt/qt5/bin/:/opt/kf5/bin/"
LD_LIBRARY_PATH="/usr/lib/:/usr/local/lib:/opt/rustc/lib:/opt/qt5/lib:/opt/kf5/lib"
export QT5_DIR="/opt/qt5"
export XORG_PREFIX="/usr"
export XORG_CONFIG=\"--prefix=$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static\"
export QT5_PREFIX="/opt/qt5"
export KF5_PREFIX="/opt/kf5"
" >> /etc/environment

bash -e /dist/build_env/build_scripts/chroot-scripts/extra-cmake-modules.sh extra-cmake-modules-5.103.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-proto.sh xcb-proto-1.15.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/util-macros.sh util-macros-1.20.0.tar.xz #changed
bash -e /dist/build_env/build_scripts/chroot-scripts/xorgproto.sh xorgproto-2022.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libXau.sh libXau-1.0.11.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/libXdmcp.sh libXdmcp-1.1.4.tar.xz #changed
bash -e /dist/build_env/build_scripts/chroot-scripts/libxcb.sh libxcb-1.15.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/FreeType.sh freetype-2.13.0.tar.xz #changed
bash -e /dist/build_env/build_scripts/chroot-scripts/icu.sh icu4c-71_1-src.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/Graphite2.sh graphite2-1.3.14.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/HarfBuzz.sh harfbuzz-5.1.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/FreeType.sh freetype-2.12.1.tar.xz # Freetype 2nd pass #changed
bash -e /dist/build_env/build_scripts/chroot-scripts/HarfBuzz.sh harfbuzz-7.0.0.tar.xz # Harfbuzz 2nd pass #changed
bash -e /dist/build_env/build_scripts/chroot-scripts/fontconfig.sh fontconfig-2.14.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xorglibs.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/lcms.sh lcms2-2.13.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/alsa-lib.sh alsa-lib-1.2.8.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/Nettle.sh nettle-3.8.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libunistring.sh libunistring-1.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/GnuTLS.sh gnutls-3.8.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libssh2.sh libssh2-1.10.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/LLVM.sh llvm-15.0.7.src.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/Rustc.sh rustc-1.67.1-src.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/JS.sh firefox-102.8.0esr.source.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gobject-introspection.sh gobject-introspection-1.74.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/unzip.sh unzip60.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/sgml-common.sh sgml-common-0.6.3.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/docbook-xml.sh docbook-xml-4.5.zip
bash -e /dist/build_env/build_scripts/chroot-scripts/docbook-xsl-nons.sh docbook-xsl-nons-1.79.2.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libxslt.sh libxslt-1.1.37.tar.xz  
bash -e /dist/build_env/build_scripts/chroot-scripts/Linux-PAM.sh Linux-PAM-1.5.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/cracklib.sh cracklib-2.9.8.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/shadow-reinstall.sh shadow-4.13.tar.xz # Reinstalling 
bash -e /dist/build_env/build_scripts/chroot-scripts/systemd-reinstall.sh systemd-252.tar.gz # Reinstalling
bash -e /dist/build_env/build_scripts/chroot-scripts/polkit.sh polkit-121.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/sqlite.sh ssqlite-autoconf-3400100.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libgudev.sh libgudev-237.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libusb.sh libusb-1.0.26.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libgusb.sh libgusb-0.3.10.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/itstool.sh itstool-2.0.7.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/pygments.sh Pygments-2.14.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gtk-doc.sh gtk-doc-1.33.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/usbutils.sh usbutils-015.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/graphviz.sh graphviz-7.1.0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/vala.sh vala-0.56.4.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xmlto.sh xmlto-0.0.28.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xdg-utils.sh xdg-utils-1.1.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cups.sh cups-2.4.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtiff.sh tiff-4.5.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/openjpeg.sh openjpeg-2.5.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ghostscript.sh ghostscript-10.00.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/boost.sh boost_1_81_0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/pixman.sh pixman-0.42.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cairo.sh cairo-1.17.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/poppler.sh poppler-23.02.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/qpdf.sh qpdf-11.2.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/dejavu-font.sh dejavu-fonts-ttf-2.37.tar.bz2 
bash -e /dist/build_env/build_scripts/chroot-scripts/libexif.sh libexif-0.6.24.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/mako.sh Mako-1.2.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libdrm.sh libdrm-2.4.115.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libva.sh libva-2.15.0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libvdpau.sh libvdpau-1.5.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/wayland.sh wayland-1.21.0.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/wayland-protocols.sh wayland-protocols-1.31.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mesa.sh mesa-22.3.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/glu.sh glu-9.0.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mupdf.sh mupdf-1.21.1-source.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cups-filters.sh cups-filters-1.28.16.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gstreamer.sh gstreamer-1.22.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/cdparanoia.sh cdparanoia-III-10.2.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/libogg.sh libogg-1.3.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libvorbis.sh libvorbis-1.3.7.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtheora.sh libtheora-1.1.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/fribidi.sh fribidi-1.0.12.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/pango.sh pango-1.50.12.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gst-plugins-base.sh gst-plugins-base-1.22.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/jasper.sh jasper-4.0.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libmng.sh libmng-2.0.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/sdl.sh SDL-1.2.15.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libwebp.sh libwebp-1.3.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/xkeyboard-config.sh xkeyboard-config-2.38.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libxkbcommon.sh libxkbcommon-1.5.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mtdev.sh mtdev-1.1.6.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/pcre2.sh pcre2-10.42.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-util.sh xcb-util-0.4.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-util-image.sh xcb-util-image-0.4.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-util-keysyms.sh xcb-util-keysyms-0.4.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-util-renderutil.sh xcb-util-renderutil-0.3.10.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-util-wm.sh xcb-util-wm-0.4.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/qt.sh qt-everywhere-src-5.15.8.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/phonon.sh phonon-4.11.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/flac.sh flac-1.4.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/shared-mime-info.sh shared-mime-info-2.2.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/gdk-pixbuf.sh gdk-pixbuf-2.42.10.tar.xz https://download.gnome.org/sources/gdk-pixbuf/2.42/gdk-pixbuf-2.42.10.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/lame.sh lame-3.100.tar.gz https://downloads.sourceforge.net/lame/lame-3.100.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libvpx.sh libvpx-1.13.0.tar.gz https://github.com/webmproject/libvpx/archive/v1.12.0/libvpx-1.13.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/mpg123.sh mpg123-1.31.2.tar.bz2 https://downloads.sourceforge.net/mpg123/mpg123-1.31.2.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/opus.sh opus-1.3.1.tar.gz https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libsndfile.sh libsndfile-1.2.0.tar.xz https://github.com/libsndfile/libsndfile/releases/download/1.1.0/libsndfile-1.2.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libcap-PAM.sh libcap-2.67.tar.xz https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.67.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/soundtouch.sh soundtouch-2.3.2.tar.gz https://www.surina.net/soundtouch/soundtouch-2.3.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gst-plugins-bad.sh gst-plugins-bad-1.22.0.tar.xz https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.22.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/liba52.sh a52dec-0.7.4.tar.gz http://liba52.sourceforge.net/files/a52dec-0.7.4.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/nasm.sh nasm-2.15.05.tar.xz https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05.tar.xz https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05-xdoc.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/x264.sh x264-20220819.tar.xz https://anduin.linuxfromscratch.org/BLFS/x264/x264-20220819.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gst-plugins-ugly.sh gst-plugins-ugly-1.22.0.tar.xz https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.22.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/phonon-backend-gstreamer.sh phonon-backend-gstreamer-4.10.0.tar.xz  https://download.kde.org/stable/phonon/phonon-backend-gstreamer/4.10.0/phonon-backend-gstreamer-4.10.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/polkit-qt.sh polkit-qt-1-0.114.0.tar.xz https://download.kde.org/stable/polkit-qt-1/polkit-qt-1-0.114.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libdbusmenu-qt.sh libdbusmenu-qt-0.9.3+16.04.20160218.tar.gz https://launchpad.net/ubuntu/+archive/primary/+files/libdbusmenu-qt_0.9.3+16.04.20160218.orig.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/plasma-wayland-protocols.sh plasma-wayland-protocols-1.10.0.tar.xz https://download.kde.org/stable/plasma-wayland-protocols/plasma-wayland-protocols-1.10.0.tar.xz

export KF5_PREFIX=/opt/kf5

cat > /etc/profile.d/kf5.sh << "EOF"
# Begin /etc/profile.d/kf5.sh

export KF5_PREFIX=/opt/kf5

pathappend $KF5_PREFIX/bin              PATH
pathappend $KF5_PREFIX/lib/pkgconfig    PKG_CONFIG_PATH

pathappend $KF5_PREFIX/etc/xdg          XDG_CONFIG_DIRS
pathappend $KF5_PREFIX/share            XDG_DATA_DIRS

pathappend $KF5_PREFIX/lib/plugins      QT_PLUGIN_PATH
pathappend $KF5_PREFIX/lib/plugins/kcms QT_PLUGIN_PATH

pathappend $KF5_PREFIX/lib/qml          QML2_IMPORT_PATH

pathappend $KF5_PREFIX/lib/python3.11/site-packages PYTHONPATH

pathappend $KF5_PREFIX/share/man        MANPATH
# End /etc/profile.d/kf5.sh
EOF

cat >> /etc/profile.d/qt5.sh << "EOF"
# Begin Qt5 changes for KF5

pathappend /usr/lib/plugins            QT_PLUGIN_PATH
pathappend $QT5DIR/plugins             QT_PLUGIN_PATH
pathappend $QT5DIR/qml                 QML2_IMPORT_PATH

# End Qt5 changes for KF5
EOF

cat >> /etc/ld.so.conf << "EOF"
# Begin KF5 addition

/opt/kf5/lib

# End KF5 addition
EOF

install -v -dm755           $KF5_PREFIX/{etc,share} &&
ln -sfv /etc/dbus-1         $KF5_PREFIX/etc         &&
ln -sfv /usr/share/dbus-1   $KF5_PREFIX/share       &&
ln -sfv /usr/share/polkit-1 $KF5_PREFIX/share       &&
install -v -dm755           $KF5_PREFIX/lib         &&
ln -sfv /usr/lib/systemd    $KF5_PREFIX/lib

install -v -dm755                $KF5_PREFIX/share/icons &&
ln -sfv /usr/share/icons/hicolor $KF5_PREFIX/share/icons

mv /opt/kf5{,-5.103.0}
ln -sfv kf5-5.103.0 /opt/kf5


bash -e /dist/build_env/build_scripts/chroot-scripts/giflib.sh giflib-5.2.1.tar.gz https://sourceforge.net/projects/giflib/files/giflib-5.2.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libepoxy.sh libepoxy-1.5.10.tar.xz https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.10.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/libgpgerror.sh libgpg-error-1.46.tar.bz2 https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.46.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libgcrypt.sh libgcrypt-1.10.1.tar.bz2 https://www.gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.1.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libical.sh libical-3.0.16.tar.gz https://github.com/libical/libical/releases/download/v3.0.16/libical-3.0.16.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/lmdb.sh lmdb-LMDB_0.9.29.tar.gz https://github.com/LMDB/lmdb/archive/LMDB_0.9.29.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/qca.sh qca-2.3.5.tar.xz https://download.kde.org/stable/qca/2.3.5/qca-2.3.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/qrencode.sh qrencode-4.1.1.tar.bz2 https://fukuchi.org/works/qrencode/qrencode-4.1.1.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/uri.sh URI-5.12.tar.gz https://www.cpan.org/authors/id/O/OA/OALDERS/URI-5.12.tar.gz https://cpan.metacpan.org/authors/id/H/HA/HAARG/Test-Needs-0.002009.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/aspell.sh aspell-0.60.8.tar.gz https://ftp.gnu.org/gnu/aspell/aspell-0.60.8.tar.gz https://ftp.gnu.org/gnu/aspell/dict/en/aspell6-en-2020.12.07-0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/networkmanager.sh NetworkManager-1.42.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libspiro.sh libspiro-20220722.tar.gz https://github.com/fontforge/libspiro/releases/download/20220722/libspiro-dist-20220722.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/fontforge.sh fontforge-20230101.tar.xz https://github.com/fontforge/fontforge/releases/download/20230101/fontforge-20230101.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kde-fonts.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/kf5.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/unrar.sh unrar.tar.gz https://www.rarlab.com/rar/unrarsrc-6.2.6.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/zip.sh zip30.tar.gz https://downloads.sourceforge.net./infozip/zip30.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ark.sh ark-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ark-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gavl.sh gavl-1.4.0.tar.gz https://downloads.sourceforge.net/gmerlin/gavl-1.4.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/frei0r-plugins.sh frei0r-plugins-1.8.0.tar.gz https://files.dyne.org/frei0r/releases/frei0r-plugins-1.8.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/mlt.sh mlt-7.12.0.tar.gz https://github.com/mltframework/mlt/releases/download/v7.12.0/mlt-7.12.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/v4l-utils.sh v4l-utils-1.22.1.tar.bz2 https://www.linuxtv.org/downloads/v4l-utils/v4l-utils-1.22.1.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/breeze-icons.sh breeze-icons-5.103.0.tar.xz https://download.kde.org/stable/frameworks/5.97/breeze-icons-5.103.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdenlive.sh kdenlive-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdenlive-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmix.sh kmix-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmix-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kio-extras.sh kio-extras-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kio-extras-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/grantlee.sh grantlee-5.3.1.tar.gz https://github.com/steveire/grantlee/releases/download/v5.3.1/grantlee-5.3.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/xapian.sh xapian-core-1.4.20.tar.xz https://oligarchy.co.uk/xapian/1.4.20/xapian-core-1.4.20.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/khelpcenter.sh khelpcenter-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/khelpcenter-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/konsole.sh konsole-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/konsole-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/exiv2.sh exiv2-0.27.5-Source.tar.gz  https://github.com/Exiv2/exiv2/releases/download/v0.27.5/exiv2-0.27.5-Source.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkexiv2.sh libkexiv2-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkexiv2-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/poppler.sh poppler-23.02.0.tar.xz # rebuilding for KDE support
bash -e /dist/build_env/build_scripts/chroot-scripts/okular.sh okular-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/okular-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libraw.sh LibRaw-0.20.2.tar.gz https://www.libraw.org/data/LibRaw-0.20.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkdcraw.sh libkdcraw-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkdcraw-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcolorpicker.sh kColorPicker-0.2.0.tar.gz https://github.com/ksnip/kColorPicker/archive/refs/tags/v0.2.0/kColorPicker-0.2.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/kimageannotator.sh kImageAnnotator-0.6.0.tar.gz https://github.com/ksnip/kImageAnnotator/archive/refs/tags/v0.6.0/kImageAnnotator-0.6.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gwenview.sh gwenview-22.12.2.tar.xz  https://download.kde.org/stable/release-service/22.12.2/src/gwenview-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/neon.sh neon-0.32.2.tar.gz https://notroj.github.io/neon/neon-0.32.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libmusicbrainz.sh libmusicbrainz-5.1.0.tar.gz https://github.com/metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz https://www.linuxfromscratch.org/patches/blfs/11.2/libmusicbrainz-5.1.0-cmake_fixes-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/libkcddb.sh libkcddb-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkcddb-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libsamplerate.sh libsamplerate-0.2.2.tar.xz https://github.com/libsndfile/libsamplerate/releases/download/0.2.2/libsamplerate-0.2.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libatasmart.sh libatasmart-0.19.tar.xz http://0pointer.de/public/libatasmart-0.19.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libbytesize.sh libbytesize-2.7.tar.gz  https://github.com/storaged-project/libbytesize/releases/download/2.7/libbytesize-2.7.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libyaml.sh yaml-0.2.5.tar.gz https://github.com/yaml/libyaml/releases/download/0.2.5/yaml-0.2.5.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libaio.sh libaio-0.3.113.tar.gz https://pagure.io/libaio/archive/libaio-0.3.113/libaio-0.3.113.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/lvm2.sh LVM2.2.03.16.tgz https://sourceware.org/ftp/lvm2/LVM2.2.03.16.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/parted.sh parted-3.5.tar.xz https://ftp.gnu.org/gnu/parted/parted-3.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/json-c.sh json-c-0.16.tar.gz https://s3.amazonaws.com/json-c_releases/releases/json-c-0.16.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/popt.sh popt-1.18.tar.gz http://ftp.rpm.org/popt/releases/popt-1.x/popt-1.18.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cryptsetup.sh cryptsetup-2.4.3.tar.xz https://www.kernel.org/pub/linux/utils/cryptsetup/v2.4/cryptsetup-2.4.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libassuan.sh libassuan-2.5.5.tar.bz2 https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.5.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libksba.sh libksba-1.6.0.tar.bz2 https://www.gnupg.org/ftp/gcrypt/libksba/libksba-1.6.0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/npth.sh npth-1.6.tar.bz2 https://www.gnupg.org/ftp/gcrypt/npth/npth-1.6.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/pinentry.sh pinentry-1.2.1.tar.bz2 https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.2.1.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/gnupg.sh gnupg-2.3.7.tar.bz2 https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.3.7.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/swig.sh swig-4.0.2.tar.gz https://downloads.sourceforge.net/swig/swig-4.0.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gpgme.sh gpgme-1.18.0.tar.bz2 https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-1.18.0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/volume-key.sh volume_key-0.3.12.tar.gz https://github.com/felixonmars/volume_key/archive/volume_key-0.3.12.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libblockdev.sh libblockdev-2.27.tar.gz https://github.com/storaged-project/libblockdev/releases/download/2.27-1/libblockdev-2.27.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/lzo.sh lzo-2.10.tar.gz https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/asciidoc.sh asciidoc-10.2.0.tar.gz https://files.pythonhosted.org/packages/source/a/asciidoc/asciidoc-10.2.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/btrfs-progs.sh btrfs-progs-v5.19.tar.xz https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/btrfs-progs-v5.19.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/dosfstools.sh dosfstools-4.2.tar.gz https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gptfdisk.sh gptfdisk-1.0.9.tar.gz https://downloads.sourceforge.net/gptfdisk/gptfdisk-1.0.9.tar.gz https://www.linuxfromscratch.org/patches/blfs/11.2/gptfdisk-1.0.9-convenience-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/mdadm.sh mdadm-4.2.tar.xz  https://www.kernel.org/pub/linux/utils/raid/mdadm/mdadm-4.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/inih.sh inih-r56.tar.gz https://github.com/benhoyt/inih/archive/r56/inih-r56.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/liburcu.sh userspace-rcu-0.13.2.tar.bz2 https://lttng.org/files/urcu/userspace-rcu-0.13.2.tar.bz2 
bash -e /dist/build_env/build_scripts/chroot-scripts/xfsprogs.sh xfsprogs-5.19.0.tar.xz https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-5.19.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/udisks.sh udisks-2.9.4.tar.bz2 https://github.com/storaged-project/udisks/releases/download/udisks-2.9.4/udisks-2.9.4.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libburn.sh libburn-1.5.4.tar.gz https://files.libburnia-project.org/releases/libburn-1.5.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libdvdread.sh libdvdread-6.1.3.tar.bz2 https://get.videolan.org/libdvdread/6.1.3/libdvdread-6.1.3.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/taglib.sh taglib-1.12.tar.gz https://taglib.org/releases/taglib-1.12.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/dvdrw-tools.sh dvd+rw-tools-7.1.tar.gz http://fy.chalmers.se/~appro/linux/DVD+RW/tools/dvd+rw-tools-7.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libao.sh libao-1.2.0.tar.gz https://downloads.xiph.org/releases/ao/libao-1.2.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libmad.sh libmad-0.15.1b.tar.gz https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz  https://www.linuxfromscratch.org/patches/blfs/11.2/libmad-0.15.1b-fixes-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/cdrdao.sh cdrdao-1.2.4.tar.bz2 https://downloads.sourceforge.net/cdrdao/cdrdao-1.2.4.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/k3b.sh k3b-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/k3b-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/juk.sh juk-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/juk-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/dragon.sh dragon-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/dragon-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcalc.sh kcalc-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kcalc-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kwalletmanager.sh kwalletmanager-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kwalletmanager-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/marble.sh marble-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/marble-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi.sh akonadi-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmime.sh kmime-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmime-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kakonadi-mime.sh akonadi-mime-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-mime-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/cyprus-sasl.sh cyrus-sasl-2.1.28.tar.gz https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ksmtp.sh ksmtp-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksmtp-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkgapi.sh libkgapi-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkgapi-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libsecret.sh libsecret-0.20.5.tar.xz https://download.gnome.org/sources/libsecret/0.20/libsecret-0.20.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/qtkeychain.sh qtkeychain-0.13.2.tar.gz https://github.com/frankosterfeld/qtkeychain/archive/refs/tags/v0.13.2.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/kmailtransport.sh kmailtransport-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmailtransport-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kpimtextedit.sh kpimtextedit-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kpimtextedit-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/identitymanagment.sh kidentitymanagement-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kidentitymanagement-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcalutils.sh kcalutils-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kcalutils-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/grantlee-theme.sh grantleetheme-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/grantleetheme-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi-contacts.sh akonadi-contacts-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-contacts-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi-calendar.sh akonadi-calendar-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-calendar-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi-notes.sh akonadi-notes-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-notes-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/calendarsupport.sh calendarsupport-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/calendarsupport-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi-calendar-tools.sh akonadi-calendar-tools-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-calendar-tools-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/imap.sh kimap-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kimap-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ldap.sh kldap-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kldap-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi-search.sh akonadi-search-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-search-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/pimcommon.sh pimcommon-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/pimcommon-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mailimporter.sh mailimporter-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/mailimporter-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmbox.sh kmbox-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmbox-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libgravatar.sh libgravatar-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libgravatar-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkleo.sh libkleo-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkleo-22.12.2.tar.xz
pip3 install qt5-tools
bash -e /dist/build_env/build_scripts/chroot-scripts/python2.sh Python-2.7.18.tar.xz https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tar.xz https://www.linuxfromscratch.org/patches/blfs/11.2/Python-2.7.18-security_fixes-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/c-ares.sh c-ares-1.19.0.tar.gz https://c-ares.haxx.se/download/c-ares-1.19.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/nghttp2.sh nghttp2-1.52.0.tar.xz https://github.com/nghttp2/nghttp2/releases/download/v1.48.0/nghttp2-1.52.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/node.js.sh node-v18.14.1.tar.xz https://nodejs.org/dist/v18.14.1/node-v18.14.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/pciutils.sh pciutils-3.9.0.tar.xz https://www.kernel.org/pub/software/utils/pciutils/pciutils-3.9.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libass.sh libass-0.17.0.tar.xz https://github.com/libass/libass/releases/download/0.16.0/libass-0.17.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/fdk-aac.sh fdk-aac-2.0.2.tar.gz https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/x265.sh x265-20230215.tar.xz https://anduin.linuxfromscratch.org/BLFS/x265/x265-20230215.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/sdl2.sh SDL2-2.26.3.tar.gz https://www.libsdl.org/release/SDL2-2.26.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ffmpeg.sh ffmpeg-5.1.2.tar.xz https://ffmpeg.org/releases/ffmpeg-5.1.2.tar.xz https://www.linuxfromscratch.org/patches/blfs/11.3/ffmpeg-5.1.2-chromium_method-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/qtwebengine.sh qtwebengine-5.15.12.tar.xz https://anduin.linuxfromscratch.org/BLFS/qtwebengine/qtwebengine-5.15.12.tar.xz  https://www.linuxfromscratch.org/patches/blfs/11.3/qtwebengine-5.15.12-build_fixes-1.patch https://www.linuxfromscratch.org/patches/blfs/11.3/qtwebengine-5.15.12-ffmpeg5_fixes-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/messagelib.sh messagelib-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/messagelib-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mailcommon.sh mailcommon-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/mailcommon-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadi-import-wizard.sh akonadi-import-wizard-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadi-import-wizard-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akonadiconsole.sh akonadiconsole-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akonadiconsole-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kontaktinterface.sh kontactinterface-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kontactinterface-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kontact.sh kontact-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kontact-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/akregator.sh akregator-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/akregator-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/artikulate.sh artikulate-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/artikulate-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkcompactdisk.sh libkcompactdisc-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkcompactdisc-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/audiocd-kio.sh audiocd-kio-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/audiocd-kio-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/blinken.sh blinken-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/blinken-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/openal-soft.sh openal-soft-1.23.0.tar.bz2 https://openal-soft.org/openal-releases/openal-soft-1.23.0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libkdegames.sh libkdegames-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkdegames-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bomber.sh bomber-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/bomber-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bovo.sh bovo-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/bovo-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/cantor.sh cantor-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/cantor-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/cervisia.sh cervisia-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/cervisia-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/colord.sh colord-1.4.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/dolphin.sh dolphin-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/dolphin-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/dolphin-plugins.sh dolphin-plugins-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/dolphin-plugins-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/elisa.sh elisa-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/elisa-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/falkon.sh falkon-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/falkon-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ffmpegthumbs.sh ffmpegthumbs-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ffmpegthumbs-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/filelight.sh filelight-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/filelight-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/granatier.sh granatier-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/granatier-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/grantlee-editor.sh grantlee-editor-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/grantlee-editor-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kpkpass.sh kpkpass-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kpkpass-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kitinerary.sh kitinerary-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kitinerary-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/publictransport.sh kpublictransport-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kpublictransport-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kosmindoormap.sh kosmindoormap-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kosmindoormap-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/itinerary.sh itinerary-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/itinerary-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kaddressbook.sh kaddressbook-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kaddressbook-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkmahjongg.sh libkmahjongg-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkmahjongg-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kajongg.sh kajongg-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kajongg-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kalarm.sh kalarm-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kalarm-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdiagram.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/eventviews.sh eventviews-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/eventviews-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kalendar.sh kalendar-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kalendar-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/analitza.sh analitza-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/analitza-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kalgebra.sh kalgebra-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kalgebra-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kalzium.sh kalzium-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kalzium-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gphoto2.sh libgphoto2-2.5.30.tar.xz https://sourceforge.net/projects/gphoto/files/gphoto/2.5.28/gphoto2-2.5.28.tar.xz/download https://sourceforge.net/projects/gphoto/files/libgphoto/2.5.30/libgphoto2-2.5.30.tar.xz/download
bash -e /dist/build_env/build_scripts/chroot-scripts/kamera.sh kamera-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kamera-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kamoso.sh kamoso-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kamoso-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libkeduvocdocument.sh libkeduvocdocument-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkeduvocdocument-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kanagram.sh kanagram-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kanagram-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kapman.sh kapman-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kapman-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kapptemplate.sh kapptemplate-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kapptemplate-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kate.sh kate-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kate-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/katomic.sh katomic-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/katomic-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kbackup.sh kbackup-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kbackup-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kblackbox.sh kblackbox-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kblackbox-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kbreakout.sh kbreakout-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kbreakout-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kbruch.sh kbruch-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kbruch-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcachegrind.sh kcachegrind-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kcachegrind-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcharselect.sh kcharselect-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kcharselect-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcolorchooser.sh kcolorchooser-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kcolorchooser-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kcron.sh kcron-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kcron-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdebugsettings.sh kdebugsettings-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdebugsettings-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdeconnect.sh kdeconnect-kde-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdeconnect-kde-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdegraphics-mobipocket.sh kdegraphics-mobipocket-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdegraphics-mobipocket-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdegraphics-thumbnailers.sh kdegraphics-thumbnailers-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdegraphics-thumbnailers-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdenetwork-filesharing.sh kdenetwork-filesharing-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdenetwork-filesharing-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/incidenceeditor.sh incidenceeditor-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/incidenceeditor-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libksieve.sh libksieve-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libksieve-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ktnef.sh ktnef-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ktnef-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdepim-addons.sh kdepim-addons-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdepim-addons-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdesdk-kio.sh kdesdk-kio-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdesdk-kio-22.12.2.tar.x
bash -e /dist/build_env/build_scripts/chroot-scripts/kdesdk-thumbnailers.sh kdesdk-thumbnailers-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdesdk-thumbnailers-22.12.2.tar.xz

bash -e /dist/build_env/build_scripts/chroot-scripts/libkomparediff2.sh libkomparediff2-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libkomparediff2-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdevelop.sh kdevelop-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdevelop-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdevelop-pg-qt.sh kdevelop-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdevelop-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdevelop-php.sh kdev-php-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdev-php-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdevelop-python.sh kdev-python-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdev-python-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdf.sh kdf-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdf-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdialog.sh kdialog-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdialog-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kdiamond.sh kdiamond-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kdiamond-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/keditbookmarks.sh keditbookmarks-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/keditbookmarks-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kfind.sh kfind-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kfind-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kfourinline.sh kfourinline-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kfourinline-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kgeography.sh kgeography-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kgeography-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kget.sh kget-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kget-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kgoldrunner.sh kgoldrunner-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kgoldrunner-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kgpg.sh kgpg-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kgpg-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/khangman.sh khangman-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/khangman-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kig.sh kig-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kig-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kigo.sh kigo-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kigo-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/killbots.sh killbots-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/killbots-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kimagemapeditor.sh kimagemapeditor-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kimagemapeditor-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kio-gdrive.sh kio-gdrive-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kio-gdrive-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kio-zeroconf.sh kio-zeroconf-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kio-zeroconf-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kirigami-gallery.sh kirigami-gallery-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kirigami-gallery-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kiriki.sh kiriki-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kiriki-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kiten.sh kiten-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kiten-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kjumpingcube.sh kjumpingcube-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kjumpingcube-22.12.2.tar.xz
#bash -e /dist/build_env/build_scripts/chroot-scripts/kleopatra.sh kleopatra-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kleopatra-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/klettres.sh klettres-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/klettres-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/klines.sh klines-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/klines-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmag.sh kmag-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmag-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmahjongg.sh kmahjongg-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmahjongg-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmail.sh kmail-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmail-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmail-account-wizard.sh kmail-account-wizard-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmail-account-wizard-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmines.sh kmines-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmines-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmix.sh kmix-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmix-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmousetool.sh kmousetool-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmousetool-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmouth.sh kmouth-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmouth-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmplot.sh kmplot-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kmplot-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/knavalbattle.sh knavalbattle-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/knavalbattle-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/knetwalk.sh knetwalk-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/knetwalk-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/knights.sh knights-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/knights-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/knotes.sh knotes-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/knotes-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kolf.sh kolf-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kolf-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kollision.sh kollision-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kollision-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kolourpaint.sh kolourpaint-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kolourpaint-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kompare.sh kompare-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kompare-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/konqueror.sh konqueror-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/konqueror-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/konquest.sh konquest-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/konquest-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kontrast.sh kontrast-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kontrast-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/konversation.sh konversation-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/konversation-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kopete.sh kopete-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kopete-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripfts/korganizer.sh korganizer-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/korganizer-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/fc-solve.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/kpat.sh kpat-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kpat-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/freerdp.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/libvncserver.sh libvncserver-LibVNCServer-0.9.14.tar.gz https://github.com/LibVNC/libvncserver/archive/refs/tags/LibVNCServer-0.9.14.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/krdc.sh krdc-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/krdc-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kreversi.sh kreversi-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kreversi-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/krfb.sh krfb-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/krfb-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kruler.sh kruler-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kruler-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kshisen.sh kshisen-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kshisen-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ksirk.sh ksirk-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksirk-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ksnakeduel.sh ksnakeduel-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksnakeduel-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kspaceduel.sh kspaceduel-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kspaceduel-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ksquares.sh ksquares-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksquares-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ksudoku.sh ksudoku-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksudoku-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ksystemlog.sh ksystemlog-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksystemlog-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kteatime.sh kteatime-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kteatime-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ktimer.sh ktimer-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ktimer-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ktuberling.sh ktuberling-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ktuberling-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kturtle.sh kturtle-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kturtle-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ktorrent.sh libktorrent-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libktorrent-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ktorrent.sh ktorrent-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ktorrent-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/ktouch.sh ktouch-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ktouch-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kubrick.sh kubrick-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kubrick-22.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/audiofile.sh audiofile-0.3.6.tar.xz https://download.gnome.org/sources/audiofile/0.3/audiofile-0.3.6.tar.xz https://www.linuxfromscratch.org/patches/blfs/11.3/audiofile-0.3.6-consolidated_patches-1.patch
bash -e /dist/build_env/build_scripts/chroot-scripts/kwave.sh kwave-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kwave-22.12.2.tar.xz https://sourceforge.net/projects/id3lib/files/id3lib/3.8.3/id3lib-3.8.3.tar.gz  https://www.linuxfromscratch.org/patches/blfs/11.3/id3lib-3.8.3-consolidated_patches-1.patch https://www.fftw.org/fftw-3.3.10.tar.gz  https://download.gnome.org/sources/librsvg/2.54/librsvg-2.54.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kwordquiz.sh kwordquiz-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/kwordquiz-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/libiconv.sh libiconv-1.17.tar.gz https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.17.tar.gz https://ftp.gnu.org/gnu/gettext/gettext-0.21.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/hunspell.sh hunspell-1.7.2.tar.gz https://github.com/hunspell/hunspell/releases/download/v1.7.2/hunspell-1.7.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/lokalize.sh lokalize-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/lokalize-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/lskat.sh lskat-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/lskat-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/markdownpart.sh markdownpart-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/markdownpart-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/mbox-importer.sh mbox-importer-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/mbox-importer-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/fluidsynth.sh fluidsynth-2.3.1.tar.gz https://github.com/FluidSynth/fluidsynth/archive/refs/tags/v2.3.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/minuet.sh minuet-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/minuet-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/palapeli.sh palapeli-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/palapeli-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/pim-data-exporter.sh pim-data-exporter-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/pim-data-exporter-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/pim-sieve-editor.sh pim-sieve-editor-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/pim-sieve-editor-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/poxml.sh poxml-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/poxml-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/print-manager.sh print-manager-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/print-manager-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/rocs.sh rocs-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/rocs-22.12.2.tar.xz 
#bash -e /dist/build_env/build_scripts/chroot-scripts/signon.sh signond-master.tar.gz https://gitlab.com/accounts-sso/signond/-/archive/master/signond-master.tar.gz
#bash -e /dist/build_env/build_scripts/chroot-scripts/signon-kwallet-extension.sh signon-kwallet-extension-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/signon-kwallet-extension-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/sane.sh sane-backends-1.0.32.tar.gz https://anduin.linuxfromscratch.org/BLFS/sane/sane-backends-1.0.32.tar.gz https://anduin.linuxfromscratch.org/BLFS/sane/sane-frontends-1.0.14.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libksane.sh ksanecore-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/ksanecore-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/libksane.sh libksane-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/libksane-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/skanlite.sh skanlite-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/skanlite-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/skanlite.sh skanpage-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/skanpage-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/spectacle.sh spectacle-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/spectacle-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/step.sh step-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/step-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/svgpart.sh svgpart-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/svgpart-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/sweeper.sh sweeper-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/sweeper-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/umbrello.sh umbrello-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/umbrello-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/yakuake.sh yakuake-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/yakuake-22.12.2.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/zanshin.sh zanshin-22.12.2.tar.xz https://download.kde.org/stable/release-service/22.12.2/src/zanshin-22.12.2.tar.xz 

bash -e /dist/build_env/build_scripts/chroot-scripts/gsettings-desktop-schemas.sh gsettings-desktop-schemas-43.0.tar.xz https://download.gnome.org/sources/gsettings-desktop-schemas/43/gsettings-desktop-schemas-43.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/at-spi2-core.sh at-spi2-core-2.46.0.tar.xz https://download.gnome.org/sources/at-spi2-core/2.46/at-spi2-core-2.46.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/hicolor-icon-theme.sh  hicolor-icon-theme-0.17.tar.xz  https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.17.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gtk+2.sh gtk+-2.24.33.tar.xz https://download.gnome.org/sources/gtk+/2.24/gtk+-2.24.33.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/adawaita-icon-theme.sh adwaita-icon-theme-43.tar.xz https://download.gnome.org/sources/adwaita-icon-theme/43/adwaita-icon-theme-43.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/sassc.sh sassc-3.6.2.tar.gz https://github.com/sass/sassc/archive/3.6.2/sassc-3.6.2.tar.gz https://github.com/sass/libsass/archive/3.6.5/libsass-3.6.5.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/iso-codes.sh iso-codes-4.12.0.tar.xz https://ftp.debian.org/debian/pool/main/i/iso-codes/iso-codes_4.12.0.orig.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gtk+3.sh gtk+-3.24.36.tar.xz https://download.gnome.org/sources/gtk+/3.24/gtk+-3.24.36.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kuserfeedback.sh kuserfeedback-1.2.0.tar.xz https://download.kde.org/stable/kuserfeedback/kuserfeedback-1.2.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libpwquality.sh libpwquality-1.4.5.tar.bz2 https://github.com/libpwquality/libpwquality/releases/download/libpwquality-1.4.5/libpwquality-1.4.5.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libqalculate.sh libqalculate-4.5.1.tar.gz https://github.com/Qalculate/libqalculate/releases/download/v4.5.1/libqalculate-4.5.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-util-cursor.sh xcb-util-cursor-0.1.4.tar.xz  https://xcb.freedesktop.org/dist/xcb-util-cursor-0.1.4.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libcanberra.sh libcanberra-0.30.tar.xz  https://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz https://www.linuxfromscratch.org/patches/blfs/11.3/libcanberra-0.30-wayland-1.
bash -e /dist/build_env/build_scripts/chroot-scripts/libevdev.sh libevdev-1.13.0.tar.xz https://www.freedesktop.org/software/libevdev/libevdev-1.13.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libinput.sh libinput-1.22.1.tar.gz https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.22.1/libinput-1.22.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/lm-sensors.sh lm-sensors-3-6-0.tar.gz https://github.com/lm-sensors/lm-sensors/archive/V3-6-0/lm-sensors-3-6-0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/oxygen-icons5.sh oxygen-icons5-5.103.0.tar.xz https://download.kde.org/stable/frameworks/5.103/oxygen-icons5-5.103.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/accountsservice.sh accountsservice-22.08.8.tar.xz https://www.freedesktop.org/software/accountsservice/accountsservice-22.08.8.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/smartmontools.sh smartmontools-7.3.tar.gz https://downloads.sourceforge.net/smartmontools/smartmontools-7.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libxcvt.sh libxcvt-0.1.2.tar.xz https://www.x.org/pub/individual/lib/libxcvt-0.1.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xbitmaps.sh xbitmaps-1.1.2.tar.bz2 https://www.x.org/pub/individual/data/xbitmaps-1.1.2.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xorgapps.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/xcursor-themes.sh xcursor-themes-1.0.6.tar.bz2 https://www.x.org/pub/individual/data/xcursor-themes-1.0.6.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xorgfonts.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/libtirpc.sh libtirpc-1.3.3.tar.bz2 https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.3.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xwayland.sh xwayland-22.1.8.tar.xz https://www.x.org/pub/individual/xserver/xwayland-22.1.8.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/sbc.sh sbc-2.0.tar.xz https://www.kernel.org/pub/linux/bluetooth/sbc-2.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/pipewire.sh pipewire-0.3.66.tar.gz  https://github.com/PipeWire/pipewire/archive/0.3.66/pipewire-0.3.66.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/kde-plasma.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/twm.sh twm-1.0.12.tar.xz https://www.x.org/pub/individual/app/twm-1.0.12.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xclock.sh xclock-1.1.1.tar.xz https://www.x.org/pub/individual/app/xclock-1.1.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xterm.sh xterm-379.tgz https://invisible-mirror.net/archives/xterm/xterm-379.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/xinit.sh xinit-1.4.2.tar.xz https://www.x.org/pub/individual/app/xinit-1.4.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xorg-server.sh xorg-server-21.1.7.tar.xz https://www.x.org/pub/individual/xserver/xorg-server-21.1.7.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xorg-libinput.sh xf86-input-libinput-1.2.1.tar.xz https://www.x.org/pub/individual/driver/xf86-input-libinput-1.2.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xorg-fbdev.sh xf86-video-fbdev-0.5.0.tar.bz2 https://www.x.org/pub/individual/driver/xf86-video-fbdev-0.5.0.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xorg-synaptics.sh xf86-input-synaptics-1.9.2.tar.xz https://www.x.org/pub/individual/driver/xf86-input-synaptics-1.9.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xorg-evdev.sh xf86-input-evdev-2.10.6.tar.bz2 https://www.x.org/pub/individual/driver/xf86-input-evdev-2.10.6.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xorg-vmware.sh xf86-video-vmware-13.4.0.tar.xz https://www.x.org/pub/individual/driver/xf86-video-vmware-13.4.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/intel-gmmlib.sh gmmlib-intel-gmmlib-22.3.4.tar.gz https://github.com/intel/gmmlib/archive/refs/tags/intel-gmmlib-22.3.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/intel-media-driver.sh media-driver-intel-media-23.1.2.tar.gz https://github.com/intel/media-driver/archive/refs/tags/intel-media-23.1.2.tar.gz