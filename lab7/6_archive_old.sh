echo "Manish Bharti"
echo "1947235"
echo
echo
echo "Archiving those files that are older than 3 months:"
find . -mtime +90 | xargs zip old_files.zip
