. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i 's:\\\${:\\\$\\{:' intltool-update.in

./configure --prefix=/usr

make

make install
install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
