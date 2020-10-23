#!/bin/bash 
echo "Enter the number" 
read f 
r=1 
for ((i=1;i<=$f;i++)) 
do        
	res=$(($r*$i))        
	r=$res 
done 
echo $r
