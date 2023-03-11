cd /sources/
wget -nc https://files.pythonhosted.org/packages/source/P/Pygments/Pygments-2.14.0.tar.gz
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
pip3 wheel -w dist --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links dist --no-cache-dir --no-user Pygments

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
