cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i '/stat.h/a #include <sys/sysmacros.h>' growisofs.c &&
sed -i '/stdlib/a #include <limits.h>' transport.hxx &&
make all rpl8 btcflash

make prefix=/usr install &&
install -v -m644 -D index.html \
    /usr/share/doc/dvd+rw-tools-7.1/index.html

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
