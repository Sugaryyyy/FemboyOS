. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make

make install

mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
