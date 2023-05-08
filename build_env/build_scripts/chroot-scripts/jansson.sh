#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -e "/DT/s;| sort;| sed 's/@@libjansson.*//' &;" \
    -i test/suites/api/check-exports

./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
