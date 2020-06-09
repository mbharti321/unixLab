
echo "Name : MANISH BHARTI"
echo "Reg. no. : 1947235"
echo 
echo

c=0
echo -ne "Enter first directory :"
read d1
echo -ne "Enter first directory :"         
read d2
function duplicate_files {
	
	for i in `ls $d1`
	do
		for j in `ls $d2`
		do
			if [ "$i" == "$j" ]
			then
				((++c))
		#		rm $d1/$i
		#		echo "$i" >>duplicate.txt
			fi
		done
	done

	echo $c
}
echo "num of repeated files : `duplicate_files`"

