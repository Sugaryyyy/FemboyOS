cd /sources/
wget -nc https://www.mupdf.com/downloads/archive/mupdf-1.21.1-source.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/MU.*_EXE. :/{
        s/\(.(MUPDF_LIB)\)\(.*\)$/\2 | \1/
        N
        s/$/ -lmupdf -L$(OUT)/
        }' Makefile

cat > user.make << EOF &&
USE_SYSTEM_FREETYPE := yes
USE_SYSTEM_HARFBUZZ := yes
USE_SYSTEM_JBIG2DEC := no
USE_SYSTEM_JPEGXR := no # not used without HAVE_JPEGXR
USE_SYSTEM_LCMS2 := no # need lcms2-art fork
USE_SYSTEM_LIBJPEG := yes
USE_SYSTEM_MUJS := no # build needs source anyway
USE_SYSTEM_OPENJPEG := yes
USE_SYSTEM_ZLIB := yes
USE_SYSTEM_GLUT := no # need freeglut2-art fork
USE_SYSTEM_CURL := yes
USE_SYSTEM_GUMBO := no
EOF

export XCFLAGS=-fPIC                               &&
make build=release shared=yes                      &&
unset XCFLAGS

make prefix=/usr                        \
     shared=yes                         \
     docdir=/usr/share/doc/mupdf-1.21.1 \
     install                            &&

chmod 755 /usr/lib/libmupdf.so          &&
ln -sfv mupdf-x11 /usr/bin/mupdf

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
