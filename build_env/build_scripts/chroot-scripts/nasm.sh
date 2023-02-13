cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

tar -xf ../nasm-2.15.05-xdoc.tar.xz --strip-components=1

./configure --prefix=/usr &&
make

make install

install -m755 -d         /usr/share/doc/nasm-2.15.05/html  &&
cp -v doc/html/*.html    /usr/share/doc/nasm-2.15.05/html  &&
cp -v doc/*.{txt,ps,pdf} /usr/share/doc/nasm-2.15.05

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
