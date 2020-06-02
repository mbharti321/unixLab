if [ $# -lt 3 ] 
then
	echo "Error! There is no enough Num of arguments supplied ..."
else 	
	if [[ $1 -gt $2 ]] && [[ $1 -gt $3 ]] 
	then
		echo $1
	elif [[ $2 -gt $1 ]] && [[ $2 -gt $3 ]]
	then
		echo $2
	else
		echo $3
	fi
fi

