cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i '/install.*libaio.a/s/^/#/' src/Makefile

make 

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
