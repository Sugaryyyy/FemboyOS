cd /sources/
wget -nc https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
sed -i '/#include.*phoenix.*tuple.hpp.*/d' \
  boost/phoenix/stl.hpp

./bootstrap.sh --prefix=/usr --with-python=python3 &&
./b2 stage -j$(nproc) threading=multi link=shared

rm -rf /usr/lib/cmake/[Bb]oost*

./b2 install threading=multi link=shared   

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
