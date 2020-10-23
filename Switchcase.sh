#!/bin/bash -x

isFullTime=2
isPartTime=1
empratePerHr=20
randomcheck=$((RANDOM%3))

case $randomcheck in
	$isFullTime)
		empHrs=8;;
	$isPartTime)
		empHrs=4;;
	*)
		empHrs=0;;
esac
salary=$(($empHrs*$empratePerHr))
