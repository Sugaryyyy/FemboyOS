. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i 's#) ytasm.*#)#' Makefile.in &&

./configure --prefix=/usr &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
