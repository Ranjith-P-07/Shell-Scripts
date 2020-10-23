#!/bin/bash 
read -p "Enter the number..?  " x 
for ((i=1;i<=$x;i++)) 
do        
	result=$((2**i)) 
done 
echo  "Power of 2 is: " $result 
