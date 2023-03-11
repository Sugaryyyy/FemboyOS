cd /sources/
wget -nc hhttps://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.7/llvm-15.0.7.src.tar.xz
wget -nc https://anduin.linuxfromscratch.org/BLFS/llvm/llvm-cmake-15.0.7.src.tar.xz
wget -nc https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.7/clang-15.0.7.src.tar.xz
wget -nc https://www.linuxfromscratch.org/patches/blfs/11.3/clang-15.0.7-enable_default_ssp-1.patch
wget -nc https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.7/compiler-rt-15.0.7.src.tar.xz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
tar -xf ../llvm-cmake-15.0.7.src.tar.xz &&
sed '/LLVM_COMMON_CMAKE_UTILS/s@../cmake@cmake-15.0.7.src@' \
    -i CMakeLists.txt

tar -xf ../clang-15.0.7.src.tar.xz -C tools &&
mv tools/clang-15.0.7.src tools/clang

tar -xf ../compiler-rt-15.0.7.src.tar.xz -C projects &&
mv projects/compiler-rt-15.0.7.src projects/compiler-rt

grep -rl '#!.*python' | xargs sed -i '1s/python$/python3/'

patch -Np2 -d tools/clang <../clang-15.0.7-enable_default_ssp-1.patch

mkdir -v build &&
cd       build &&

CC=gcc CXX=g++                                  \
cmake -DCMAKE_INSTALL_PREFIX=/usr               \
      -DLLVM_ENABLE_FFI=ON                      \
      -DCMAKE_BUILD_TYPE=Release                \
      -DLLVM_BUILD_LLVM_DYLIB=ON                \
      -DLLVM_LINK_LLVM_DYLIB=ON                 \
      -DLLVM_ENABLE_RTTI=ON                     \
      -DLLVM_TARGETS_TO_BUILD="host;AMDGPU;BPF" \
      -DLLVM_BINUTILS_INCDIR=/usr/include       \
      -DLLVM_INCLUDE_BENCHMARKS=OFF             \
      -DCLANG_DEFAULT_PIE_ON_LINUX=ON           \
      -Wno-dev -G Ninja ..                      &&
ninja

ninja install &&
cp bin/FileCheck /usr/bin

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
