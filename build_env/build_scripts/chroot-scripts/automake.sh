. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.5

make

make -j4 check

make install 

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
