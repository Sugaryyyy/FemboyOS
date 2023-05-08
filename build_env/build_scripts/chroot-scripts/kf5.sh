#!/bin/bash 
cd /sources/
pip3 install doxypypy doxyqml pyyaml requests
url=https://download.kde.org/stable/frameworks/5.103/
wget -r -nH -nd -A '*.xz' -np -nc $url
cat > frameworks-5.103.0.md5 << "EOF"
0a7b74df0877363cd2316c906e0694d5  attica-5.103.0.tar.xz
#ac7d7a883f8ecd2dab262a284981ad64  extra-cmake-modules-5.103.0.tar.xz
8588714c201f53bb20bc102a18c4f532  kapidox-5.103.0.tar.xz
59595c4bec0668230f4946db7214b52b  karchive-5.103.0.tar.xz
05e65495011a67947dfb2069fb3d535a  kcodecs-5.103.0.tar.xz
a8347f5ca9166c92617f83214beb652e  kconfig-5.103.0.tar.xz
2ab7a86490e7fbfd343d025186f216b0  kcoreaddons-5.103.0.tar.xz
4427e875afe3cd04b5715ec3bda26095  kdbusaddons-5.103.0.tar.xz
46fc8742d1ba4240c8552ac0d63faefc  kdnssd-5.103.0.tar.xz
1b0bc7da24e0475f105bad5d3c9bc465  kguiaddons-5.103.0.tar.xz
107b2cb6129ae111430659f9c55c6d6f  ki18n-5.103.0.tar.xz
d4f38229dd9d49a043ab630eb9a9a302  kidletime-5.103.0.tar.xz
d3b193a9d8c6f93186cf7ac8c888a3db  kimageformats-5.103.0.tar.xz
0f8cd4d3717ede9c56bce44ae095af67  kitemmodels-5.103.0.tar.xz
14f36528bb5441a692c7a97afaa2400c  kitemviews-5.103.0.tar.xz
763886cdcf3447e447a9418a0b5c867a  kplotting-5.103.0.tar.xz
a4e41e13aff26d5010d3a97852fb8342  kwidgetsaddons-5.103.0.tar.xz
8bf107f2ab437d4bbfdbe51ecbde43ae  kwindowsystem-5.103.0.tar.xz
2dff80cd51ffedcbd8626c533083f656  networkmanager-qt-5.103.0.tar.xz
65d98a483c5d3cbf5c8806c61e0241a9  solid-5.103.0.tar.xz
791b983979fe0c370429f35c62c2165b  sonnet-5.103.0.tar.xz
f6322ae074c4acdbc6e0396a93ce1eaa  threadweaver-5.103.0.tar.xz
6d28e58c5f1683063ad03dff6019cad3  kauth-5.103.0.tar.xz
a5b50adcd5ab994a2c9f51b745982672  kcompletion-5.103.0.tar.xz
50ed3e4f8f7534df5c57abda5c47559b  kcrash-5.103.0.tar.xz
283cdd8aba82a3f3c30fd5be85ed88b7  kdoctools-5.103.0.tar.xz
5a919ad09e721cfc2f631955b9ada6ae  kpty-5.103.0.tar.xz
8dd1fa39b1eca8563e6fb71a3bb2008e  kunitconversion-5.103.0.tar.xz
6a5b65a200747ac103f67ae903783757  kconfigwidgets-5.103.0.tar.xz
5e13babdfe4d58802331bdd21c469c55  kservice-5.103.0.tar.xz
99a74ee689e17751283a5af3194d7a55  kglobalaccel-5.103.0.tar.xz
e0efb5adb522325ebce49225584d16c7  kpackage-5.103.0.tar.xz
fed250966122f46b339ed5de4ca459a2  kdesu-5.103.0.tar.xz
e04acd0fc6e2702aa7c16b219603cdfa  kemoticons-5.103.0.tar.xz
bf0a9ec942b90a10386296ff716131dc  kiconthemes-5.103.0.tar.xz
1a7b5a3f3726b4cde11cb51b7c4d0f1e  kjobwidgets-5.103.0.tar.xz
a243f74fcae890ef7fbe4184a2cf7e05  knotifications-5.103.0.tar.xz
f644d4c8d27b67a3677fa23da532c514  ktextwidgets-5.103.0.tar.xz
9503487754af910a9e92f281d656acaa  kxmlgui-5.103.0.tar.xz
437e063410b1e740137d5e35c290a23e  kbookmarks-5.103.0.tar.xz
2d61f4f1421e025280438e0e1aa9f5e3  kwallet-5.103.0.tar.xz
bf91ba7c557268d302075b1d631e380c  kded-5.103.0.tar.xz
79dfc2d0657721dfb08991881dbde8a7  kio-5.103.0.tar.xz
ec12c7e1218f15c8b5a71277e83036e5  kdeclarative-5.103.0.tar.xz
da08e26fda501c382c1f2a5b40e6485d  kcmutils-5.103.0.tar.xz
bab6ca86a6d23f887536c080afa45a0c  kirigami2-5.103.0.tar.xz
c1398c8db035d559d07ce898a7219acc  syndication-5.103.0.tar.xz
1a405c48d435139c9e727bf124e5f038  knewstuff-5.103.0.tar.xz
829ac5e9cabd62189cd76ed3c894c707  frameworkintegration-5.103.0.tar.xz
43bb956b064091dff8f45a6840f53303  kinit-5.103.0.tar.xz
b25162d470f74445ca56128cac45e947  kparts-5.103.0.tar.xz
239889fc943eff526988f7c2720287d5  kactivities-5.103.0.tar.xz
#2b4832c41d364558e6d9b7065f0c4f39  kdewebkit-5.103.0.tar.xz
2126884ac8f908c4f8419675bd93e0c8  syntax-highlighting-5.103.0.tar.xz
fac3a6fc429a035979721b7424d05510  ktexteditor-5.103.0.tar.xz
f5707c6f02628db06093590de71cd321  kdesignerplugin-5.103.0.tar.xz
461d95ec8fa798c571321535f09b4c0f  kwayland-5.103.0.tar.xz
05213caf6c79942d888a8b12cea44329  plasma-framework-5.103.0.tar.xz
#51ad29be12b17417f384d67f76a5d1bd  modemmanager-qt-5.103.0.tar.xz
a1088a560a040c2dcfd554954a95069e  kpeople-5.103.0.tar.xz
a7dc8537a1ff824dac365eb14102d2c8  kxmlrpcclient-5.103.0.tar.xz
c637be6d9858f5ac7409f1b8fc726b45  bluez-qt-5.103.0.tar.xz
3bbbd6892b1abdfa1d4b0834e0846fea  kfilemetadata-5.103.0.tar.xz
4fec6b1553930567e729f1d65b941562  baloo-5.103.0.tar.xz
#60d0eadf3f9c87ee652e024d9623c551  breeze-icons-5.103.0.tar.xz
#951ccb7eb477b299712d16cc3eac354b  oxygen-icons5-5.103.0.tar.xz
34b4591e9df8d79c63d2a6eca5bcfe05  kactivities-stats-5.103.0.tar.xz
10447582aa0666d05d62431704f19b1c  krunner-5.103.0.tar.xz
ea4d0179cc74415c7a6d76f09209222e  prison-5.103.0.tar.xz
c5c910fd595bfd611ac8c4bda27ef652  qqc2-desktop-style-5.103.0.tar.xz
5b31937451c3300d4fc9d18d778e24a7  kjs-5.103.0.tar.xz
ca4de0327db13b3429ba9f3b721b4589  kdelibs4support-5.103.0.tar.xz
1263327a22ed1140b1029ad1b32c8531  khtml-5.103.0.tar.xz
01de79fa8e6e362c9af069fc29105d49  kjsembed-5.103.0.tar.xz
f0433658ef15bf36535565568269a118  kmediaplayer-5.103.0.tar.xz
8cea7e16ca6642b82d92de3d1ed4357f  kross-5.103.0.tar.xz
a70e20a82b9a92207907ed5a1f18ee44  kholidays-5.103.0.tar.xz
7b2ca5d2533594bb6183ff3557519b61  purpose-5.103.0.tar.xz
1b6f998185b59a55e0af5ff04ef8e039  kcalendarcore-5.103.0.tar.xz
e42e4b12faf2bec456780e1c67e4c79c  kcontacts-5.103.0.tar.xz
4a42631cfabeefeb6b6c1eef4bc210bc  kquickcharts-5.103.0.tar.xz
262cb6025c5f7d344463d6eea69b1ef3  knotifyconfig-5.103.0.tar.xz
4b3c77407fbfafaaf6cbdfa7d1340942  kdav-5.103.0.tar.xz
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

done < frameworks-5.103.0.md5

mv -v /opt/kf5 /opt/kf5-5.103.0
ln -sfvn kf5-5.103.0 /opt/kf5