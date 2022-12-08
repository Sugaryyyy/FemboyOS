. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
perl Makefile.PL

make

make test

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
