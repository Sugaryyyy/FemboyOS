. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
rm -rf /tmp/*

find /usr/lib /usr/libexec -name \*.la -delete

find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf

userdel -r tester

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
