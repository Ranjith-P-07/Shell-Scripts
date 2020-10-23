#!/bin/bash 
read -p "Enter the number" n 
sum=0 
for((i=0;i<=$n;i++)) 
do        
	harmonic=`awk 'BEGIN{print 1/'$i'}'`        
	sum=`awk 'BEGIN{print '$sum'+'$harmonic'}'`        
	echo $sum 
done 
