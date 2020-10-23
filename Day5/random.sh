#!/bin/bash -x
toss=$((RANDOM))
if [[ ($toss -gt -9) && ($toss -lt 9) ]];
then
	echo "$toss"
else
	echo "It's Not a single Digit" 
fi
