#!/bin/bash -x
odd_array=()
even_array=()
index=0
read -p "Enter the number: " num
if [[ ($num -ge 100) && ($num -le 999) ]];
then
	for((i=2;i<=$num*$num;i++));
	do
		while [ $(($num%$i)) == 0 ]
		do
		echo $i
			if [ $((i%2)) -eq 0 ]
			then
				even_array[index]=$i
				index=$((index+1))
			else
				odd_array[ index ]=$i
				index=$((index+1))
			fi
		num=$((num/$i))
		done
	done
fi
echo "${even_array[@]}"
echo "${odd_array[@]}"
reverse=0
a=$(($num % 10))
n=$(($num/10))
reverse=$(($reverse*10+$a))
echo $reverse
if [ $num -eq $reverse ]
then
	echo "Number is Palindrome"
else
	echo "Number is not Palindrome"
fi
