#!/bin/bash -x
array=() 
index=0 
for ((i=1;i<=10;i++)) 
do 
	num=$((RANDOM%3)) 
	array[index]=`printf $num` 
	index=$((index+1)) 
done 
echo ${array[*]} 
for ((i=0;i<${#array[@]};i++)) 
do        
	for ((j=0;j<${#array[@]}-i-1;j++))        
	do                
		if [ ${array[j]} -gt ${array[$((j+1))]} ]                
		then                
			#Swaping values..!!                
			temp=${array[j]}                
			array[$j]=${array[$((j+1))]}                
			array[$((j+1))]=$temp                
		fi        
	done 
done 
L_num=(`echo "${array[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '`) 
second_largest=${L_num[((${#L_num[@]}-2))]} 
second_smallest=${L_num[1]} 
echo "Second_Largest number is :" $second_largest 
echo "Second_Smallest number is :" $second_smallest
