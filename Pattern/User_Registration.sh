#!/bin/bash -x
shopt -s extglob
Check(){
if [[ $1 =~ $2 ]]
then
        echo "Entered in Right format"
else
        echo "Invalid format"
fi
}
read -p "Enter the First Name : " FirstName
Pattern1="^[A-Z]{1}[a-z]{3,}$"
Check $FirstName $Pattern1

read -p "Enter the Last Name : " LastName
Pattern2="^[A-Z]{1}[a-z]{3,}$"
Check $LastName $Pattern2

read -p "Enter Your email id : " Email
Pattern3="^[0-9a-zA-Z]+[._+-]*[0-9a-zA-Z]*+[@][0-9a-zA-Z]+[.][a-zA-Z]{3}([.][a-zA-Z]{2})*$"
Check $Email $Pattern3

read -p "Enter the Phone Number  : " PhoneNumber
Pattern4="^[A-Z]{1}[a-z]{3,}$"
Check $PhoneNumber $Pattern4

read -p "Enter the Phone Number  : " Password
Pattern5="^(?=.*?[A-Z])([a-z]*)(?=.*?[0-9])(?=.*?[#@$%]).{8,}$"
Check $Password $Pattern5


