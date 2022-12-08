. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3 &&
make

make html

make man

make perllibdir=/usr/lib/perl5/5.36/site_perl install

make install-man

make htmldir=/usr/share/doc/git-2.38.1 install-html

tar -xf ../git-manpages-2.38.1.tar.xz \
    -C /usr/share/man --no-same-owner --no-overwrite-dir

mkdir -vp   /usr/share/doc/git-2.38.1 &&
tar   -xf   ../git-htmldocs-2.38.1.tar.xz \
      -C    /usr/share/doc/git-2.38.1 --no-same-owner --no-overwrite-dir &&

find        /usr/share/doc/git-2.38.1 -type d -exec chmod 755 {} \; &&
find        /usr/share/doc/git-2.38.1 -type f -exec chmod 644 {} \;

mkdir -vp /usr/share/doc/git-2.38.1/man-pages/{html,text}         &&
mv        /usr/share/doc/git-2.38.1/{git*.txt,man-pages/text}     &&
mv        /usr/share/doc/git-2.38.1/{git*.,index.,man-pages/}html &&

mkdir -vp /usr/share/doc/git-2.38.1/technical/{html,text}         &&
mv        /usr/share/doc/git-2.38.1/technical/{*.txt,text}        &&
mv        /usr/share/doc/git-2.38.1/technical/{*.,}html           &&

mkdir -vp /usr/share/doc/git-2.38.1/howto/{html,text}             &&
mv        /usr/share/doc/git-2.38.1/howto/{*.txt,text}            &&
mv        /usr/share/doc/git-2.38.1/howto/{*.,}html               &&

sed -i '/^<a href=/s|howto/|&html/|' /usr/share/doc/git-2.38.1/howto-index.html &&
sed -i '/^\* link:/s|howto/|&html/|' /usr/share/doc/git-2.38.1/howto-index.txt

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
