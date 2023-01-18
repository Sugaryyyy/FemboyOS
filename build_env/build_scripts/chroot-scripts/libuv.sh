. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sh autogen.sh                              &&
./configure --prefix=/usr --disable-static &&
make 

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
