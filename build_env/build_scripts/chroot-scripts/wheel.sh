#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
PYTHONPATH=src pip3 wheel -w dist --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links=dist wheel

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
