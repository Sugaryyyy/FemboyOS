. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make prefix=/usr

make prefix=/usr install

rm -v /usr/lib/libzstd.a

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
