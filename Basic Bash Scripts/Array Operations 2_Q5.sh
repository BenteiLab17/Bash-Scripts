#!/bin/bash

names2=(1)	#An array of size 1 and element only 1
size=7		#To make size of array 7
i=0		# Index

#A loop to insert array elements so that it contain 7 elements
while [ $i -lt $size ]		
do
	temp=$(($i+1))
	echo "Enter element $temp"
	read names2[$i]
	i=$(($i + 1))
done

echo "The array is : ${names2[@]}"

#Extracting three elements from index 2
echo "The three elements starting from index 2 is: ${names2[@]:2:3}"

#Replacing the third element with Debian
names2[2]="Debian"

#Appending an element at the last position"
new_size=${#names2[@]}
new_size=$(($new_size + 1))
new_index=$(($new_size - 1))
names2[$new_index]="Newelement"

#Printing all array elements
echo "New Array is: ${names2[@]}"

