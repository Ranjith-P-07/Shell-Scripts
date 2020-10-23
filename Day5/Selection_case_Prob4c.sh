#!/bin/bash -x 
read -p "Enter the number in inches between 1 to 4 :- " F 
case $F in        
	1)echo "0.083333 Feet";;        
	2)echo "0.166667 Feet";;        
	3)echo "0.25 Feet";;        
	4)echo "0.333333 Feet";; 
esac 
