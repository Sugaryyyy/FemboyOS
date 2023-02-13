cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

pip3 wheel -w dist --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links dist --no-cache-dir asciidoc

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
