 

echo "Manish BHarti"
echo "1947235"
echo
echo
csv_file="name.csv"
awk -F, '{print $1,"\t",$2,"\t",$3}'  $csv_file
