cd /sources/
wget https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.7.2.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
