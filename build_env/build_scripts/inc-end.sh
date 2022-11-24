FILE=$1

echo
echo "Cleaning up :3"
echo

DIR=$(echo $FILE | awk -F"\\\\.t" '{print $1}')
rm -rf $DIR

echo
echo "Done Processing $FILE :3" 
echo