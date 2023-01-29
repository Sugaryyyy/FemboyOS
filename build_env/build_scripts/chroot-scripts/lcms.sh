cd /sources/
wget https://github.com/mm2/Little-CMS/releases/download/lcms2.13.1/lcms2-2.13.1.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
