eecho "Manish BHarti"
echo "1947235"
echo
echo

input_file="temp_awk.txt"
program_file="program_file.txt"
echo "~~~~~~~~~awk command execution~~~~~~~~~~"
echo
echo "1.1. awk -f program-file input_file"
echo
awk -f $program_file $input_file
echo
echo
echo "1.2. awk '{ print \$3 }' input_file"
echo
awk '{ print $3 }' $input_file
echo
echo
echo "1.3. awk '/0.5/ { print \$1 }' input_file"
echo
awk '/0.5/ { print $1 }' $input_file
echo
echo
echo "1.4. awk '/^[0-9]/ { print \$0 }' input_file"
echo
awk '/^[0-9]/ { print $0 }' $input_file
echo
echo
echo "1.5. awk '\$0 ~ /man/ { print \$0 }' input_file"
echo
awk '$0 ~ /man/ { print $0 }' $input_file
echo
echo
echo "1.6. awk '\$0 !~ /man/ { print \$0 }' input_file"
echo
awk '$0 !~ /man/ { print $0 }' $input_file
echo
echo
echo "1.7. awk '\$4 > 5000 { print \$0 }' input_file"
echo
awk '$4 > 500 { print $0 }' $input_file
echo
echo
echo "1.8. awk '\$4 == 31, \$4 == 33 { print \$0 }' input_file"
echo
awk '$4 == 85, $4 == 13000 { print $0 }' $input_file
echo
echo "1.9. awk 'BEGIN { print "Start Processing."}; { print \$3 }; END { print "End Processing." }' input_file"
echo
awk 'BEGIN { print " Start Processing.\n" }; { print $3 }; END { print "\nEnd Processing." }' $input_file
echo
echo "1.10. awk 'BEGIN { FS = &quot;.&quot; } { print \$1 }' input_file"
echo
awk 'BEGIN {FS = "." } { print $1}' $input_file
echo

awk '$2 !~ /ia/ { print \$1 }' $input_file
echo
echo
echo "1.7. awk '$3 &gt; 50 { print \$1 }' input_file"
echo
awk '$3 &gt; 50 { print \$1 }' $input_file
echo
echo
echo "1.8. awk '\$4 == 31, \$4 == 33 { print \$0 }' input_file"
echo
awk '\$4 == 31, \$4 == 33 { print \$0 }' $input_file
echo
echo "1.9. awk 'BEGIN { print &quot;Start Processing.&quot; }; { print \$3 }; END { print &quot;End Processing.&quot; }' input_file"
echo
awk 'BEGIN { print &quot;Start Processing.&quot; }; { print $3 }; END { print &quot;End Processing.&quot; }' $input_file
echo
echo "1.10. awk 'BEGIN { FS = &quot;.&quot; } { print $1 }' input_file"
echo
awk 'BEGIN { FS = &quot;.&quot; } { print $1 }' $input_file
