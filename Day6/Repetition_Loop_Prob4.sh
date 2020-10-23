#!/bin/bash 
read -p "Enter the start num : " start 
read -p "Enter the end num : " end 
for ((i=$start;i<=$end;i++)) 
do        
	f=$(($i % 2))        
	if [ $f -ne 0 ];        
	then        
		echo $i        
	fi 
done 
