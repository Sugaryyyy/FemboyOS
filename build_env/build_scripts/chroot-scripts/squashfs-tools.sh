echo "Installing squashfs-tools >W<"

tar -xf 4.5.1.tar.gz

cd /sources/

cd squashfs-tools-4.5.1

cd squashfs-tools

sed -i '37s/#XZ_SUPPORT = 1/XZ_SUPPORT = 1/' Makefile

make

make install 

cp mksquashfs /usr/bin

cp sqfscat /usr/bin

cp sqfstar /usr/bin

cp unsquashfs /usr/bin

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
