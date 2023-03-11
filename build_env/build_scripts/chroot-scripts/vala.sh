cd /sources
wget -nc https://download.gnome.org/sources/vala/0.56/vala-0.56.4.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr &&
make -j$(nproc)

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
