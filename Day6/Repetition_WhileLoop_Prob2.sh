#!/bin/bash -x 
min=1 
max=100 
while [ $min -le $max ] 
do 
	mid=$((($max+$min)/2)) 
	echo "is your number is $mid then press 3" 
	echo "if Not your number then" 
	echo "Press 1 if your number is lesser than $mid" 
	echo "Press 2 if your number is greater than $mid" 
	read r        
	if [ $r -eq 1 ]        
	then        
		max=$(($mid-1))        
	elif [ $r -eq 2 ]        
	then        
		min=$(($mid+1))        
	elif [ $r -eq 3 ]        
	then        
		max=$mid 
		break        
	else        
		echo "Invalid input"        
	fi 
done 
echo "Your number is :$max" 
