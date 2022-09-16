#!/bin/bash

#Array operations

names=(10 98 17 11 21 7 8)	# Declaring an array of size 7

echo "The total number of elements in the array :  ${#names[@]}"	#Printing size of the array
echo "The elements in the array are: ${names[@]}"	#Printing all the elements 
echo "The fifth element in the array is : ${names[4]}"	#Printing the fifth element
