#!/bin/bash -x

isFullTime=2
isPartTime=1
totalSalary=0
empratePerHr=20
numWorkingDays=20

for (( day=1; day<=$numWorkingDays; days++ ))
do
	empcheck=$((RANDOM%3));
		case $empcheck in
	        	$isFullTime)
                		empHrs=8;;
        		$isPartTime)
                		empHrs=4;;
       			 *)
                		empHrs=0;;
		esac

	salary=$(($empHrs*$empratePerHr))
	totalSalary=$(($totalSalary+$salary))
done
