cd /sources/

url=https://download.kde.org/stable/frameworks/5.97/
wget -r -nH -nd -A '*.xz' -np $url

cat > frameworks-5.97.0.md5 << "EOF"
b6bc2ad39f48daf021eb6e3146ea1b2f  attica-5.97.0.tar.xz
#9004ad7e58f5d3ef4a68ac9d3d432c51  extra-cmake-modules-5.97.0.tar.xz
f16a3cbba1d24c73dde77895e77f9633  kapidox-5.97.0.tar.xz
fcf875c8408891c62bb15e2ffa1f523e  karchive-5.97.0.tar.xz
c4fda652d325ce599821b898c710105e  kcodecs-5.97.0.tar.xz
e007684ef4b71aa63c997f7e53257936  kconfig-5.97.0.tar.xz
aa862f672a8dfaef39af0dda8c3ea892  kcoreaddons-5.97.0.tar.xz
97dfc5ff026d71ac18ad862b1b04fdd5  kdbusaddons-5.97.0.tar.xz
effc56abeefd23cf38be0d1448c48092  kdnssd-5.97.0.tar.xz
2211961bfca22edd9b7bb4c28d3d3c94  kguiaddons-5.97.0.tar.xz
7c92678a3cbd23cc2245fa0258f5e4fb  ki18n-5.97.0.tar.xz
5ab6acca13664b38a0f789f74416b834  kidletime-5.97.0.tar.xz
8dea9b3373b266ea00eef1875e154e16  kimageformats-5.97.0.tar.xz
2b35af1ee245563dd5b521e756228e00  kitemmodels-5.97.0.tar.xz
96daac9f4c21bab82d1da2d980f614c6  kitemviews-5.97.0.tar.xz
aac1e13fb038a54a4f907665200c3c69  kplotting-5.97.0.tar.xz
c5343837bea2bb66ed8fa6371a2b9ee6  kwidgetsaddons-5.97.0.tar.xz
9b561803e8776cc1eda0809cb31f9dda  kwindowsystem-5.97.0.tar.xz
3d812644475d1f3dfeea44f4b1b7e36b  networkmanager-qt-5.97.0.tar.xz
373c435787485e571ca95f8f4b408181  solid-5.97.0.tar.xz
8975618339356417006c31da3b8ca8c1  sonnet-5.97.0.tar.xz
a22052df457b0d08f8ba15fd6f25c4a5  threadweaver-5.97.0.tar.xz
f3e57280dd260385559a531fbe8d2fc3  kauth-5.97.0.tar.xz
a4a5c5b82eb731b2229fab92d3dfb1cb  kcompletion-5.97.0.tar.xz
7d96391d642ce153a9eaae3c63b112e1  kcrash-5.97.0.tar.xz
76db6e9f9200fad4b9cbc3b01ae3755f  kdoctools-5.97.0.tar.xz
99655561b2bbd14e414b132d44bb8d90  kpty-5.97.0.tar.xz
954fc91f33ec53de224156cc10bc04c4  kunitconversion-5.97.0.tar.xz
1c150ec6adaf8685af8bc80256560a86  kconfigwidgets-5.97.0.tar.xz
3793f484ae97355d279731bb9de6f97a  kservice-5.97.0.tar.xz
029f666542f69e6f543dc18a3e02023c  kglobalaccel-5.97.0.tar.xz
d4f3946ac9544e80999ab436a27619dc  kpackage-5.97.0.tar.xz
208f34d8c979f7060958d1eee5ab91cd  kdesu-5.97.0.tar.xz
18edfe35f0d2fc06bd628c515ca47bcf  kemoticons-5.97.0.tar.xz
798e5c986dae8e2f1e83ab0868bf1fb8  kiconthemes-5.97.0.tar.xz
d4cc3101b12bd36cf4a87f0c3936ccf1  kjobwidgets-5.97.0.tar.xz
3980c8e6b94716b0d19b9e2a7d730596  knotifications-5.97.0.tar.xz
1af7d339e2f5a2a540e51339c04d1b0a  ktextwidgets-5.97.0.tar.xz
05caf363dee221bab3de1904ec53978a  kxmlgui-5.97.0.tar.xz
5836416fb862f7957dfaa08e88beb1b0  kbookmarks-5.97.0.tar.xz
b7b3921f31d6d5d8776ea68545b8ae5b  kwallet-5.97.0.tar.xz
da9188168e736982b2434f852cf3440c  kded-5.97.0.tar.xz
5cba35e9783a7df9f0f54af18c2ef368  kio-5.97.0.tar.xz
7e8f1dc158a5a175c0d83dc2427c71ef  kdeclarative-5.97.0.tar.xz
5d7fc8b6947106760c5d17e4dfea3eeb  kcmutils-5.97.0.tar.xz
1ff454d283acb8f83105acb8cf97e544  kirigami2-5.97.0.tar.xz
94d97bd68e2f3a0c5cfb55060194b349  syndication-5.97.0.tar.xz
177bb5f04eea4ea522aacda8761af2af  knewstuff-5.97.0.tar.xz
61b8d7692ad04acefcb76586cb767161  frameworkintegration-5.97.0.tar.xz
bd9eb91ce374b4156f1f00dcd69dbb2f  kinit-5.97.0.tar.xz
0a635ff4847c3642630309072f5370a1  kparts-5.97.0.tar.xz
2c742c8bd4c219546e697ea04c44349f  kactivities-5.97.0.tar.xz
#b67212701c202167ba858c76292cf878  kdewebkit-5.97.0.tar.xz
8baf05c07c7dc9dfca1a4e1f6ca9be67  syntax-highlighting-5.97.0.tar.xz
ee86c062e6243938488fa9d348eaa096  ktexteditor-5.97.0.tar.xz
ce4f59beb52eea5b5b859fca12efa0f7  kdesignerplugin-5.97.0.tar.xz
c0943e04bb7f514c58bcb9b891efb080  kwayland-5.97.0.tar.xz
f6057058a81114c935a3d7b499d86ed5  plasma-framework-5.97.0.tar.xz
#5055670cd06b0724530ff8fbfc0c5ce8  modemmanager-qt-5.97.0.tar.xz
2c0c9727577fd9c3ad76edb9782c7ef2  kpeople-5.97.0.tar.xz
2b2440eba6e162dc1656d6509034bba8  kxmlrpcclient-5.97.0.tar.xz
ae5ee6e46e3f9d4942ba7bb80f8315b9  bluez-qt-5.97.0.tar.xz
a204986f080c48927a4adb86267ba812  kfilemetadata-5.97.0.tar.xz
a4b34f2125d5383a5a4a39cdc3be1573  baloo-5.97.0.tar.xz
#ad6ca5a1b4bcd4613fe1095b2db58a97  breeze-icons-5.97.0.tar.xz
#7e8e52f68e5150fdd76f719a723bef6a  oxygen-icons5-5.97.0.tar.xz
7602faea0198bd90d4be8a4fd9a801bc  kactivities-stats-5.97.0.tar.xz
f3ec8fb5cd8c5122d168ba5c88d5e14b  krunner-5.97.0.tar.xz
49768a3b67be8b6d71991c1718fb7c4d  prison-5.97.0.tar.xz
a5a7b1ca6070ff7b6dffa95c26b3e5ef  qqc2-desktop-style-5.97.0.tar.xz
320e05aedf589b7ac7fa1d8306bbc848  kjs-5.97.0.tar.xz
100e234811619545ae2f3593d6a3b2f0  kdelibs4support-5.97.0.tar.xz
4fd0814002839e5b59f51900d0b78e58  khtml-5.97.0.tar.xz
45cf95eaf299f321dd13ad7b8a17dc97  kjsembed-5.97.0.tar.xz
05822933cf655c80e224e0485851a444  kmediaplayer-5.97.0.tar.xz
85e084c6a4840153a9fccb581e60dad6  kross-5.97.0.tar.xz
c615b5e81ea72ae6bf34a99bfc0e2a79  kholidays-5.97.0.tar.xz
f39b30f3694af24dac61c1071ed5d068  purpose-5.97.0.tar.xz
a77b9f69f5975628b8ca33d97ae2a39d  kcalendarcore-5.97.0.tar.xz
5ed0abb402a5d4b3de57a6617e208536  kcontacts-5.97.0.tar.xz
b31f41825fe3559f15585e55486ef0a2  kquickcharts-5.97.0.tar.xz
ebf49cc30a267ec0ab45c7e857e3fcd9  knotifyconfig-5.97.0.tar.xz
41abc6ed2ff884c1400fc9caa0138731  kdav-5.97.0.tar.xz
EOF

as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root

mv -v /opt/kf5 /opt/kf5.old                         &&
install -v -dm755           $KF5_PREFIX/{etc,share} &&
ln -sfv /etc/dbus-1         $KF5_PREFIX/etc         &&
ln -sfv /usr/share/dbus-1   $KF5_PREFIX/share       &&
ln -sfv /usr/share/polkit-1 $KF5_PREFIX/share       &&
install -v -dm755           $KF5_PREFIX/lib         &&
ln -sfv /usr/lib/systemd    $KF5_PREFIX/lib

ln -s /opt/kf5/include/ /include

while read -r line; do

    # Get the file name, ignoring comments and blank lines
    if $(echo $line | grep -E -q '^ *$|^#' ); then continue; fi
    file=$(echo $line | cut -d" " -f2)

    pkg=$(echo $file|sed 's|^.*/||')          # Remove directory
    packagedir=$(echo $pkg|sed 's|\.tar.*||') # Package directory

    name=$(echo $pkg|sed 's|-5.*$||') # Isolate package name

    tar -xf $file
    pushd $packagedir

      # kapidox is a python module
      case $name in
        kapidox)
          # First install some python module dependencies
          as_root pip3 install doxypypy doxyqml requests

          pip3 wheel -w dist --no-build-isolation --no-deps $PWD
          as_root pip3 install --no-index --find-links dist --no-cache-dir --no-user kapidox
          popd
          rm -rf $packagedir
          continue
      esac

      mkdir build
      cd    build

      cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
            -DCMAKE_PREFIX_PATH=$QT5DIR        \
            -DCMAKE_BUILD_TYPE=Release         \
            -DBUILD_TESTING=OFF                \
            -Wno-dev ..
      make -j$(nproc)
      as_root make install
    popd

  as_root rm -rf $packagedir
  as_root /sbin/ldconfig

done < frameworks-5.97.0.md5

mv -v /opt/kf5 /opt/kf5-5.97.0
ln -sfvn kf5-5.97.0 /opt/kf5
