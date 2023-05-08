#!/bin/bash 
echo
echo "Processing dracut.sh >w<"
echo
sleep 1

cd /sources
echo "Extracting... nya~"
tar -xf 059.tar.gz
DIR=$(echo $FILE | awk -F"\\\\.t" '{print $1}')
cd dracut-059
echo "Changed to build path UwU"
pwd

./configure

make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
