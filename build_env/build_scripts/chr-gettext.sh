. $DIST_ROOT/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

./configure --disable-shared

make

cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin

. $DIST_ROOT/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
