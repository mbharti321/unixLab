echo "Manish BHarti"
echo "1947235"
echo
echo

input_file="temp_awk.text"
echo "~~~~~~~~~awk command execution~~~~~~~~~~"
echo
echo "1.1. awk -f program-file input_file"
echo
awk -f program-file input_file
echo
echo
echo "1.2. awk '{ print $3 }' input_file"
echo
awk '{ print $3 }' input_file
echo
echo
echo "1.3. awk '/0.5/ { print $1 }' input_file
echo
awk '{ print $3 }' input_file
echo
echo
echo "1.4. awk '/^[0-9][0-9]/ { print $1 }' input_file"
echo
awk '{ print $3 }' input_file
echo
echo
echo "1.5. awk '$2 ~ /ia/ { print $1 }' input_file"
echo
awk '{ print $3 }' input_file
echo
echo
echo ""1.6. awk '$2 !~ /ia/ { print $1 }' input_file"
echo
awk '{ print $3 }' input_file
echo
echo
echo "1.7. awk '$3 &gt; 50 { print $1 }' input_file"
echo
awk '{ print $3 }' input_file
echo
echo
echo "1.8. awk '$4 == 31, $4 == 33 { print $0 }' input_file"
echo
awk '{ print $3 }' input_file
echo
echo "echo "1.9. awk 'BEGIN { print &quot;Start Processing.&quot; }; { print $3 }; END { print &quot;End Processing.&quot; }' input_file"
echo
awk 'BEGIN { print &quot;Start Processing.&quot; }; { print $3 }; END { print &quot;End Processing.&quot; }' input_file
echo
echo "1.10. awk 'BEGIN { FS = &quot;.&quot; } { print $1 }' input_file"
echo
awk '{ print $3 }' input_file
echo
