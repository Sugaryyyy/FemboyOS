cd /sources/
wget  https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/cmptest/d' tests/CMakeLists.txt

mkdir -p build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
