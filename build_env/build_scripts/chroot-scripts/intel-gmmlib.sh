cd /sources/
wget -nc $2
cp intel-gmmlib-22.3.4.tar.gz gmmlib-intel-gmmlib-22.3.4.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr   \
      -DBUILD_TYPE=Release          \
      -Wno-dev ..                   &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
