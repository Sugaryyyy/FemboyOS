cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

sed -i '/2to3/d' ./setup.py

patch -Np1 -i ../Python-2.7.18-security_fixes-1.patch &&
./configure --prefix=/usr                              \
            --enable-shared                            \
            --with-system-expat                        \
            --with-system-ffi                          \
            --enable-unicode=ucs4                     &&
make

make altinstall                                &&
ln -s python2.7        /usr/bin/python2        &&
ln -s python2.7-config /usr/bin/python2-config &&
chmod -v 755 /usr/lib/libpython2.7.so.1.0

install -v -dm755 /usr/share/doc/python-2.7.18 &&

tar --strip-components=1                     \
    --no-same-owner                          \
    --directory /usr/share/doc/python-2.7.18 \
    -xvf ../python-2.7.18-docs-html.tar.bz2 &&

find /usr/share/doc/python-2.7.18 -type d -exec chmod 0755 {} \; &&
find /usr/share/doc/python-2.7.18 -type f -exec chmod 0644 {} \;

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
