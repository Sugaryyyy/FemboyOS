#!/bin/bash 
cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

echo "Installing Test-Needs"
cd ..

tar -xf Test-Needs-0.002009.tar.gz

cd Test-Needs-0.002009

perl Makefile.PL &&
make             &&
make test

make install

echo "Installing uri"

cd ..

cd URI-5.12

perl Makefile.PL &&
make             &&
make test

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
