#!/bin/bash 
cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type     options             dump  fsck
#                                                              order

/dev/sda2     /            ext4   defaults            1     1

# End /etc/fstab
EOF
