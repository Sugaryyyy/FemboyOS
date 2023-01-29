cd /sources/
wget -nc https://portland.freedesktop.org/download/xdg-utils-1.1.3.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --mandir=/usr/share/man &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
