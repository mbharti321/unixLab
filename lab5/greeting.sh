 
echo "Name : MAnish Bharti"
echo "Reg. No. : 1947235"
echo
echo
echo -n "Please! Enter your name : "
read name

function get_time {
	hours=`date "+%H"`
	minutes=`date "+%M"`
	time_in_minutes=`expr $hours \* 60 + $minutes`
	#echo "$time"
	greeting_message=""
	if [[ $time_in_minutes -lt 720 ]]
	then
		greeting_message="morning"
	elif [[ $time_in_minutes -ge 720 && $time_in_minutes -lt 1020 ]]
	then
		greeting_message="afternoon"
	elif [[ $time_in_minutes -ge 1020 && $time_in_minutes -lt 1140 ]]                 
	then 
		greeting_message="evening"
	elif [[ $time_in_minutes -ge 1140 && $time_in_minutes -lt 1440 ]]                     
	then
		greeting_message="night"
	fi	

	echo "$greeting_message"
}

echo
echo "Hello $name,"
echo "Good `get_time`!"
