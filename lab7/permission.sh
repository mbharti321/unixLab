echo "Manish Bharti"
echo "1947235"
echo
echo
echo "select 1 for Administrator"
echo "Select 2 for student"
echo "Select 3 for faculty"
read ch
case $ch in
        1)
        echo "current permission"
        file=permission.sh
        permission= ls -l $file
        echo "$permission"
        echo "Administrator have RWX permission"
        echo "changing permission ..."
        chmod u+rwx permission.sh
        permission= ls -l $file
        echo "$permission"
        ;;
        2)
        echo "current permission"
        file=permission.sh
        permission= ls -l $file
        echo "$permission"
        echo "Faculty have RW permission"
        echo "changing permission ..."
        chmod u-x permission.sh
        permission= ls -l $file
        echo "$permission"
        ;;
        3)
        echo "current permission"
        file=permission.sh
        permission= ls -l $file
        echo "$permission"
        echo "Student have R permission"
        echo "changing permission ..."
        chmod u-wx permission.sh
        permission= ls -l $file
        echo "$permission"
        ;;
esac
