. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../cmake-3.24.1-upstream_fix-1.patch

sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake &&

./bootstrap --prefix=/usr        \
            --system-libs        \
            --mandir=/share/man  \
            --no-system-jsoncpp  \
            --no-system-librhash \
            --docdir=/share/doc/cmake-3.24.1 &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
