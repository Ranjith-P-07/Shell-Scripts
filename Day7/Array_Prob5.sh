#!/bin/bash 
array=() 
Palindrome(){ 
n=$1 
number=$n
reverse=0 
while [ $n -gt 0 ]
do        
	a=$(($n%10))        
	n=$(($n/10))        
	reverse=$(($reverse * 10 + $a)) 
done 
if [ $number -eq $reverse ] 
then        
	array+=($number) 
fi 
} 
count=1 
while [ $count -lt 100 ] 
do        
	if [ $count -gt 10 ]        
	then        
		Palindrome $count        
	fi 
	((count++)) 
done 
echo "The repeated Digits are : ( ${array[*]} )"
