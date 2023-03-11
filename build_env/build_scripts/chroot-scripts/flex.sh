. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static

make

make install

ln -sv flex /usr/bin/lex

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
