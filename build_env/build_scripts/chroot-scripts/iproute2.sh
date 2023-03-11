. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

make NETNS_RUN_DIR=/run/netns

make SBINDIR=/usr/sbin install

mkdir -pv             /usr/share/doc/iproute2-6.1.0
cp -v COPYING README* /usr/share/doc/iproute2-6.1.0

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
