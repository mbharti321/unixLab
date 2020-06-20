echo "Manish Bharti"
echo "1947235"
echo
echo
echo "Enter the starting character you want"
read start
tar -cvf Collection.tar $start*
echo "Compressed files starting with $start into Collection.tar"
