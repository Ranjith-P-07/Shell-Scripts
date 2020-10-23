#!/bin/bash 
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
	for((i=2;i<=$number/2;i++))        
	do                
		if [ $(($number%i)) -eq 0 ]                
		then                
			echo "Number is Palindrome But not a prime number"                
			exit                
		fi        
	done        
	echo "Number is Palindrome and Prime" 
else        
	echo "Number is Not a Palindrome" 
fi 
} 
read -p "Enter the number to check whether it is Prime and Palindrome :" n 
Palindrome $n
