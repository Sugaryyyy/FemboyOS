. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

ln -f /usr/bin/rm /bin/rm
ln -f /usr/bin/ln /bin/ln

make CCOM=gcc

make install

cp -rv bin/ include/ lib/ sbin/ share/ /usr/

rm -rf /usr/opt

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
