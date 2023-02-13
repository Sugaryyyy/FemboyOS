cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr --disable-static &&
make

make docdir=/usr/share/doc/libatasmart-0.19 install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
