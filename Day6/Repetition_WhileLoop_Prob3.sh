#!/bin/bash 
count=true 
Head=0 
Tail=0 
while [ $count ] 
do 
	toss=$((RANDOM%2))        
	if [ $toss -eq 0 ];        
	then                
		((Head++))                
		if [ $Head -eq 11 ]                
		then                        
			echo "Head Wins"                        
			break                
		fi        
	else                
		((Tail++))                
		if [ $Tail -eq 11 ]                
		then                        
			echo "Tail Wins"                        
			break                
		fi        
	fi 
done 
