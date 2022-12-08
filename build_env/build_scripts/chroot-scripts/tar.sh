. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr

make

#make check # Uncomment if you want to test. One test, capabilities: binary store/restore, is known to fail

make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
