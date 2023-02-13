cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     &&
make

make install

cat > /etc/udisks2/mount_options.conf << "EOF"
[defaults]
ntfs_defaults=uid=$UID,gid=$GID
EOF

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
