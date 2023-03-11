cd /sources/
wget -nc https://github.com/cracklib/cracklib/releases/download/v2.9.8/cracklib-2.9.8.tar.bz2
wget -nc https://github.com/cracklib/cracklib/releases/download/v2.9.8/cracklib-words-2.9.8.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
autoreconf -fiv &&

PYTHON=python3               \
./configure --prefix=/usr    \
            --disable-static \
            --with-default-dict=/usr/lib/cracklib/pw_dict &&
make

make install

install -v -m644 -D    ../cracklib-words-2.9.8.bz2 \
                         /usr/share/dict/cracklib-words.bz2    &&

bunzip2 -v               /usr/share/dict/cracklib-words.bz2    &&
ln -v -sf cracklib-words /usr/share/dict/words                 &&
echo $(hostname) >>      /usr/share/dict/cracklib-extra-words  &&
install -v -m755 -d      /usr/lib/cracklib                     &&

create-cracklib-dict     /usr/share/dict/cracklib-words \
                         /usr/share/dict/cracklib-extra-words

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
