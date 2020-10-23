#!/bin/bash -x

read -p "Enter the weekday number you want to check between 1-7 :-" W 
case $W in        
	1)echo "Monday";;        
	2)echo "Tuesday";;        
	3)echo "Wednesday";;        
	4)echo "Thusday";;        
	5)echo "Friday";;        
	6)echo "Saturday";;        
	7)echo "Sunday";; 
esac
