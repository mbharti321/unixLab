echo "Name : MAnish Bharti"
echo "Register No.: 1947235"
echo

 
#echo -ne "Enter no of MaxNum : "
#read level
tempArray=(-1 0 1 3 5)
#to print first half
for i in {5..1}
do
	#temp=`expr $i - 1`
	temp=$i
	while [ $i -ge 0 ]
	do
		echo -ne "${tempArray[$temp]}"
		((--i))
	done
	echo
done
echo "-1"
#to print second half
for i in {1..5}
do
        #temp=`expr $i - 1`
        temp=$i
        while [ $i -ge 0 ]
        do
                echo -ne "${tempArray[$temp]}"
                ((--i))
        done
        echo
done
