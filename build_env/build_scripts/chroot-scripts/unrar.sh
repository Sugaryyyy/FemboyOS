cd /sources/
wget -nc $2
mv unrarsrc* unrar.tar.gz 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make -f makefile 

install -v -m755 unrar /usr/bin

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
