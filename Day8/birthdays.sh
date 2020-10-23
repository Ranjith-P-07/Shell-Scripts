#!/bin/bash
declare -A array
declare -A final
for ((i=0;i<50;i++))
do
	month=$((RANDOM%24+1))
	array[$i]=$month
done
echo ${array[@]}
echo $month
jan=0;feb=0;mar=0;apr=0;may=0;jun=0;jul=0;auj=0;sep=0;oct=0;nov=0;dec=0;
for ((j=0;j<50;j++))
do
	if [[ ( ${array[$j]} -eq 1 ) || ( ${array[$j]} -eq 13 ) ]]
	then
		((jan++))
	fi
	 if [[ ( ${array[$j]} -eq 2 ) || ( ${array[$j]} -eq 14 ) ]]
	then
		((feb++))
	fi
    if [[ ( ${array[$j]} -eq 3 ) || ( ${array[$j]} -eq 15 ) ]]
   then
      ((mar++))
   fi
    if [[ ( ${array[$j]} -eq 4 ) || ( ${array[$j]} -eq 16 ) ]]
   then
      ((apr++))
   fi
    if [[ ( ${array[$j]} -eq 5 ) || ( ${array[$j]} -eq 17 ) ]]
   then
      ((may++))
   fi
    if [[ ( ${array[$j]} -eq 6 ) || ( ${array[$j]} -eq 18 ) ]]
   then
      ((jun++))
   fi
    if [[ ( ${array[$j]} -eq 7 ) || ( ${array[$j]} -eq 19 ) ]]
   then
      ((jul++))
   fi
    if [[ ( ${array[$j]} -eq 8 ) || ( ${array[$j]} -eq 20 ) ]]
   then
      ((auj++))
   fi
    if [[ ( ${array[$j]} -eq 9 ) || ( ${array[$j]} -eq 21 ) ]]
   then
      ((sep++))
   fi
    if [[ ( ${array[$j]} -eq 10 ) || ( ${array[$j]} -eq 22 ) ]]
   then
      ((oct++))
   fi
    if [[ ( ${array[$j]} -eq 11 ) || ( ${array[$j]} -eq 23 ) ]]
   then
      ((nov++))
   fi
    if [[ ( ${array[$j]} -eq 12 ) || ( ${array[$j]} -eq 24 ) ]]
   then
      ((dec++))
   fi

done

final[january]=$jan
final[Febraury]=$feb
final[March]=$mar
final[April]=$apr
final[May]=$may
final[June]=$jun
final[July]=$jul
final[Aujust]=$auj
final[September]=$sep
final[October]=$oct
final[November]=$nov
final[December]=$dec
echo "Keys : (${!final[@]}) "
echo "Values : (${final[@]}) "
for KEY in "${!final[@]}";
do
echo "key: $KEY"
echo "value: ${final[$KEY]}"
done
