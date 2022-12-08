. /dist/build_env/build_scripts/inc-start.sh $1 $(basename $0) 
    
patch -Np1 -i ../zstd-1.5.2-upstream_fixes-1.patch

make prefix=/usr

echo
echo
echo "In the test output there are several places that indicate 'failed'. These are expected and only 'FAIL' is an actual test failure. There should be no test failures."
echo
echo

make check

make prefix=/usr install

rm -v /usr/lib/libzstd.a

. /dist/build_env/build_scripts/inc-end.sh $1 $(basename $0) 
