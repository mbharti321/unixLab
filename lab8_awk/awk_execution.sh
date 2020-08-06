echo "Manish BHarti"
echo "1947235"
echo
echo

echo "1.1. awk -f program-file input-file"
echo
awk -f program-file input-file
echo
echo
echo "1.2. awk &#39;{ print $3 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo
echo "1.3. awk &#39;/0.5/ { print $1 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo
echo "1.4. awk &#39;/^[0-9][0-9]/ { print $1 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo
echo "echo "echo "echo "echo "echo "1.5. awk &#39;$2 ~ /ia/ { print $1 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo
echo "echo "echo "echo "echo "echo "echo "echo "echo "1.6. awk &#39;$2 !~ /ia/ { print $1 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo
echo "echo "echo "echo "1.7. awk &#39;$3 &gt; 50 { print $1 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo
echo "echo "echo "1.8. awk &#39;$4 == 31, $4 == 33 { print $0 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo "echo "1.9. awk &#39;BEGIN { print &quot;Start Processing.&quot; }; { print $3 }; END { print &quot;End Processing.&quot; }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
echo "1.10. awk &#39;BEGIN { FS = &quot;.&quot; } { print $1 }&#39; input file"
echo
awk &#39;{ print $3 }&#39; input file
echo
