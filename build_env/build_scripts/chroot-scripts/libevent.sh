. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i 's/python/&3/' event_rpcgen.py

./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
