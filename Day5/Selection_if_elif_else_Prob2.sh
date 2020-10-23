#!/bin/bash -x 
read -p "Enter a number btw 1 to 7 to chech weekday.." x 
if [ $x -eq 1 ]; 
then        
	echo "Monday" 
elif [ $x -eq 2 ]; 
then        
	echo "Tuesday" 
elif [ $x -eq 3 ]; 
then        
	echo "Wednesday" 
elif [ $x -eq 4 ]; 
then        
	echo "Thusday" 
elif [ $x -eq 5 ]; 
then        
	echo "Friday"
elif [ $x -eq 6 ]; 
then        
	echo "Saturday" 
elif [ $x -eq 7 ]; 
then        
	echo "Sunday" 
else        
	echo "Invalid input" 
fi 
