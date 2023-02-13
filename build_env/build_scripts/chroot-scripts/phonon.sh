cd /sources/
wget https://download.kde.org/stable/phonon/4.11.1/phonon-4.11.1.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -p build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
