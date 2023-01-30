cd /sources/
wget -nc https://download.gnome.org/sources/cairo/1.17/cairo-1.17.6.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed 's/PTR/void */' -i util/cairo-trace/lookup-symbol.c

sed -e "/@prefix@/a exec_prefix=@exec_prefix@" \
    -i util/cairo-script/cairo-script-interpreter.pc.in

./configure --prefix=/usr    \
            --disable-static \
            --enable-tee &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
