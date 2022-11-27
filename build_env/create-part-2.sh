set -e

echo "Dist Root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root (sudo -E ./create-part-2.sh) :)"
  exit
fi

echo
echo "Building Basic System Software"
echo    

sudo -E build_scripts/enter-chroot1.sh
