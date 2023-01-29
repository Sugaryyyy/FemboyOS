echo "Running from chroot!"
echo
echo
echo "Building stuff"
echo
echo
echo

bash -e /dist/build_env/build_scripts/chroot-scripts/man-pages.sh man-pages-5.13.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/lana-etc.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/glibc.sh glibc-2.36.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/zlib.sh zlib-1.2.13.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bzip2.sh bzip2-1.0.8.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/xz.sh xz-5.2.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/zstd.sh zstd-1.5.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/file.sh file-5.42.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/readline.sh readline-8.1.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/m4.sh m4-1.4.19.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bc.sh bc-6.0.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/flex.sh flex-2.6.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/tcl.sh tcl8.6.12-src.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/expect.sh expect5.45.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/dejagnu.sh dejagnu-1.6.3.tar.gz 
bash -e /dist/build_env/build_scripts/chroot-scripts/binutils.sh binutils-2.39.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gmp.sh gmp-6.2.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mpfr.sh mpfr-4.1.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/mpc.sh mpc-1.2.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/attr.sh attr-2.5.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/acl.sh acl-2.3.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libcap.sh libcap-2.65.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/shadow.sh shadow-4.12.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gcc.sh gcc-12.2.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/pkg-config.sh pkg-config-0.29.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ncurses.sh ncurses-6.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/sed.sh sed-4.8.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/psmisc.sh psmisc-23.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gettext.sh gettext-0.21.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/bison.sh bison-3.8.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/grep.sh grep-3.7.tar.xz 
bash -e /dist/build_env/build_scripts/chroot-scripts/bash.sh bash-5.1.16.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtool.sh libtool-2.4.7.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gdbm.sh gdbm-1.23.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gperf.sh gperf-3.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/expat.sh expat-2.5.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/inetutils.sh inetutils-2.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/less.sh less-590.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/perl.sh perl-5.36.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xml-parser.sh XML-Parser-2.46.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/intltool.sh intltool-0.51.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/autoconf.sh autoconf-2.71.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/automake.sh automake-1.16.5.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/openssl.sh openssl-3.0.5.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/kmod.sh kmod-30.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libelf.sh elfutils-0.187.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libffi.sh libffi-3.4.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/python.sh Python-3.10.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/wheel.sh wheel-0.37.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ninja.sh ninja-1.11.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/meson.sh meson-0.63.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/coreutils.sh coreutils-9.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/check.sh check-0.15.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/diffutils.sh diffutils-3.8.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gawk.sh gawk-5.1.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/findutils.sh findutils-4.9.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/groff.sh groff-1.22.4.tar.gz
#bash -e /dist/build_env/build_scripts/chroot-scripts/grub-legacy.sh grub-2.06.tar.xz #Uncomment if you want to build for a Legacy instead of a UEFI system :3
bash -e /dist/build_env/build_scripts/chroot-scripts/gzip.sh gzip-1.12.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/iproute2.sh iproute2-5.19.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/kbd.sh kbd-2.5.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libpipeline.sh libpipeline-1.5.6.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/make.sh make-4.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/patch.sh patch-2.7.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/tar.sh tar-1.34.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/texinfo.sh texinfo-6.8.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/vim.sh vim-9.0.0228.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/nano.sh nano-6.4.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/markupsafe.sh MarkupSafe-2.1.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/jinja2.sh Jinja2-3.1.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libcap.sh libcap-2.65.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/systemd.sh systemd-251.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/d-bus.sh dbus-1.14.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/man-db.sh man-db-2.10.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/procps-ng.sh procps-ng-4.0.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/util-linux.sh util-linux-2.38.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/e2fsprogs.sh e2fsprogs-1.46.5.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/strip.sh # Strips debugging symbols.
bash -e /dist/build_env/build_scripts/chroot-scripts/cleanup.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/networksetup.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/inputrc.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/shells.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/systemdconf.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/fstab.sh

bash -e /dist/build_env/build_scripts/chroot-scripts/linux-5.19.2.sh linux-5.19.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/sudo.sh sudo-1.9.11p3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/busybox.sh
#bash -e /dist/build_env/build_scripts/chroot-scripts/grub-legacy-conf # WARNING! This command installs FemboyOS to your HOST machine in Legacy mode
# If you do not want to install FemboyOS to your host, do not uncomment the line above. 

bash -e /dist/build_env/build_scripts/chroot-scripts/grub-efi.sh # Comment this if you're building for a Legacy system.
#bash -e /dist/build_env/build_scripts/chroot-scripts/grub-efi-config.sh # WARNING! This command installs FemboyOS to your HOST machine in UEFI mode!
# If you do not want to install FemboyOS to your host, do not uncomment the line above. 

bash -e /dist/build_env/build_scripts/chroot-scripts/which.sh which-2.21.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/squashfs-tools.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/cdrtools.sh cdrtools-3.01.tar.bz2 
bash -e /dist/build_env/build_scripts/chroot-scripts/lsb-release.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/cpio.sh cpio-2.13.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/mkinitramfs.sh


bash -e /dist/build_env/build_scripts/chroot-scripts/neofetch.sh 
bash -e /dist/build_env/build_scripts/chroot-scripts/motd.sh 

bash -e /dist/build_env/build_scripts/chroot-scripts/libarchive.sh libarchive-3.6.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/curl.sh curl-7.84.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libuv.sh libuv-v1.44.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cmake.sh cmake-3.24.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/git.sh git-2.37.2.tar.xz


echo "Setting up networking :3"

bash -e /dist/build_env/build_scripts/chroot-scripts/dhcpcd.sh dhcpcd-9.4.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/dhcp.sh dhcp-4.4.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libnl.sh libnl-3.7.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/iw.sh iw-5.19.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/wget.sh wget-1.21.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libxml2.sh libxml2-2.10.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libxslt.sh libxslt-1.1.37.tar.xz  
bash -e /dist/build_env/build_scripts/chroot-scripts/pcre.sh pcre-8.45.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/glib.sh glib-2.72.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libnl.sh glib-2.72.3.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/wpa_supplicant.sh wpa_supplicant-2.10.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/iptables.sh iptables-1.8.8.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/net-tools.sh net-tools-2.10.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtasn1.sh libtasn1-4.18.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/p11-kit.sh p11-kit-0.24.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/nspr.sh nspr-4.34.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/nss.sh nss-3.82.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/make-ca.sh make-ca-1.10.tar.xz
echo "Building shells :3"
echo "You can safely quit this script if you want a barebones system."
echo "Continuing in 10 seconds."
sleep 10
# Optional

bash -e /dist/build_env/build_scripts/chroot-scripts/zsh.sh zsh-5.9.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/fish.sh fish-3.6.0.tar.xz

echo "Building Links and image libraries :3"
# Optional

bash -e /dist/build_env/build_scripts/chroot-scripts/libpng.sh libpng-1.6.37.tar.xz # NEEDED FOR KDE
bash -e /dist/build_env/build_scripts/chroot-scripts/libjpeg.sh libjpeg-turbo-2.1.4.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/yasm.sh yasm-1.3.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libevent.sh libevent-2.1.12-stable.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/brotli.sh brotli-1.0.9.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/links.sh links-2.27.tar.bz2

bash -e /dist/build_env/build_scripts/chroot-scripts/uwufetch.sh

echo "Building KDE :3"
echo "You need a internet connection in chroot, it should work automatically."
echo "Testing internet connection:"

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
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


bash -e /dist/build_env/build_scripts/chroot-scripts/extra-cmake-modules.sh extra-cmake-modules-5.97.0.tar.
bash -e /dist/build_env/build_scripts/chroot-scripts/xcb-proto.sh xcb-proto-1.15.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/util-macros.sh util-macros-1.19.3.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xorgproto.sh xorgproto-2022.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libXau.sh libXau-1.0.9.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libXdmcp.sh libXdmcp-1.1.3.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libxcb.sh libxcb-1.15.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/FreeType.sh freetype-2.12.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/icu.sh icu4c-71_1-src.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/Graphite2.sh graphite2-1.3.14.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/HarfBuzz.sh harfbuzz-5.1.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/FreeType.sh freetype-2.12.1.tar.xz # Freetype 2nd pass
bash -e /dist/build_env/build_scripts/chroot-scripts/fontconfig.sh fontconfig-2.14.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xorglibs.sh
bash -e /dist/build_env/build_scripts/chroot-scripts/lcms.sh lcms2-2.13.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/alsa-lib.sh alsa-lib-1.2.7.2.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/Nettle.sh nettle-3.8.1.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libunistring.sh libunistring-1.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/GnuTLS.sh gnutls-3.7.7.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libssh2.sh libssh2-1.10.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/LLVM.sh llvm-14.0.6.src.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/Rustc.sh rustc-1.60.0-src.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/JS.sh firefox-91.12.0esr.source.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/gobject-introspection.sh gobject-introspection-1.72.0.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/unzip.sh unzip60.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/sgml-common.sh sgml-common-0.6.3.tgz
bash -e /dist/build_env/build_scripts/chroot-scripts/docbook-xml.sh docbook-xml-4.5.zip
bash -e /dist/build_env/build_scripts/chroot-scripts/docbook-xsl-nons.sh docbook-xsl-nons-1.79.2.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libxslt.sh libxslt-1.1.37.tar.xz  
bash -e /dist/build_env/build_scripts/chroot-scripts/Linux-PAM.sh Linux-PAM-1.5.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/cracklib.sh cracklib-2.9.7.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/shadow-reinstall.sh shadow-4.12.2.tar.xz # Reinstalling 
bash -e /dist/build_env/build_scripts/chroot-scripts/systemd-reinstall.sh systemd-251.tar.gz # Reinstalling
bash -e /dist/build_env/build_scripts/chroot-scripts/polkit.sh polkit-121.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/sqlite.sh sqlite-autoconf-3390200.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libgudev.sh libgudev-237.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/libusb.sh libusb-1.0.26.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/libgusb.sh libgusb-0.3.10.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/itstool.sh itstool-2.0.7.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/pygments.sh Pygments-2.13.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/gtk-doc.sh gtk-doc-1.33.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/usbutils.sh usbutils-014.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/graphviz.sh graphviz-5.0.1.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/vala.sh vala-0.56.2.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/colord.sh colord-1.4.6.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/xmlto.sh xmlto-0.0.28.tar.bz2
bash -e /dist/build_env/build_scripts/chroot-scripts/xdg-utils.sh xdg-utils-1.1.3.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/cups.sh cups-2.4.2.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/libtiff.sh tiff-4.4.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/openjpeg.sh openjpeg-2.5.0.tar.gz
bash -e /dist/build_env/build_scripts/chroot-scripts/ghostscript.sh ghostscript-9.56.1.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/boost.sh boost_1_80_0.tar.bz2



bash -e /dist/build_env/build_scripts/chroot-scripts/cups-filters.sh cups-filters-1.28.16.tar.xz
bash -e /dist/build_env/build_scripts/chroot-scripts/phonon.sh phonon-4.11.1.tar.xz
