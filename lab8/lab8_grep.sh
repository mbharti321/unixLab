echo "Manish BHarti"
echo "1947235"
echo
echo

function show_menus {
	echo
	echo "Please choose one of the option given below ..."
	echo
	echo "1. To find the number of unique words and vowels in a file along with line number."
	echo "2. To display the frequency of occurrence of each character present in the text document"
	echo "3. to replace the string Christ University as CHRIST (Deemed to be University)"
	echo "4. Exit"
	echo
}

function read_option {
	echo -n "Enter one of the given option : "
	read ch
	return $ch
}

function unique_words {
	echo
	echo "~~~~~~~~ Unique Words Program ~~~~~~~~"
        echo -n "Enter the filename : "
	read filename
	#if file name entered is not there
	[[ ! -f $filename ]] && echo "File doesn't exist" && return

	echo "These are the unique words : "
	grep -oEn '\w+' $filename | sort | uniq
	echo -n "The total unique words are : "
	grep -oE '\w+' $filename | sort | uniq | wc -l
	echo
	echo "Vowels"
	vowels=[aeiou]
	echo "The vowels along with the line number:"
	grep -ion $vowels $filename 
	echo -n "The total vowels are:"
	grep -o $vowels $filename | wc -l
}

function frequency {
	echo
    	echo "~~~~~~~~ Frequency Of Characters Program ~~~~~~~~"
	echo -n "Enter the filename : "
	read filename
	#if file name entered is not there
	[[ ! -f $filename ]] && echo "File doesn't exist" && return

	read -p "Enter the file name to store character and their occurences:" dest_file
	largest=0
	echo "" >$dest_file
	for ch in {a..z}
	do 
		chcount=`grep -io "$ch" $filename | wc -l`
		echo "$ch -> $chcount" 
		echo "$ch -> $chcount" >>$dest_file

		if [[ $chcount -ge $largest ]]
		then
			largest=$chcount
		fi
	done
	# prining character(s) having largest frequency
	for ch in {a..z}
	do
		if [[ `grep -io "$ch" $filename | wc -l` -eq $largest ]]
		then
			echo "Character having  largest($largest) occurence is : $ch"
		fi
	done
}

function replace {
	echo 
	echo "~~~~~~~~ Replace Program ~~~~~~~~"
	#sed -i 's/old-text/new-text/g' input.txt
	echo -n "Enter the filename : "
	read filename
	#if file name entered is not there
	[[ ! -f $filename ]] && echo "File doesn't exist" && return

	read -p "Enter the existing text to be replaced : " old_text
	read -p "Enter the new text to be replaced by : " new_text

	sed -i "s/$old_text/$new_text/gI" $filename
	echo
	echo
	echo "Updated File........"
	echo
	cat $filename
}
# "MAin program ::::::::::"
while :
do
	show_menus
	read_option  
	choice=$?
	
	case $choice in
		1) unique_words ;;
		2) frequency ;;
		3) replace ;;
		4) echo "~~~Thanks For Your Time ~~~" && echo "Exinting ..........." && exit ;;
		*) echo "Invalid choice!!" && echo "Try Again!!!"
	esac
done


