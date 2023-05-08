#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make DEBUG=-DNDEBUG     \
     INSTALL_USER=root  \
     INSTALL_GROUP=root

make PKG_DOC_DIR=/usr/share/doc/xfsprogs-5.19.0 install     &&
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-5.19.0 install-dev &&

rm -rfv /usr/lib/libhandle.{a,la}

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
