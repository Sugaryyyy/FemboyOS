#!/bin/bash 
cd /sources/
echo "Installing dependencies"
cpan Moo
cpan Path::Tiny
cpan Task::FreecellSolver::Testing
pip3 install pysol_cards
pip3 install freecell_solver
wget -nc https://cmocka.org/files/1.1/cmocka-1.1.7.tar.xz
tar -xf cmocka-1.1.7.tar.xz
cd cmocka-1.1.7

cd /sources/cmocka-1.1.7/build/fc-solve/fc-solve/source/xxHash-wrapper/
git submodule update --init
cd /sources/cmocka-1.1.7/
mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ..
make -j$(nproc)

make install

cd /sources/
rm -rf rinutils/
git clone https://github.com/shlomif/rinutils
cd rinutils

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr/ \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev ..
make -j$(nproc)
make install

echo "Processing fc-solve.sh :3" 

cd /sources/
wget -nc https://fc-solve.shlomifish.org/downloads/fc-solve/black-hole-solver-1.10.1.tar.xz
tar -xf black-hole-solver-1.10.1.tar.xz
cd black-hole-solver-1.10.1

mkdir -p build &&
cd       build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr/ \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev ..
make -j$(nproc)
make install

cd /sources/
wget -nc https://fc-solve.shlomifish.org/downloads/fc-solve/freecell-solver-6.8.0.tar.xz
tar -xf freecell-solver-6.8.0.tar.xz
cd freecell-solver-6.8.0
mkdir -p build &&
cd       build &&
cmake -DCMAKE_INSTALL_PREFIX=/usr/ \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev ..
make -j$(nproc)
make install
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
