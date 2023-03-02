cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -e 's/3\.9/3.10/'                    \
    -e 's/:3/:4/'                        \
    -i configure

export PKG_CONFIG_PATH=/opt/qt5/lib/pkgconfig/

./configure --prefix=/usr --disable-gpg-test &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
