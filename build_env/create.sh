echo "Dist Root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"

if ! test $(whoami) == "distbuild" ; then
    echo "Run it as distbuild user >w<"
    exit -1
fi

echo "Creating build env... UwU"