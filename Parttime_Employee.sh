#!/bin/bash -x

isFullTime=2
isPartTime=1
empratePerHr=20
randomcheck=$((RANDOM%3))

if [ $isFullTime -eq $randomcheck ];
then
	empHrs=8;
elif [ $isPartTime -eq $randomcheck ];
then
	empHrs=4;
else
	empHrs=0;
fi
salary=$(($empHrs*$empratePerHr))
