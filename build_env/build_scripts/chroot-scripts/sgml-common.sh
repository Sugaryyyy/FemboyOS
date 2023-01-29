cd /sources/
wget -nc https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz
wget -nc https://www.linuxfromscratch.org/patches/blfs/11.2/sgml-common-0.6.3-manpage-1.patch

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../sgml-common-0.6.3-manpage-1.patch &&
autoreconf -f -i

./configure --prefix=/usr --sysconfdir=/etc &&
make

make docdir=/usr/share/doc install &&

install-catalog --add /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog &&

install-catalog --add /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
