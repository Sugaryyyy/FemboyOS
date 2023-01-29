cd /sources/
wget -nc http://files.itstool.org/itstool/itstool-2.0.7.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
PYTHON=/usr/bin/python3 ./configure --prefix=/usr &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
