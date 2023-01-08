. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr   \
            --enable-shared \
            --docdir=/usr/share/doc/ruby-3.1.2 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
