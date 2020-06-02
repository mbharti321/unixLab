clear
#factorial of a number
echo "Reg no :1947235"
echo "Name: MANISH BHARTI"
echo -ne "Enter a number for factorial : "
read number
if [ $number -gt 0 ]
then
	i=1
	fact=1
	while [ $number -ge $i ]
	do
		fact=`expr $fact \* $i`
		i=`expr $i + 1`
	done
	echo "factorial of  $number is $fact"
else
	echo "Negative number"
fi
