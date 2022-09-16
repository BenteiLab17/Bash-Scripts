#!/bin/bash

#Program to demonstrate the use of != operator

echo "Enter number 1"
read x
echo "Enter number 2"
read y

if [ $x != $y ]	#if x is not equal to y, the condition is true. Else false
then
	echo "This is the truth statement of if.\n$x and $y are not equal."
else
	echo "This is false statement of if.\n$x and $y are equal."
fi
