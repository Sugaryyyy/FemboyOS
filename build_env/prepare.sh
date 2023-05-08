#!/bin/bash 
echo "Testing \$LFS and \$DIST_ROOT variables, if you don't have them set,"
echo "\n\$LFS is: '(path to FemboyOS)/build_env/build_root' (eg. /basia/FemboyOS/build_env/build_root/), and \$DIST_ROOT is (path to FemboyOS) (eg. /basia/FemboyOS/)"

if [ -z ${LFS+x} ]; then
echo "[*]\$LFS is not defined or NULL";
exit -1
fi
if [ -z ${DIST_ROOT+x} ]; then
echo "[*]\$DIST_ROOT is not defined or NULL";
exit -1
fi


echo "Dist Root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"

if test $(whoami) == "root" ; then
    echo "Don't run this script as root >w<"
    exit -1
fi

mkdir -p $LFS/sources

for f in $(cat $DIST_ROOT/build_env/build_env_list)
do
    bn=$(basename $f)
    
    if ! test -f $LFS/sources/$bn ; then
        wget $f -O $LFS/sources/$bn
    fi

done; 

mkdir -pv $LFS/etc 
mkdir -pv $LFS/var 
mkdir -pv $LFS/usr/lib
mkdir -pv $LFS/usr/sbin
mkdir -pv $LFS/usr/bin



for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools

if ! test $(id -u distbuild) ; then

sudo groupadd distbuild
sudo useradd -s /bin/bash -g distbuild -m -k /dev/null distbuild
sudo passwd distbuild
sudo chown -v distbuild $LFS/usr
sudo chown -v distbuild $LFS/lib
sudo chown -v distbuild $LFS/var
sudo chown -v distbuild $LFS/etc
sudo chown -v distbuild $LFS/bin
sudo chown -v distbuild $LFS/sbin
sudo chown -v distbuild $LFS/tools
sudo chown -v distbuild $LFS/lib64
sudo chown -v distbuild $LFS/sources

dbhome=$(eval echo "~distbuild")

cat > $dbhome/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF

cat > $dbhome/.bashrc << EOF
set +h
umask 022
LFS=$LFS
export DIST_ROOT=$DIST_ROOT
EOF

cat >> $dbhome/.bashrc << "EOF"
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
export MAKEFLAGS="-j$(nproc)"
EOF

fi
