#!/bin/bash -x
odd_array()
even_array()
index=0
read -p "Enter the number: " num
if [[ ($num -ge 100) && ($num -le 999) ]];
then
	for((i=2;i<=$1;i++));
	do
		while [ $(($num%$i)) == 0 ]
		do
		echo $i
		num=$((num/$i))
		done
	done
fi
rem=$(($num % 2))
if [ $rem -eq 0 ]
then
	even_array[$index]=`printf $num`
else
	odd_array[$index]=`printf $num`
fi

reverse=0
a=$(($num % 10))
n=$(($n/10))
reverse=$(($reverse*10+$a))
echo $reverse
if [ $num -eq $reverse ]
then
	echo "Number is Palindrome"
else
	echo "Number is not Palindrome
fi"
