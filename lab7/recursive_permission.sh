echo "Manish Bharti"
echo "1947235"
echo
echo
echo "Enter the name of a new directory:"
read dname                        
echo "Now creating $dname directory:" 
mkdir $dname
echo
echo "Creating 15 files in $dname:"
touch $dname/file{1..15}.txt

echo -n "file with default Permission:"
ls -l $dname

echo "Enter permission in numeric form:"
read per

chmod -R $per $dname

echo -n "Files after Changed Permission:"
ls -l $dname
