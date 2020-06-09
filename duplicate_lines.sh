
echo "Name : MAnish Bharti"
echo "Reg. No. : 1947235"
echo
echo

echo -n "Enter the file name : "
read file_name

echo
echo
if [ ! -f "$file_name" ]
then
	echo "File not found"
	exit 1
fi

function duplicate_lines {
	d_count=`sort $file_name | uniq -c -d`
	echo "$d_count"
}

echo
echo "count of duplicate lines in file \"$file_name\" : `duplicate_lines`"
