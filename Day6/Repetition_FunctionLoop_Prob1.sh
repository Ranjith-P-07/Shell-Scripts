#!/bin/bash -x 
DegF(){
	read -p "Enter the degree value you need to convert to farnate :" degC        
	value=`awk 'BEGIN{print '$degC' * 9/5 + 32}'`        
	echo $value "Farnate" 
} 
DegC(){        
	read -p "Enter the farnate value you need to convert to Degree  :" degF        
	value=`awk 'BEGIN{print '$degF' - 32 * 5/9}'`        
	echo $value "Degree" 
} 
echo "Enter 0 for degF conversion or 1 for degC conversion" 
read deg 
case $deg in        
	0)DegF;;        
	1)DegC;; 
esac 
