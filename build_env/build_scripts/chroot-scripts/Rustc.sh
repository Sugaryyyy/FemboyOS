cd /sources/
wget https://static.rust-lang.org/dist/rustc-1.60.0-src.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
mkdir /opt/rustc-1.60.0             &&
ln -svfn rustc-1.60.0 /opt/rustc

cat << EOF > config.toml
# see config.toml.example for more possible options
# See the 8.4 book for an example using shipped LLVM
# e.g. if not installing clang, or using a version before 10.0
[llvm]
# by default, rust will build for a myriad of architectures
targets = "X86"

# When using system llvm prefer shared libraries
link-shared = true

[build]
# omit docs to save time and space (default is to build them)
docs = false

# install cargo as well as rust
extended = true

[install]
prefix = "/opt/rustc-1.60.0"
docdir = "share/doc/rustc-1.60.0"

[rust]
channel = "stable"
rpath = false

# BLFS does not install the FileCheck executable from llvm,
# so disable codegen tests
codegen-tests = false

[target.x86_64-unknown-linux-gnu]
# NB the output of llvm-config (i.e. help options) may be
# dumped to the screen when config.toml is parsed.
llvm-config = "/usr/bin/llvm-config"

[target.i686-unknown-linux-gnu]
# NB the output of llvm-config (i.e. help options) may be
# dumped to the screen when config.toml is parsed.
llvm-config = "/usr/bin/llvm-config"


EOF

export RUSTFLAGS="$RUSTFLAGS -C link-args=-lffi" &&
python3 ./x.py build --exclude src/tools/miri

export LIBSSH2_SYS_USE_PKG_CONFIG=1 &&
DESTDIR=${PWD}/install python3 ./x.py install &&
unset LIBSSH2_SYS_USE_PKG_CONFIG

chown -R root:root install &&
cp -a install/* /

cat >> /etc/ld.so.conf << EOF
# Begin rustc addition

/opt/rustc/lib

# End rustc addition
EOF

ldconfig

cat > /etc/profile.d/rustc.sh << "EOF"
# Begin /etc/profile.d/rustc.sh

pathprepend /opt/rustc/bin           PATH

# Include /opt/rustc/man in the MANPATH variable to access manual pages
pathappend  /opt/rustc/share/man     MANPATH

# End /etc/profile.d/rustc.sh
EOF

export PATH=$PATH:/opt/rustc/bin/

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
