cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make PREFIX=/usr        \
     BUILD_STATIC_LIB=0 \
     MANDIR=/usr/share/man

make PREFIX=/usr        \
     BUILD_STATIC_LIB=0 \
     MANDIR=/usr/share/man install &&

install -v -m755 -d /usr/share/doc/lm_sensors-3-6-0 &&
cp -rv              README INSTALL doc/* \
                    /usr/share/doc/lm_sensors-3-6-0

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
