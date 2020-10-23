#!/bin/bash -x 
read -p "Enter the number in Feets between 1 to 4 :- " F 
case $F in        
	1)echo "0.3048 meter";;        
	2)echo "0.6096 meter";;        
	3)echo "0.9144 meter";;        
	4)echo "1.2192 meter";; 
esac 
