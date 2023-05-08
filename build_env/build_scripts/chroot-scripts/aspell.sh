#!/bin/bash 
cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr &&
make

make install &&
ln -svfn aspell-0.60 /usr/lib/aspell &&

install -v -m755 -d /usr/share/doc/aspell-0.60.8/aspell{,-dev}.html &&

install -v -m644 manual/aspell.html/* \
    /usr/share/doc/aspell-0.60.8/aspell.html &&

install -v -m644 manual/aspell-dev.html/* \
    /usr/share/doc/aspell-0.60.8/aspell-dev.html

install -v -m 755 scripts/ispell /usr/bin/

install -v -m 755 scripts/spell /usr/bin/

cd ..

tar -xf aspell6-en-2020.12.07-0.tar.bz2

cd aspell6-en-2020.12.07-0

./configure &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
