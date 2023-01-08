echo 11.2-systemd > /etc/lfs-release

cat > /etc/lsb-release << "EOF"
DISTRIB_ID="FemboyOS"
DISTRIB_RELEASE="11.2-systemd"
DISTRIB_CODENAME="Sugaryy_"
DISTRIB_DESCRIPTION="FemboyOS 23.01 Prerelease"
EOF

cat > /etc/os-release << "EOF"
NAME="FemboyOS"
VERSION="11.2-systemd"
ID=lfs
PRETTY_NAME="FemboyOS 23.01 Prerelease"
VERSION_CODENAME="Sugaryy_"
EOF

echo "lsb-release setup finished!"