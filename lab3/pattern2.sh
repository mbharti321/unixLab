echo "Name : MAnish Bharti"
echo "Register No.: 1947235"
echo
echo -ne "Enter no of levels : "
read level
    
for((m=1; m<=level; m++)) 
do
	  # This loop print spaces 
	  # required 
	  for((a=i; a<=level; a++)) 
	  do
		  echo -ne " "; 
	  done

	  # This loop print the left 
	  # side of the pyramid 
	  for((n=1; n<=m; n++)) 							
	  do
		  echo -ne "$m ";
	  done										        
	   #This loop print right  
	   #side of the pryamid. 
	  for((i=1; i<m; i++)) 
	 do
		  echo -ne ""; 
	  done

	  # New line 
	  echo; 
 done
