. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-utf8     \
            --docdir=/usr/share/doc/nano-6.4 &&
make

make install &&
install -v -m644 doc/{nano.html,sample.nanorc} /usr/share/doc/nano-6.4

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
