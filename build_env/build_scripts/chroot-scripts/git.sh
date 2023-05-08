#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3 &&
make

make perllibdir=/usr/lib/perl5/5.36/site_perl install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
