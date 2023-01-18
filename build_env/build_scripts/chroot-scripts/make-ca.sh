. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
make install &&
install -vdm755 /etc/ssl/local

/usr/sbin/make-ca -g

systemctl enable update-pki.timer

wget http://www.cacert.org/certs/root.crt &&
wget http://www.cacert.org/certs/class3.crt &&
openssl x509 -in root.crt -text -fingerprint -setalias "CAcert Class 1 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_1_root.pem &&
openssl x509 -in class3.crt -text -fingerprint -setalias "CAcert Class 3 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_3_root.pem &&
/usr/sbin/make-ca -r

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
