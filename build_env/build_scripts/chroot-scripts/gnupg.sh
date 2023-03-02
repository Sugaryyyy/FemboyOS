cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr            \
            --localstatedir=/var     \
            --sysconfdir=/etc        \
            --docdir=/usr/share/doc/gnupg-2.3.7 &&
make &&

makeinfo --html --no-split -o doc/gnupg_nochunks.html doc/gnupg.texi &&
makeinfo --plaintext       -o doc/gnupg.txt           doc/gnupg.texi &&
make -C doc html

make install &&

install -v -m755 -d /usr/share/doc/gnupg-2.3.7/html            &&
install -v -m644    doc/gnupg_nochunks.html \
                    /usr/share/doc/gnupg-2.3.7/html/gnupg.html &&
install -v -m644    doc/*.texi doc/gnupg.txt \
                    /usr/share/doc/gnupg-2.3.7 &&
install -v -m644    doc/gnupg.html/* \
                    /usr/share/doc/gnupg-2.3.7/html

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
