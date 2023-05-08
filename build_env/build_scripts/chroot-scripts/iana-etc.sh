#!/bin/bash 
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
cp services protocols /etc
. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
