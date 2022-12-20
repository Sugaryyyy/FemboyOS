FILE=$1

echo
echo "Processing $2 >w<"
echo
sleep 1

cd $LFS/sources
echo "Extracting... nya~"
tar -xf $FILE
DIR=$(echo $FILE | awk -F"\\\\.t" '{print $1}')
cd dpkg-1.18.24
echo "Changed to build path UwU"
pwd    
./configure --prefix=/tools \
    --disable-dselect       \
    --without-selinux       \
    PERL_LIBDIR=/usr/lib/perl5/5.36/

make

make install DESTDIR=$(pwd)/debian/tmp

buildpkg --package=dpkg-pass2

dpkg -i --force-overwrite ../dpkg-pass2_1.18.0_*.deb
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
