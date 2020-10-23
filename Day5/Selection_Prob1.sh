#!/bin/bash -x 
read -p "Enter How many times u want random number" i 
b=1 
c=0 
for ((a=1;a<=i;a++)) 
do 
	rand=$((RANDOM%1000)) 
	if [ $rand -gt $b ] 
	then        
		b=$rand 
	else        
		c=$rand 
	fi 
done
Max=$b 
Min=$c 
