./dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
 make prefix=/usr install

./dist /build_env/build_scripts/inc-end.sh $1 $(basename $0) 
