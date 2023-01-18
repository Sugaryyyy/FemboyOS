. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=RELEASE  \
      -DENABLE_STATIC=FALSE       \
      -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/libjpeg-turbo-2.1.4 \
      -DCMAKE_INSTALL_DEFAULT_LIBDIR=lib  \
      .. &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
