. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir -pv /usr/share/fonts/unifont &&
gunzip -c ../unifont-14.0.04.pcf.gz > /usr/share/fonts/unifont/unifont.pcf

case $(uname -m) in i?86 )
    tar xf ../gcc-12.2.0.tar.xz
    mkdir gcc-12.2.0/build
    pushd gcc-12.2.0/build
        ../configure --prefix=$PWD/../../x86_64-gcc \
                     --target=x86_64-linux-gnu      \
                     --with-system-zlib             \
                     --enable-languages=c,c++       \
                     --with-ld=/usr/bin/ld
        make all-gcc
        make install-gcc
    popd
    export TARGET_CC=$PWD/x86_64-gcc/bin/x86_64-linux-gnu-gcc
esac

./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --disable-efiemu     \
            --enable-grub-mkfont \
            --with-platform=efi  \
            --target=x86_64      \
            --disable-werror     &&
unset TARGET_CC &&
make

make install &&
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
