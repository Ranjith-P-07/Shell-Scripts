#!/bin/bash -x echo 
"60*40 feet in Meters" 
area=$((60*40)) 
result=`awk 'BEGIN{print '$area'/'10.764'}'` 
echo $result "meter"

echo "For 25 such plots" 
acre=`awk 'BEGIN{print '$area'/'43560'}'` 
echo $acre "Acre"
