#!/bin/bash

#Printing different messages based on a particular number

echo "Enter a number"
read num

#Checking with 3
if [ $num -gt 3 ]
then
	echo "Greater than 3"
elif [ $num -lt 3 ]
then
	echo "Lesser than 3"
elif [ $num -eq 3 ]
then
	echo "Equal to 3"
else
	echo "User has not entered any input"
fi
