#!/bin/bash 
read -p "Enter the number: " num 
if [ $num -ge 1 ]; 
then 
	for((i=2;i<=$num/2;i++)) 
	do         
		if [ $(($num%i)) -eq 0 ]         
		then                
			echo "Number is not a prime number"         
			exit         
		fi 
	done        
	echo "Number is Prime" 
fi
