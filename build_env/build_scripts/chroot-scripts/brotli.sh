. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i 's@-R..libdir.@@' scripts/*.pc.in

mkdir out &&
cd    out &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      ..  &&
make

make install &&
cd ..

pip3 wheel -w dist --no-build-isolation --no-deps $PWD &&
pip3 install --no-index --find-links dist --no-cache-dir Brotli

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
