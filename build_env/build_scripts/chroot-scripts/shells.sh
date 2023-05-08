#!/bin/bash 
cat > /etc/shells << "EOF"
# Begin /etc/shells

/bin/sh
/bin/bash
/bin/busybox
/bin/fish
/bin/zsh

# End /etc/shells
EOF