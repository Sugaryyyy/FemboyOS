cd /sources/
wget -nc https://github.com/OpenPrinting/cups/releases/download/v2.4.2/cups-2.4.2-source.tar.gz
cp cups-2.4.2-source.tar.gz cups-2.4.2.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
useradd -c "Print Service User" -d /var/spool/cups -g lp -s /bin/false -u 9 lp

groupadd -g 19 lpadmin

usermod -a -G lpadmin root

sed -e "s/format-truncation//" \
    -i configure \
       config-scripts/cups-compiler.m4

./configure --libdir=/usr/lib            \
            --with-system-groups=lpadmin \
            --with-docdir=/usr/share/cups/doc-2.4.2 &&
make

make install &&
ln -svnf ../cups/doc-2.4.2 /usr/share/doc/cups-2.4.2

echo "ServerName /run/cups/cups.sock" > /etc/cups/client.conf

cat > /etc/pam.d/cups << "EOF"
# Begin /etc/pam.d/cups

auth    include system-auth
account include system-account
session include system-session

# End /etc/pam.d/cups
EOF

systemctl enable cups

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
