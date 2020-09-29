echo "Name : MAnish Bharti"
echo "Register No.: 1947235"

echo
echo -ne "Enter The String : "
read myString
len=`echo ${#myString}`
#to print 
for i in `eval echo "{1..$len}"`
do
        echo $myString | cut -c1-$i
done

