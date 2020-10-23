#!/bin/bash -x 
echo "Enter a one digit numer" 
read digitnum 
case $digitnum in        
	0)echo "Zero";;        
	1)echo "one";;
        2)echo "two";;        
	3)echo "three";;        
	4)echo "four";;        
	5)echo "Five";;        
	6)echo "Six";;        
	7)echo "Seven";;        
	8)echo "Eight";;        
	9)echo "Nine";;        
	*)echo "The number is not Single digit";; 
esac
