#!/bin/bash 
#Finding  Sum of 3 numbers is equal to zero 
array=(-1 0 1 2 -2 4) 
sorted=($(echo ${array[*]} | tr " " "\n" | sort -n )) 
echo ${sorted[*]} 
n=${#sorted[*]} 
for ((i=0;i<$n-2;i++)) 
do        
	for ((j=i+1;j<$n-1;j++))        
	do                 
		for ((k=j+1;k<$n;k++))                
		do                        
			if (( (${sorted[i]})+(${sorted[j]})+(${sorted[k]}) == 0 ));
                        then
                        add=(${sorted[i]} , ${sorted[j]} , ${sorted[k]})
                        echo "The Three numbers are : [ ${add[*]} ]"
                        fi
                done
        done
 done 
