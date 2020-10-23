#!/bin/bash
declare -A array
count=true
while ( true )
do
	dice=$((RANDOM%6+1))
	if [ $dice -eq 1 ]
	then
		((array[0]++))
		if [ ${array[0]} -eq 10 ]
		then
			echo "Dice has flipped one 10 times"
			break
		fi
	elif [ $dice -eq 2 ]
	then
		((array[1]++))
		if [ ${array[1]} -eq 10 ]
                then
                        echo "Dice has flipped Two 10 times"
                        break
                fi

	elif [ $dice -eq 3 ]
	then
                ((array[2]++))
		if [ ${array[2]} -eq 10 ]
                then
                        echo "Dice has flipped Three 10 times"
                        break
                fi

	elif [ $dice -eq 4 ]
	then
                ((array[3]++))
		if [ ${array[3]} -eq 10 ]
                then
                        echo "Dice has flipped four 10 times"
                        break
                fi

	elif [ $dice -eq 5 ]
	then
                ((array[4]++))
		if [ ${array[4]} -eq 10 ]
                then
                        echo "Dice has flipped Five 10 times"
                        break
                fi

	elif [ $dice -eq 6 ]
	then
                ((array[5]++))
		if [ ${array[5]} -eq 10 ]
                then
                        echo "Dice has flipped Six 10 times"
                        break
                fi

	fi
done
echo "( ${array[@]} )"
min=${array[0]}
for ((i=1;i<=5;i++))
do
	if [[ ${array[$i]} -lt $min ]]
	then
		min=${array[$i]}
	fi
done
if [ $min -eq ${array[0]} ]
then
	echo "One occured minimum time"
elif [ $min -eq ${array[1]} ]
then
	echo "Two occured minimum times"
elif [ $min -eq ${array[2]} ]
then
        echo "Three occured minimum times"
elif [ $min -eq ${array[3]} ]
then
        echo "Four occured minimum times"
elif [ $min -eq ${array[4]} ]
then
        echo "Five occured minimum times"
elif [ $min -eq ${array[5]} ]
then
        echo "Six occured minimum times"
fi
