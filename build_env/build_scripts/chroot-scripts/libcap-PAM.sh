#!/bin/bash 
cd /sources/
wget -nc $2
. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 

make -C pam_cap

install -v -m755 pam_cap/pam_cap.so /usr/lib/security &&
install -v -m644 pam_cap/capability.conf /etc/security

mv -v /etc/pam.d/system-auth{,.bak} &&
cat > /etc/pam.d/system-auth << "EOF" &&
# Begin /etc/pam.d/system-auth

auth      optional    pam_cap.so
EOF
tail -n +3 /etc/pam.d/system-auth.bak >> /etc/pam.d/system-auth

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
