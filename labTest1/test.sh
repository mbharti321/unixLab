echo "Manish BHarti"
echo "1947235"
echo
echo

function show_menus {
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo
	echo
	echo "Please choose one of the option given below ..."
	echo
	echo "1. number of files in that directory whose name starts with 'a' or 'A'"
	echo "2. To check the given string is palindrome or not without using inbuilt function. "
	echo "3. find the number that occurs only once in an array."
	echo "4. script to extract characters, numeric values and special characters"
	echo "5. to remove the lines with beginning and ending of a particular character."	
	echo "6. Exit"
	echo
}
function read_option {
	echo -n "Enter one of the given option : "
	read ch
	return $ch
}


function number_of_files {
	echo -n "Enter a directory : "
	read dir
	
}
function palindrome {
	length=0
	i=1
	echo -n "Enter a String: "
	read str
	length=`echo $str | wc -c`
	length=`expr $length - 1`
	halfLen=`expr $length / 2`
	while [ $i -le $halfLen ]
	do
		c1=`echo $str|cut -c$i`
		c2=`echo $str|cut -c$length`
		if [ $c1 != $c2 ] ; then
			echo "Given tring is not palindrome"
			return
		fi
		i=`expr $i + 1`
		length=`expr $length - 1`
	done
	echo "Given String is Palindrome"
}

function single_occurence {
	echo "Enter the limit for array:"
	read lim
	echo "Enter the elements into the array:"
	for((i=0;i<lim;i++))
	do
	   read arr[$i]
	done
	for((i=0;i<lim;i++))
	do
	   flag[$i]=0
	done
	for(( i=0;i<lim-1;i++ ))
	do
	   for(( j=i+1;j<lim;j++ ))
	        do
	          if [ ${flag[$j]} -eq 0 ]
	            then
	                if [ ${arr[$i]} -eq ${arr[$j]} ]
	                        then
	                        flag[$i]=1
	                        flag[$j]=1
        	        fi
	           fi
	        done
	done
	for((i=0;i<lim;i++))
        do
	   if [ ${flag[$i]} == 0 ]
           then
		 echo "Unique element is: ${arr[$i]}"
           fi
	done
}

function extract_character {
	echo "Extract character"
}
function remove_lines {
	echo "Remove lines"
	echo "................"
	echo -n "Enter file name :"
	read input_file
	echo -n "Enter character :"
        read input_char

	sed '/^'$input_char'/d' $input_file | sed '/'$input_char'$/d'
}

while :
do
	show_menus
	read_option
	choice=$?
	case $choice in
		1) number_of_files ;;
		2) palindrome ;;
		3) single_occurence ;;
		4) extract_character ;;
		5) remove_lines;;
		6) echo "~~~Thanks For Your Time ~~~" && echo "Exinting ..........." && exit ;;
		*) echo "Invalid choice!!" && echo "Try Again!!!"
	esac
done


