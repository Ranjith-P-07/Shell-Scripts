#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalemphrs=0;
totalworkingdays=0;

declare -A dailyWage

function getWorkHrs( ) {
        local empcheck=$1
        case $empcheck in
                $IS_FULL_TIME)
                        emphrs=8;;
                $IS_PART_TIME)
                        emphrs=4;;
                *)
                        emphrs=0;;
        esac
        echo $emphrs
}
function getempwage() {
        local emphr=$1
        echo $(($emphrs*$EMP_RATE_PER_HR))
}
while [[ ($totalemphrs -lt $MAX_HRS_IN_MONTH) && ($totalworkingdays -lt $NUM_WORKING_DAYS) ]]
do
        ((totalworkingdays++))
        empcheck=$((RANDOM%3))
        emphrs="$( getWorkHrs $empcheck )"
        totalemphrs=$(($totalemphrs+$emphrs))
        dailyWage["Day"$totalworkingdays]="$( getempwage $emphrs )"

done

totalSalary=$(($totalemphrs+$EMP_RATE_PER_HR))
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
