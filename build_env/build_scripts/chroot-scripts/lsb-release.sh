echo 11.3-systemd > /etc/lfs-release

cat > /etc/lsb-release << "EOF"
DISTRIB_ID="FemboyOS"
DISTRIB_RELEASE="11.3-systemd"
DISTRIB_CODENAME="Sugaryy_"
DISTRIB_DESCRIPTION="FemboyOS 23.05 Prerelease 4"
EOF

cat > /etc/os-release << "EOF"
NAME="FemboyOS"
VERSION="11.3-systemd"
ID=femboyos
PRETTY_NAME="FemboyOS 23.05 Prerelease 4"
VERSION_CODENAME="Sugaryy_"
ANSI_COLOR="38;2;255;0;238"
EOF

echo "lsb-release setup finished!"