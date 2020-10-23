#!/bin/bash -x

isPresent=1;
randomcheck=$((RANDOM%2))

if [ $isPresent -eq $randomcheck ];
then
	empratePerHr=20;
	empHrs=8
	salary=$(($empHrs*$empratePerHr));
else
	salary=0;
fi
