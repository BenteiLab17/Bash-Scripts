#!/bin/bash

#Program to print sum of 1st 'n' terms of prime numbers

read -p "Enter the number of terms of prime numbers: " term
i=1	#Acts a an iterator for prime. Eg 1 for '2', 2 for '3', 3 for '5'......
num=2	#1st prime number (i.e 2)
sum=0	#This will store the sum of all primes
flag=0	#Prime number checking status

while [ $i -le $term ]	#This will iterate the no. of prime terms
do
	flag=0
	div=2		#divisor
	temp=`expr $num / 2 `
	while [ $div -le $temp ]
	do
		temp1=`expr $num % $div`
		if [ $temp1 -eq 0 ]	#If a number is divisible by none other than 1 and itself, then it is not prime
		then
			flag=1
			break
		fi
		div=`expr $div + 1`
	done
	
	if [ $flag -eq 0 ]	#If a number is a prime, then we increment both the number and iterator
	then
		sum=`expr $sum + $num`
		num=`expr $num + 1`
		i=`expr $i + 1`
	
	elif [ $flag -eq 1 ]	#If a number is not prime, then we increment only the number. Not the iterator
	then
		num=`expr $num + 1`
	fi
done

#Displaying final result
echo "The sum of 1st $term prime numbers = $sum"

		

