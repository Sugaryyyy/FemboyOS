cd /sources
echo "Compiling KDE Plasma!"
export QT5DIR=/opt/qt5
export PKG_CONFIG_PATH=$QT5DIR/lib/pkgconfig
echo "Downloading dependencies"
pip3 install pycairo

url=https://download.kde.org/stable/plasma/5.26.5/
wget -r -nH -nd -A '*.xz' -np $url -nc

cat > plasma-5.26.5.md5 << "EOF"
e436a039ec6b0016e5f52a71a5086ad8  kdecoration-5.26.5.tar.xz
ec10440342d3b227499b61bbf86c04ab  libkscreen-5.26.5.tar.xz
a7a235a4d105eaa37c9c9923f34b7019  libksysguard-5.26.5.tar.xz
65c2bc9680f8830b1fdfc231a2923fe7  breeze-5.26.5.tar.xz
b43a9abaa1dbf083fbac92febf06ee62  breeze-gtk-5.26.5.tar.xz
2a5c3f9ddb0dd1394574c85237c6a99d  layer-shell-qt-5.26.5.tar.xz
fbf3d2ff3dcfe2eb6770f18f0784b693  kscreenlocker-5.26.5.tar.xz
44db61e1b0c27d951cfc0dd45fa19947  oxygen-5.26.5.tar.xz
4a04fbf14eee03b81a5f95701758dadc  kinfocenter-5.26.5.tar.xz
6b2566e536949698fcb43ecb1cb331c8  kwin-5.26.5.tar.xz
9b5ddbc03683da742ac0c03c821d9084  plasma-workspace-5.26.5.tar.xz
4c118121937c0c92ab9630b28be83aab  plasma-disks-5.26.5.tar.xz
3440d7a273988cddb711ddd864ae85d7  bluedevil-5.26.5.tar.xz
75f668ce669e853565c375937ca6db3b  kde-gtk-config-5.26.5.tar.xz
6e8673a19904011d79d9b8fd69890443  khotkeys-5.26.5.tar.xz
7425d8cd9889bdb327b8a8b339274aa5  kmenuedit-5.26.5.tar.xz
6f600d487eda8fd2cddf3e13c322ce78  kscreen-5.26.5.tar.xz
def2d41c607309fdb622b270833b6078  kwallet-pam-5.26.5.tar.xz
ce7b641d174973be3b944f9279609eaf  kwayland-integration-5.26.5.tar.xz
eb2171403b7fbae6b257404f58fea865  kwrited-5.26.5.tar.xz
fc04856efefea7eba22064e7afdbddf7  milou-5.26.5.tar.xz
adb5371f4383332da2d7bdc643d1ba3d  plasma-nm-5.26.5.tar.xz
8a277824eec12d339b9b0cec40e141da  plasma-pa-5.26.5.tar.xz
5112039742fa249c6272196fd2ea9b8c  plasma-workspace-wallpapers-5.26.5.tar.xz
1319507df888d5d1d1584487c72bb41c  polkit-kde-agent-1-5.26.5.tar.xz
1636fa123a48123922c6bd9114601188  powerdevil-5.26.5.tar.xz
9c85a12b5fc4593ee3c9c3602b7c1fd7  plasma-desktop-5.26.5.tar.xz
297ae0e3b025e2d8a9a6b4301aed97b3  kgamma5-5.26.5.tar.xz
b34c0f8e8f00c881fa6636941a646cdf  ksshaskpass-5.26.5.tar.xz
#5310bb325acaacddd75cfcc9beb720ae  plasma-sdk-5.26.5.tar.xz
579e478775361bbb3499e1ec5b5011a1  sddm-kcm-5.26.5.tar.xz
4c5d0fd055f04e9104de1039fb3d19e4  discover-5.26.5.tar.xz
#4eddbae9f9e4add3637dd9fd99290047  breeze-grub-5.26.5.tar.xz
#ddbea7d8d6c6bc3953039075628de7ee  breeze-plymouth-5.26.5.tar.xz
7a85cf42b67ac38e490f0749cd25496e  kactivitymanagerd-5.26.5.tar.xz
235d1c02582787ff5dd825fae434e6f9  plasma-integration-5.26.5.tar.xz
a97a00137fcd4e446cbf849983bd1e64  plasma-tests-5.26.5.tar.xz
#d16a86f8aee8e7f0da084535cdccca7f  plymouth-kcm-5.26.5.tar.xz
49abaee061653e65afe9ba509c6aef41  xdg-desktop-portal-kde-5.26.5.tar.xz
8ea7332f06db75e41357cfe49d893042  drkonqi-5.26.5.tar.xz
e147fcf2d2cfc030c3a5e12373e8dc29  plasma-vault-5.26.5.tar.xz
a17305d04e3f43cd2c63870e58aa1002  plasma-browser-integration-5.26.5.tar.xz
d7bf771ac16efb7b8c3c4e6a34193002  kde-cli-tools-5.26.5.tar.xz
5c9d258caff107e2d668308fbdc1b88a  systemsettings-5.26.5.tar.xz
fb368c5c4ac28061a706c3558e4c4b66  plasma-thunderbolt-5.26.5.tar.xz
#ebe05c7b3b95d0dca235830ab17b8d57  plasma-nano-5.26.5.tar.xz
#cb64c2c61676c499f1807184928083c7  plasma-mobile-5.26.5.tar.xz
0ac0a579b57b76e664d172845ae06a07  plasma-firewall-5.26.5.tar.xz
d5c8bac2d756982328cd541649a7002b  plasma-systemmonitor-5.26.5.tar.xz
17608c1fb4b6503193a5769f35c7f9e5  qqc2-breeze-style-5.26.5.tar.xz
146cef26a5a9b3c82d46cabd6842a07c  ksystemstats-5.26.5.tar.xz
6943aba014019057384b47339bb8ed0a  oxygen-sounds-5.26.5.tar.xz
#7CF5ED434a6d21fd8458f89207986b9a  aura-browser-5.26.5.tar.xz
fc695034a7236fb6eab8a324216bc710  kdeplasma-addons-5.26.5.tar.xz
71fce4036d0f6a6fdc9bf5db3d47b9c9  kpipewire-5.26.5.tar.xz
26e7ae5887a56e971d2510262f9e0b55  plank-player-5.26.5.tar.xz
116e7d1a64ee17d5a31aed066709725a  plasma-bigscreen-5.26.5.tar.xz
d55d570e84840440f89233c8915e5872  plasma-remotecontrollers-5.26.5.tar.xz
EOF

as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root

while read -r line; do

    # Get the file name, ignoring comments and blank lines
    if $(echo $line | grep -E -q '^ *$|^#' ); then continue; fi
    file=$(echo $line | cut -d" " -f2)

    pkg=$(echo $file|sed 's|^.*/||')          # Remove directory
    packagedir=$(echo $pkg|sed 's|\.tar.*||') # Package directory

    tar -xf $file
    pushd $packagedir

       mkdir build
       cd    build

       cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
             -DCMAKE_BUILD_TYPE=Release         \
             -DBUILD_TESTING=OFF                \
             -Wno-dev ..  &&

        make -j$(nproc)
        as_root make install
    popd


    as_root rm -rf $packagedir
    as_root /sbin/ldconfig

done < plasma-5.26.5.md5

as_root install -dvm 755 /usr/share/xsessions              &&
cd /usr/share/xsessions/                                   &&
[ -e plasma.desktop ]                                      ||
as_root ln -sfv $KF5_PREFIX/share/xsessions/plasma.desktop &&
as_root install -dvm 755 /usr/share/wayland-sessions       &&
cd /usr/share/wayland-sessions/                            &&
[ -e plasmawayland.desktop ]                               ||
as_root ln -sfv $KF5_PREFIX/share/wayland-sessions/plasmawayland.desktop

cat > /etc/pam.d/kde << "EOF"
# Begin /etc/pam.d/kde

auth     requisite      pam_nologin.so
auth     required       pam_env.so

auth     required       pam_succeed_if.so uid >= 1000 quiet
auth     include        system-auth

account  include        system-account
password include        system-password
session  include        system-session

# End /etc/pam.d/kde
EOF

cat > /etc/pam.d/kde-np << "EOF"
# Begin /etc/pam.d/kde-np

auth     requisite      pam_nologin.so
auth     required       pam_env.so

auth     required       pam_succeed_if.so uid >= 1000 quiet
auth     required       pam_permit.so

account  include        system-account
password include        system-password
session  include        system-session

# End /etc/pam.d/kde-np
EOF

cat > /etc/pam.d/kscreensaver << "EOF"
# Begin /etc/pam.d/kscreensaver

auth    include system-auth
account include system-account

# End /etc/pam.d/kscreensaver
EOF

cat > ~/.xinitrc << "EOF"
dbus-launch --exit-with-x11 $KF5_PREFIX/bin/startplasma-x11
EOF