FILE=$1

echo
echo "Processing $2 >w<"
echo
sleep 1

cd $LFS/sources
echo "Extracting... nya~"
tar -xf $FILE
DIR=$(echo $FILE | awk -F"\\\\.t" '{print $1}')
cd $DIR
echo "Changed to build path UwU"
pwd
