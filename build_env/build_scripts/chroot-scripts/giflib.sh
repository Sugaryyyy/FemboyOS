cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make

make PREFIX=/usr install &&

rm -fv /usr/lib/libgif.a &&

find doc \( -name Makefile\* -o -name \*.1 \
         -o -name \*.xml \) -exec rm -v {} \; &&

install -v -dm755 /usr/share/doc/giflib-5.2.1 &&
cp -v -R doc/* /usr/share/doc/giflib-5.2.1

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
