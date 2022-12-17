. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'

mkdir build &&
cd    build &&

CXXFLAGS+="-O2 -fPIC"            \
meson --prefix=/usr              \
      --buildtype=release        \
      -Dlibaudit=no              \
      -Dlibpsl=false             \
      -Dnmtui=true               \
      -Dovs=false                \
      -Dppp=false                \
      -Dselinux=false            \
      -Dsession_tracking=elogind \
      -Dmodem_manager=false      \
      -Dsystemdsystemunitdir=no  \
      -Dsystemd_journal=false    \
      -Dqt=false                 \
      .. &&
ninja

ninja install &&
mv -v /usr/share/doc/NetworkManager{,-1.38.4}

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
