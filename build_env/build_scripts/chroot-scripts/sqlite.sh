cd /sources/
wget https://sqlite.org/2022/sqlite-autoconf-3390200.tar.gz
wget https://sqlite.org/2022/sqlite-doc-3390200.zip

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
unzip -q ../sqlite-doc-3390200.zip

./configure --prefix=/usr     \
            --disable-static  \
            --enable-fts5     \
            CPPFLAGS="-DSQLITE_ENABLE_FTS3=1            \
                      -DSQLITE_ENABLE_FTS4=1            \
                      -DSQLITE_ENABLE_COLUMN_METADATA=1 \
                      -DSQLITE_ENABLE_UNLOCK_NOTIFY=1   \
                      -DSQLITE_ENABLE_DBSTAT_VTAB=1     \
                      -DSQLITE_SECURE_DELETE=1          \
                      -DSQLITE_ENABLE_FTS3_TOKENIZER=1" &&
make

make install

install -v -m755 -d /usr/share/doc/sqlite-3.39.2 &&
cp -v -R sqlite-doc-3390200/* /usr/share/doc/sqlite-3.39.2

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
