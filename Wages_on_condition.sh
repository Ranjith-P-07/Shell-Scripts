#!/bin/bash -x

isFullTime=2
isPartTime=1
max_hrs_in_month=100
empratePerHr=20
num_Working_Days=20
total_emp_hrs=0
total_working_days=0
totalSalary=0

while [[ ($total_emp_hrs -lt $max_hrs_in_month) && ($total_working_days -lt $num_Working_Days) ]]
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
	((total_emp_hrs+=$empHrs))
	((total_working_days++))
        salary=$(($empHrs*$empratePerHr))
        totalSalary=$(($totalSalary+$salary))
done




