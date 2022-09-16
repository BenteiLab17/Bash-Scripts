#!/bin/bash

#Bash Program to add two numbers entered from the command line

var1=$1		# Importing 1st argument in num1 
var2=$2		# Importing 2nd argument in num2

result=`expr $var1 + $var2`

echo "The Addition of $var + $var2 = $result "

