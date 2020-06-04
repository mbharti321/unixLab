clear
echo "NAME : MANISH BHARTI"
echo "REG NO : 1947235"

array=(10 20 3 0 54 86 94 8 6 7 9 5 12 36)

#DISPLAY ALL ARRAY ELEMENTS
function print_array {
	echo "${array[@]}"
	echo
}

echo "Initially Array elements : `print_array`"


oddSum=0
evenSun=0
oddCount=0
evenCount=0
for i in `echo ${!array[*]}`
do
	if [[ `expr $i % 2` -eq 0 ]]
	then
		let evenSum=`expr $evenSu  + ${array[i]}`
		((++evenCount))
	else
		let oddSum=`expr $oddSum + ${array[i]}`
		((++oddCount))
	fi
done
evenAvg=`expr $evenSum / $evenCount`
oddAvg=`expr $oddSum / $oddCount`
echo "evenSum : $evenSum"
echo "evenCount : $evenCount"
echo "EvenAvg : $evenAvg"
echo
echo "oddSum : $oddSum"
echo "oddCount : $oddCount" 
echo "oddAvg : $oddAvg"


[[ $evenSum -gt $oddSum ]] && echo -n "Even" || echo -n "Odd"
echo " position numbers are having greater average!!" 
