cd /sources/
wget -nc https://github.com/libusb/libusb/releases/download/v1.0.26/libusb-1.0.26.tar.bz2

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
