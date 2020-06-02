echo "MANISH BHARTI \n1947235"

c=0
echo -ne "Enter first directory :"
read d1
echo -ne "Enter first directory :"         
read d2

for i in `ls $d1`
do
	for j in `ls $d2`
	do
		if [ "$i" == "$j" ]
		then
			((++c))
			rm $d1/$i
			echo "$i" >>duplicate.txt
		fi
	done
done
echo "num of repeated files : $c"

