#!/bin/bash -x 
read -p "Enter the month number: " month 
read -p "Enter the Day: " date 
if (( ($month >= 3 & $month <= 6) & ($date <= 20) ))
then        
	echo "True" 
else        
	echo "False" 
fi 
