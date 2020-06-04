clear
echo "Manish Bharti"
echo "1947235"

myArray=(10 20 30 forty fifty sixty 70 80 )

#DISPLAY ALL ARRAY ELEMENTS
function print_array {
	echo "${myArray[@]}"
	echo
}

echo "Initially Array elements : `print_array`"

#2. DISPLAY ALL ELEMENTS IN A RANGE
echo 
echo "Array elements in range(2-5) : ${myArray[@]:2:5}"
#3. DISPLAY THE NUMBER OF ARRAY ELEMENTS
echo 
echo "Num. of array elements : ${#myArray[@]}"
#4. REPLACE A SUBSTRING IN AN ARRAY ELEMENT
echo 
echo "After REPLACing f with F ARRAY ELEMENTs : ${myArray[@]//f/F}"

#5. SORT AND DISPLAY THE ARRAY ELEMENT IN ASCENDING ORDER AND DESCENDING ORDER
#ASCENDING
echo
tempArray=($(echo "${myArray[@]}"))
echo "Before sorting Array elements : `print_array`"
myArray=($(for l in ${myArray[@]}; do echo $l; done | sort))
echo "after ascending sorting, Array elements : `print_array`"


#DESCENDING
echo
myArray=($(echo "${tempArray[@]}"))
echo "Before sorting Array elements : `print_array`"
myArray=($(for l in ${myArray[@]}; do echo $l; done | sort -r))
echo "after descending sorting, Array elements : `print_array`"

#6. COPY AN ARRAY ELEMENTS TO ANOTHER ARRAY

#7. DISPLAY THE SUM AND AVERAGE OF ODD POSITION ELEMENTS AND EVEN
#POSITION ELEMENTS OF AN ARRAY AND FIND WHICH POSITION NUMBERS
#ARE HAVING GREATER AVERAGE
