#!/bin/bash 
read -p "Enter the number to find 2's power: " n 
i=1 
while (($i <= $n)) 
do        
	result=$((2**$i))        
	echo $result        
	i=$(($i+1)) 
done 
