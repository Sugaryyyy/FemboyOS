cd /sources/
wget -nc  https://gitlab.com/graphviz/graphviz/-/archive/5.0.1/graphviz-5.0.1.tar.bz2

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/LIBPOSTFIX="64"/s/64//' configure.ac &&

./autogen.sh              &&
./configure --prefix=/usr \
            --disable-php \
            --docdir=/usr/share/doc/graphviz-5.0.1

sed -i "s/0/$(date +%Y%m%d)/" builddate.h

make 

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
