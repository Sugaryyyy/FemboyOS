#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --bindir=/usr/bin    \
            --libdir=/usr/lib    \
            --sbindir=/usr/sbin  \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --docdir=/usr/share/doc/util-linux-2.38.1

make

#chown -Rv tester . # Uncomment if you want to run tests.
#su tester -c "make -k check" # Uncomment if you want to run tests. The hardlink tests will fail if the host's kernel does not have the option CONFIG_CRYPTO_USER_API_HASH set. 

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
