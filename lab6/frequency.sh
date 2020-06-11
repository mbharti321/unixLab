
echo "Shell script to find out frequency of words in a file"
echo
echo "Name : Manish Bharti"
echo "Reg. No.:1947235"
echo 
echo -n "Enter the filename : "
read filename
#checking if filename is a valid file 
[[ ! -f $filename ]] && echo "\"$filename\" doesn't exist!!" && exit 0

echo -n "Enter the word to be looked for frequency : "
read pattern

count=`egrep -c "$pattern" $filename`
echo
echo "Frequency of \"$pattern\" in file \"$filename\" is = $count"




