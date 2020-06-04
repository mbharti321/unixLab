clear
echo "NAME : MANISH BHARTI"
echo "REG NO : 1947235"

arr_emp=(Manish Dharam Naishar Avatansh)
arr_basic=( 9000 15000 18000 10000)
arr_gross=( 0 0 0 0) 

#DISPLAY ALL ARRAY ELEMENTS
function print_emp_details {
	for i in `echo ${!arr_emp[*]}`
	do
		echo "Employee Name : ${arr_emp[$i]}"
		echo "Employee Basic Pay : ${arr_basic[$i]}"
		echo "Employee Gross Pay : ${arr_gross[$i]}"
		echo
		echo
	done
}


function update_gross_salary {

	for i in `echo ${!arr_emp[*]}`
	do
		if [[ ${arr_basic[$i]} -lt 15000 ]]
		then
			increment=`echo "${arr_basic[$i]} * 0.90" | bc `
			arr_gross[$i]=`echo "${arr_basic[$i]} + $increment" |bc`
		else
			increment=`echo " ${arr_basic[$i]} * 0.98" | bc`
			arr_gross[$i]=`echo "${arr_basic[$i]} + $increment" | bc `
		fi
	done
}


echo
echo "Initially Employee details : "
print_emp_details

#uddate gross salary
update_gross_salary

echo
echo       
echo "After udation of gross salary, Employee details : "
print_emp_details



