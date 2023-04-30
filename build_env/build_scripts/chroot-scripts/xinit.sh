cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure $XORG_CONFIG --with-xinitdir=/etc/X11/app-defaults &&
make

make install &&
ldconfig

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
