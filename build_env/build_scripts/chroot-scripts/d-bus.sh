. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr                        \
            --sysconfdir=/etc                    \
            --localstatedir=/var                 \
            --runstatedir=/run                   \
            --disable-static                     \
            --disable-doxygen-docs               \
            --disable-xml-docs                   \
            --docdir=/usr/share/doc/dbus-1.14.6  \
            --with-system-socket=/run/dbus/system_bus_socket

make

make install

ln -sfv /etc/machine-id /var/lib/dbus

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
