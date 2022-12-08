. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

CC=gcc ./configure --prefix=/usr -G -O3 -r

make

make test

make install


. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
