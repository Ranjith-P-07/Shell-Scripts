#!/bin/bash -x 
read -p "Enter a number" a 
read -p "Enter b number" b 
read -p "Enter c number" c 
w=$((a+b*c)) 
x=$((a%b+c)) 
y=$((c+a/b)) 
z=$((a*b+c)) 
if [[ ($w -gt $x) && ($w -gt $y) && ($w -gt $z) ]]; 
then        
	max=$w 
elif [[  ($x -gt $w) && ($x -gt $y) && ($x -gt $z) ]]; 
then        
	max=$x elif [[  ($y -gt $w) && ($y -gt $x) && ($y -gt $z) ]]; 
then        
	max=$y 
else        
	max=$z 
fi 
if [[  ($w -le $x) && ($w -le $y) && ($w -le $z) ]]; 
then
        min=$w 
elif [[  ($x -le $w) && ($x -le $y) && ($x -le $z) ]]; 
then        
	min=$x 
elif [[  ($y -le $w) && ($y -le $x) && ($y -le $z) ]]; 
then        
	min=$y 
else        
	min=$z fi
