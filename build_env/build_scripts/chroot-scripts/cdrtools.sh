. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

export GMAKE_NOWARN=true &&
make -j1 INS_BASE=/usr DEFINSUSR=root DEFINSGRP=root

export GMAKE_NOWARN=true &&
make INS_BASE=/usr MANSUFF_LIB=3cdr DEFINSUSR=root DEFINSGRP=root install &&
install -v -m755 -d /usr/share/doc/cdrtools-3.02a09 &&
install -v -m644 README.* READMEs/* ABOUT doc/*.ps \
                    /usr/share/doc/cdrtools-3.02a09

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
