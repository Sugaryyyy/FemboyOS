echo "Installing xOrg Libraries >w<"

cd /sources/
cat > lib-7.md5 << "EOF"
ce2fb8100c6647ee81451ebe388b17ad  xtrans-1.4.0.tar.bz2
6b20033f88f0be3d870449c47f1e10a8  libX11-1.8.1.tar.xz
f5b48bb76ba327cd2a8dc7a383532a95  libXext-1.3.4.tar.bz2
4e1196275aa743d6ebd3d3d5ec1dff9c  libFS-1.0.8.tar.bz2
76d77499ee7120a56566891ca2c0dbcf  libICE-1.0.10.tar.bz2
87c7fad1c1813517979184c8ccd76628  libSM-1.2.3.tar.bz2
eeea9d5af3e6c143d0ea1721d27a5e49  libXScrnSaver-1.2.3.tar.bz2
b122ff9a7ec70c94dbbfd814899fffa5  libXt-1.2.1.tar.bz2
ac774cff8b493f566088a255dbf91201  libXmu-1.1.3.tar.bz2
6f0ecf8d103d528cfc803aa475137afa  libXpm-3.5.13.tar.bz2
c1ce21c296bbf3da3e30cf651649563e  libXaw-1.0.14.tar.bz2
86f182f487f4f54684ef6b142096bb0f  libXfixes-6.0.0.tar.bz2
3fa0841ea89024719b20cd702a9b54e0  libXcomposite-0.4.5.tar.bz2
802179a76bded0b658f4e9ec5e1830a4  libXrender-0.9.10.tar.bz2
4cdd1886fe5cce6f68554296edb46db8  libXcursor-1.2.1.tar.xz
e3f554267a7a04b042dc1f6352bd6d99  libXdamage-1.1.5.tar.bz2
6447db6a689fb530c218f0f8328c3abc  libfontenc-1.1.4.tar.bz2
bdf528f1d337603c7431043824408668  libXfont2-2.0.5.tar.bz2
5004d8e21cdddfe53266b7293c1dfb1b  libXft-2.3.4.tar.bz2
74055672a111a98ce2841d2ec4057b05  libXi-1.8.tar.bz2
0d5f826a197dae74da67af4a9ef35885  libXinerama-1.1.4.tar.bz2
18f3b20d522f45e4dadd34afb5bea048  libXrandr-1.5.2.tar.bz2
e142ef0ed0366ae89c771c27cfc2ccd1  libXres-1.2.1.tar.bz2
ef8c2c1d16a00bd95b9fdcef63b8a2ca  libXtst-1.2.3.tar.bz2
210b6ef30dda2256d54763136faa37b9  libXv-1.0.11.tar.bz2
11a358e7229fa28dc9801c1e64fe2e18  libXvMC-1.0.13.tar.xz
0ddeafc13b33086357cfa96fae41ee8e  libXxf86dga-1.1.5.tar.bz2
298b8fff82df17304dfdb5fe4066fe3a  libXxf86vm-1.1.4.tar.bz2
d2f1f0ec68ac3932dd7f1d9aa0a7a11c  libdmx-1.1.4.tar.bz2
b34e2cbdd6aa8f9cc3fa613fd401a6d6  libpciaccess-0.16.tar.bz2
dd7e1e946def674e78c0efbc5c7d5b3b  libxkbfile-1.1.0.tar.bz2
42dda8016943dc12aff2c03a036e0937  libxshmfence-1.3.tar.bz2
EOF

mkdir -p lib &&
cd lib &&
grep -v '^#' ../lib-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/lib/ &&
md5sum -c ../lib-7.md5

for package in $(grep -v '^#' ../lib-7.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
  docdir="--docdir=$XORG_PREFIX/share/doc/$packagedir"
  case $packagedir in
    libXfont2-[0-9]* )
      ./configure $XORG_CONFIG $docdir --disable-devel-docs
    ;;

    libXt-[0-9]* )
      ./configure $XORG_CONFIG $docdir \
                  --with-appdefaultdir=/etc/X11/app-defaults
    ;;

    libX11-* )
      ./configure $XORG_CONFIG --disable-thread-safety-constructor
    ;;

    * )
      ./configure $XORG_CONFIG $docdir
    ;;
  esac
  make
  #make check 2>&1 | tee ../$packagedir-make_check.log
  make install
  popd
  rm -rf $packagedir
  /sbin/ldconfig
done