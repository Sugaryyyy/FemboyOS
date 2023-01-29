cd /sources/
wget -nc https://boostorg.jfrog.io/artifactory/main/release/1.80.0/source/boost_1_80_0.tar.bz2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
./bootstrap.sh --prefix=/usr --with-python=python3 &&
./b2 stage -j4 threading=multi link=shared

./b2 install threading=multi link=shared   

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
