cd /sources/
wget -nc $2
mv download gphoto2-2.5.28.tar.xz
wget -nc $3
mv download libgphoto2-2.5.30.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --prefix=/usr &&
make -j$(nproc)
make install

cd ..

tar -xf gphoto2-2.5.28.tar.xz
cd gphoto2-2.5.28
./configure --prefix=/usr &&
make -j$(nproc)
make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
