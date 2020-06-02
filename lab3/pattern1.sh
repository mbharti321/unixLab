echo "Name : MAnish Bharti"
echo "Register No.: 1947235"
echo 
echo -ne "Enter no of levels : "
read level
#temp=$level
#to print first half
for i in `eval echo "{1..$level}"`
do
	while [ $i -gt 0 ]
	do
		echo -ne "* "
		((--i))
	done
	echo
done
#to print second half
for i in `eval echo "{$level..1}"`
do
	while [ $i -gt 0 ]
	do
		echo -ne "* "
		((--i))
	done
	echo
done		 
