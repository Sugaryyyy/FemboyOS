#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../coreutils-9.1-i18n-1.patch

autoreconf -fiv
FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/usr            \
            --enable-no-install-program=kill,uptime

make

#make NON_ROOT_USERNAME=tester check-root # Uncomment if you want to run tests >w<

echo "dummy:x:102:tester" >> /etc/group

chown -Rv tester . 

echo "The sort-NaN-infloop test is known to fail with GCC-12."

sleep 2

#su tester -c "PATH=$PATH make RUN_EXPENSIVE_TESTS=yes check" # Uncomment if you want to run tests >w<

sed -i '/dummy/d' /etc/group

make install

mv -v /usr/bin/chroot /usr/sbin
mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8


. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
