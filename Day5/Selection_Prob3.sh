#!/bin/bash -x 
read -p "Enter the Year you want to check: " Year 
x=$(($Year % 4)) 
y=$(($Year % 100)) 
z=$(($Year % 400)) 
if [[ $x == 0 || $y == 0 || $z == 0 ]];
then        
	echo "Its a Leap year" 
else        
	echo "Its Not a Leap year" 
fi 
