cd /sources/
wget -nc  https://gitlab.com/graphviz/graphviz/-/archive/7.1.0/graphviz-7.1.0.tar.bz2

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/LIBPOSTFIX="64"/s/64//' configure.ac &&

./autogen.sh              &&
./configure --prefix=/usr \
            --docdir=/usr/share/doc/graphviz-7.1.0

sed -i "s/0/$(date +%Y%m%d)/" builddate.h

make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
