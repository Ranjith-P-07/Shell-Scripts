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
echo $reverse 
if [ $number -eq $reverse ] 
then        
	echo "Number is Palindrome" 
else        
	echo "Number is Not a Palindrome" 
fi 
} 
read -p "Enter the 1st number you want to check: " n1 
Palindrome $n1 
read -p "Enter the 2nd number you want to check :" n2 
Palindrome $n2
