cd /sources/
wget -nc https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/llvm-14.0.6.src.tar.xz
wget -nc https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/clang-14.0.6.src.tar.xz

. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
tar -xf ../clang-14.0.6.src.tar.xz -C tools &&
mv tools/clang-14.0.6.src tools/clang

grep -rl '#!.*python' | xargs sed -i '1s/python$/python3/'

mkdir -p build &&
cd       build &&

echo "LLVM compilation starting, ETA to finishing: 22 years."
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
      -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" \
      -Wno-dev -G Ninja ..                      &&
ninja

ninja install

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
