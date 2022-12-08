. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr                      \
            --docdir=/usr/share/doc/bash-5.1.16 \
            --without-bash-malloc              \
            --with-installed-readline

make

chown -Rv tester .

su -s /usr/bin/expect tester << EOF
set timeout -1
spawn make tests
expect eof
lassign [wait] _ _ _ value
exit $value
EOF

make install

exec /usr/bin/bash --login

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
