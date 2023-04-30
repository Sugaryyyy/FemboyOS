cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

patch -Np1 -i ../libcanberra-0.30-wayland-1.patch

./configure --prefix=/usr --disable-oss &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
