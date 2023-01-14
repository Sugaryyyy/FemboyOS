. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make CCOM=gcc

make install

cd /opt/schily

cp -rv bin/ include/ lib/ /usr/

rm -rf /opt/schily

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
