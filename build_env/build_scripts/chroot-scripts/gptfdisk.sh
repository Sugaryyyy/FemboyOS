cd /sources/
wget -nc $2
wget -nc $3
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

patch -Np1 -i ../gptfdisk-1.0.9-convenience-1.patch &&
sed -i 's|ncursesw/||' gptcurses.cc &&
sed -i 's|sbin|usr/sbin|' Makefile &&

make

make install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
