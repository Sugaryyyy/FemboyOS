cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./bootstrap &&
./configure --prefix=/usr \
            --docdir=/usr/share/doc/soundtouch-2.3.1 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
