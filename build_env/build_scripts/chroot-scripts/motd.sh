echo "Setting MOTD!"

cat > /etc/motd << "EOF"
Welcome to FemboyOS!
Current version: Pre Release 4
Change logs: 
+ Added KDE (option to choose a DE in P.R. 5 or 6)
Fish is the default shell. To change your shell, type chsh. (You can choose bash, zsh or fish)
EOF