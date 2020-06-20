echo "Manish Bharti"
echo "1947235"
echo
echo
echo "Enter the permission"
read per
g=$ find -perm -a=$per
echo "files with current permission"
echo "$g"
find -perm -a=$per | tar cvzf fileper.gz -T -
