echo "Manish Bharti"
echo "1947235"
echo
echo
echo "Archiving files larger than 1 GB"
find ~ -type f -size +1000000k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }' zip large_files.zip
