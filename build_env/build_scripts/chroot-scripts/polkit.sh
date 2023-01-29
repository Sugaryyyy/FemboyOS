cd /sources/
wget -nc https://gitlab.freedesktop.org/polkit/polkit/-/archive/121/polkit-121.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
groupadd -fg 27 polkitd &&
useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27 \
        -g polkitd -s /bin/false polkitd

mkdir -p build &&
cd       build &&

meson --prefix=/usr                       \
      --buildtype=release                 \
      -Dman=true                          \
      -Dsession_tracking=libsystemd-login \
      -Dtests=true                        \
      -Djs_engine=mozjs                   \
      ..                                  &&
ninja

ninja install

cat > /etc/pam.d/polkit-1 << "EOF"
# Begin /etc/pam.d/polkit-1

auth     include        system-auth
account  include        system-account
password include        system-password
session  include        system-session

# End /etc/pam.d/polkit-1
EOF

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
