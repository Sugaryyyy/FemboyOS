cd /sources/
wget -nc https://github.com/mm2/Little-CMS/releases/download/lcms2.14/lcms2-2.14.tar.gz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed '/BufferSize < TagSize/,+1 s/goto Error/TagSize = BufferSize/' \
    -i src/cmsio0.c

./configure --prefix=/usr --disable-static &&
make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
