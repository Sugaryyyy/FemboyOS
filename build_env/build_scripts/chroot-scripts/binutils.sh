. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
echo "Running PTY test."
expect -c "spawn ls"
echo

rm -rf   build
mkdir -v build
cd       build

../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib

make tooldir=/usr

make tooldir=/usr install

rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,sframe,opcodes}.a
rm -fv /usr/share/man/man1/{gprofng,gp-*}.1

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
