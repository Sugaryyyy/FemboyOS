echo "Setting MOTD!"

cat > /etc/motd << "EOF"
Welcome to FemboyOS!
Current version: Pre Release 3
Change logs: 
+ Added more shells (Fish, ZSH)
+ Added MOTD
+ Added networking
+ Added Links and image libraries
+ Added uwufetch
Fish is the default shell. To change your shell, type chsh. (You can choose bash, zsh or fish)
EOF