cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr \
            --without-maximum-compile-warnings &&
make

make install &&
install -v -m755 -d /usr/share/doc/swig-4.0.2 &&
cp -v -R Doc/* /usr/share/doc/swig-4.0.2

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
