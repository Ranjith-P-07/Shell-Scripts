#!/bin/bash 
count=true 
Rs=100 
while [ $count ] 
do
	Bet=$((RANDOM%2))        
	if [ $Bet -eq 1 ];        
	then                
		((Rs++))                
		if [ $Rs -eq 200 ]                
		then                        
			echo "He Won and got :" $Rs                        
			break                
		fi        
	else                
		((Rs--))                
		if [ $Rs -eq 0 ]                
		then                        
			echo "He lost :" $Rs                        
			break                
		fi        
	fi 
done
