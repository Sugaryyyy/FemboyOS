echo "Installing xOrg Libraries >w<"

cd /sources/
cat > lib-7.md5 << "EOF"
ce2fb8100c6647ee81451ebe388b17ad  xtrans-1.4.0.tar.bz2
e932752126240f0846b35eef6b1f2c3d  libX11-1.8.4.tar.xz
964942427fcc5a9fa0539661421857c8  libXext-1.3.5.tar.xz
742863a552ecd53cdb957b7b276213cc  libFS-1.0.9.tar.xz
b444a0e4c2163d1bbc7b046c3653eb8d  libICE-1.1.1.tar.xz
ffa434ed96ccae45533b3d653300730e  libSM-1.2.4.tar.xz
e613751d38e13aa0d0fd8e0149cec057  libXScrnSaver-1.2.4.tar.xz
b122ff9a7ec70c94dbbfd814899fffa5  libXt-1.2.1.tar.bz2
ed52d396115fbc4d05300762aab79685  libXmu-1.1.4.tar.xz
b3c58c94e284fd6940d3615e660a0007  libXpm-3.5.15.tar.xz
c1ce21c296bbf3da3e30cf651649563e  libXaw-1.0.14.tar.bz2
86f182f487f4f54684ef6b142096bb0f  libXfixes-6.0.0.tar.bz2
af0a5f0abb5b55f8411cd738cf0e5259  libXcomposite-0.4.6.tar.xz
ebf7fb3241ec03e8a3b2af72f03b4631  libXrender-0.9.11.tar.xz
4cdd1886fe5cce6f68554296edb46db8  libXcursor-1.2.1.tar.xz
ca55d29fa0a8b5c4a89f609a7952ebf8  libXdamage-1.1.6.tar.xz
6d3f1b15bb5b0bb71ae9f0a5103c1fc4  libfontenc-1.1.7.tar.xz
c179daa707f5f432f1bc13977e5bb329  libXfont2-2.0.6.tar.xz
69dc24ba444a0f6bd99423dbf8fd0260  libXft-2.3.7.tar.xz
74055672a111a98ce2841d2ec4057b05  libXi-1.8.tar.bz2
228c877558c265d2f63c56a03f7d3f21  libXinerama-1.1.5.tar.xz
850cbc7c921c9d5d0135734b114ff6ac  libXrandr-1.5.3.tar.xz
66c9e9e01b0b53052bb1d02ebf8d7040  libXres-1.2.2.tar.xz
02f128fbf809aa9c50d6e54c8e57cb2e  libXtst-1.2.4.tar.xz
70bfdd14ca1a563c218794413f0c1f42  libXv-1.0.12.tar.xz
11a358e7229fa28dc9801c1e64fe2e18  libXvMC-1.0.13.tar.xz
74d1acf93b83abeb0954824da0ec400b  libXxf86dga-1.1.6.tar.xz
5b913dac587f2de17a02e17f9a44a75f  libXxf86vm-1.1.5.tar.xz
d2f1f0ec68ac3932dd7f1d9aa0a7a11c  libdmx-1.1.4.tar.bz2
1466cf950c914ad2db1dbb76c9a724db  libpciaccess-0.17.tar.xz
8af2275955d40166bb647b14e4896ab1  libxkbfile-1.1.2.tar.xz
faa74f7483074ce7d4349e6bdc237497  libxshmfence-1.3.2.tar.xz
EOF

mkdir lib &&
cd lib &&
grep -v '^#' ../lib-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/lib/ &&
md5sum -c ../lib-7.md5

as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root


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

    libXpm-[0-9]* )
      sed -i '/TestAll.*TRUE/s|^|//|' test/TestAllFiles.h
      ./configure $XORG_CONFIG $docdir --disable-open-zfile
    ;;
    
    * )
      ./configure $XORG_CONFIG $docdir
    ;;
  esac

  make
  #make check 2>&1 | tee ../$packagedir-make_check.log
  as_root make install
  popd
  rm -rf $packagedir
  as_root /sbin/ldconfig
done