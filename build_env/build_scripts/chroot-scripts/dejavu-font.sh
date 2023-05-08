#!/bin/bash 
cd /sources/
wget https://downloads.sourceforge.net/project/dejavu/dejavu/2.37/dejavu-fonts-ttf-2.37.tar.bz2

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
install -v -d -m755 /usr/share/fonts/dejavu &&
install -v -m644 ttf/*.ttf /usr/share/fonts/dejavu &&
fc-cache -v /usr/share/fonts/dejavu

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
