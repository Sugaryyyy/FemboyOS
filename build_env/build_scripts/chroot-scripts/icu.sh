#!/bin/bash 
cd /sources/
wget https://github.com/unicode-org/icu/releases/download/release-71-1/icu4c-71_1-src.tgz

echo "Processing icu.sh >w<"

tar -xf icu4c-71_1-src.tgz
cd icu

cd source                                    &&

./configure --prefix=/usr                    &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
