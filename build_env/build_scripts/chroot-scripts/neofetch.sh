echo "Installing neofetch \ hyfetch >w<"

cd /tmp

git clone https://github.com/hykilpikonna/hyfetch.git
cd hyfetch
pip3 install .
ln -sv /bin/neowofetch /bin/neofetch
echo "Neofetch install done! >w<"