#!/bin/bash

#Program to perform mathematical calculations.

Add(){
sum=`expr $1 + $2`
echo "The addition of $1 + $2 = $sum" 
}

Subtract(){
diff=`expr $1 - $2`
echo "The difference of $1 - $2 = $diff" 
}

Divide(){
remain=`expr $1 % $2`
div=`expr $1 / $2`
echo "The quotient of $1 / $2 = $div"
echo "Remainder: $remain "
}

Multi(){
mul=$(($1 * $2))
echo "The product of $1 x $2 = $mul" 
}


#Excetuion starts from here
read -p "Enter 1st number (num1): " num1
read -p "Enter 2nd number (num2): " num2

#Menu
echo "Menu"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Division (/)"
echo "4. Multiplication (x)"
read -p "Enter which operator (+,-,/,x): " _operate

if [ $_operate == '+' ]
then
	Add $num1 $num2	#Calling Add function with $num1 and $num2 as arguments
elif [ $_operate == '-' ]
then
	Subtract $num1 $num2	#Calling Subtract function with $num1 and $num2 as arguments
elif [ $_operate == '/' ]
then
	Divide $num1 $num2	#Calling Divide function with $num1 and $num2 as arguments
elif [ $_operate == 'x' ]
then
	Multi $num1 $num2	#Calling Multi function with $num1 and $num2 as arguments
else
	echo "Wrong Operation"
	exit
fi
 


