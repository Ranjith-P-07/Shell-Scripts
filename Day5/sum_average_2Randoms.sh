#!/bin/bash -x 
read -p "Enter how many times: " i 
a=0; 
for ((c=1;c<=i;c++)) 
do 
	randomnum=$((RANDOM%100)) 
	Sum=$(($a+$randomnum)) 
	a=$Sum 
done 
echo $Sum 
b=$(($c-1)) 
Avg=$(($a/$b))
