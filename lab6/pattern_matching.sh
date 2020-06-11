
echo "Shell script to test whether a file contain a text or not"
echo
echo "Name : Manish Bharti"
echo "Reg. No.:1947235"
echo 
echo -n "Enter the filename : "
read filename
#checking if filename is a valid file 
[[ ! -f $filename ]] && echo "\"$filename\" doesn't exist!!" && exit 0

echo -n "Enter the text to be searched : "
read pattern

count=`egrep -c "$pattern" $filename`
echo
[[ $count -eq 0 ]] && echo "File \"$filename\" does not contain pattern \"$pattern\""  || echo "File \"$filename\" contains \"$pattern\""




