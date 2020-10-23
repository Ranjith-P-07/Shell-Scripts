#!/bin/bash -x
declare -A dice
for ((i=1;i<=6;i++))
do
	dice+=([$i]=0)
done
echo ${dice[@]}
echo ${!dice[@]}
