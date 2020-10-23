#!/bin/bash -x 
read -p "Enter a Number: " x 
if [ $x -eq 1 ]; 
then
        echo "unit" 
elif [ $x -eq 10 ]; 
then        
	echo "Ten" 
elif [ $x -eq 100 ] 
then        
	echo "Hundred" 
elif [ $x -eq 1000 ] 
then        
	echo "Thousand" 
fi
