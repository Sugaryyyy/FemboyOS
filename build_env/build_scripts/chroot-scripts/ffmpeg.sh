cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

patch -Np1 -i ../ffmpeg-5.1.2-chromium_method-1.patch

sed -i 's/-lflite"/-lflite -lasound"/' configure &&

./configure --prefix=/usr        \
            --enable-gpl         \
            --enable-version3    \
            --enable-nonfree     \
            --disable-static     \
            --enable-shared      \
            --disable-debug      \
            --enable-libass      \
            --enable-libfdk-aac  \
            --enable-libfreetype \
            --enable-libmp3lame  \
            --enable-libopus     \
            --enable-libtheora   \
            --enable-libvorbis   \
            --enable-libvpx      \
            --enable-libx264     \
            --enable-libx265     \
            --enable-openssl     \
            --docdir=/usr/share/doc/ffmpeg-5.1.2 &&

make -j$(nproc) &&

gcc tools/qt-faststart.c -o tools/qt-faststart

make install &&

install -v -m755    tools/qt-faststart /usr/bin &&
install -v -m755 -d           /usr/share/doc/ffmpeg-5.1.2 &&
install -v -m644    doc/*.txt /usr/share/doc/ffmpeg-5.1.2
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
