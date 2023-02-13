cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr &&
make                      &&

make -C doc html                                                       &&
makeinfo --html --no-split -o doc/assuan_nochunks.html doc/assuan.texi &&
makeinfo --plaintext       -o doc/assuan.txt           doc/assuan.texi

make install &&

install -v -dm755   /usr/share/doc/libassuan-2.5.5/html &&
install -v -m644 doc/assuan.html/* \
                    /usr/share/doc/libassuan-2.5.5/html &&
install -v -m644 doc/assuan_nochunks.html \
                    /usr/share/doc/libassuan-2.5.5      &&
install -v -m644 doc/assuan.{txt,texi} \
                    /usr/share/doc/libassuan-2.5.5

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
