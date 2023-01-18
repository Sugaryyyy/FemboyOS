. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed '/linux\/fs\.h/d' -i libarchive/archive_read_disk_posix.c

./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
