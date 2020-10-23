#!/bin/bash 
#Initializing array 
array=() 
index=0 
for ((i=1;i<=10;i++)) 
do 
	#Getting Random Three Digit number 
	num=$((RANDOM%900+100)) 
	array[index]=`printf $num` 
	index=$((index+1)) 
done 
echo "array = (${array[*]})" 
#Operation for largest and Secondlaegest number 
largest=${array[0]} 
seclarg=0 
for (( i=1;i<${#array[@]};i++ )) 
do        
	if [ ${array[i]} -gt $largest ]        
	then                
		seclarg=$largest;                
		largest=${array[i]};        
	elif [ ${array[i]} -gt $seclarg ]        
	then                
		seclarg=${array[i]};        
	fi 
done 
echo "Largest number in array is :"$largest 
echo "Second Largest number in array is :"$seclarg 
#Operation for smallest and Second smallest number 
smallest=${array[0]} 
secsmall=0 
for (( i=1;i<${#array[@]};i++ )) 
do        
	if [ ${array[i]} -lt $smallest ]        
	then
                secsmall=$smallest;                
		smallest=${array[i]}; 
        elif [ ${array[i]} -lt $secsmall ]        
	then                
		secsmall=${array[i]};        
	fi 
done 
echo "Smallest number in array is :"$smallest 
echo "Second Largest number in array is :"$secsmall 
