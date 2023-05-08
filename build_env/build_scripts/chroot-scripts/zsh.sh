#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

tar --strip-components=1 -xvf ../zsh-5.9-doc.tar.xz

./configure --prefix=/usr            \
            --sysconfdir=/etc/zsh    \
            --enable-etcdir=/etc/zsh \
            --enable-cap             \
            --enable-gdbm                             &&
make                                                  &&

makeinfo  Doc/zsh.texi --plaintext -o Doc/zsh.txt     &&
makeinfo  Doc/zsh.texi --html      -o Doc/html        &&
makeinfo  Doc/zsh.texi --html --no-split --no-headers -o Doc/zsh.html

make install                              &&
make infodir=/usr/share/info install.info &&

install -v -m755 -d                 /usr/share/doc/zsh-5.9/html &&
install -v -m644 Doc/html/*         /usr/share/doc/zsh-5.9/html &&
install -v -m644 Doc/zsh.{html,txt} /usr/share/doc/zsh-5.9

make htmldir=/usr/share/doc/zsh-5.9/html install.html &&
install -v -m644 Doc/zsh.dvi /usr/share/doc/zsh-5.9

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
