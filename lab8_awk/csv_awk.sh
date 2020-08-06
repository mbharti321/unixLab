echo "Manish BHarti"
echo "1947235"
echo
echo
csv_file="name.csv"
awk -F, '
BEGIN {print "CSV file printing with tab separated\n\n"};
{print $1,"\t",$2,"\t",$3};
END {print "\nPrint done" };'
 $csv_file
