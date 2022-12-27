. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr              \
            --libexecdir=/usr/lib      \
            --with-secure-path         \
            --with-all-insults         \
            --with-env-editor          \
            --docdir=/usr/share/doc/sudo-1.9.11p3 \
            --with-passprompt="[sudo] password for %p: " &&
make

make install &&
ln -sfv libsudo_util.so.0.0.0 /usr/lib/sudo/libsudo_util.so.0

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
