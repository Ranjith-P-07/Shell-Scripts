#!/bin/bash -x 
read -p "Enter the number :-" W
case $W in        
	1)echo "Unit";;        
	10)echo "Ten";;        
	100)echo "Hundred";;        
	1000)echo "Thousand";; 
esac 
