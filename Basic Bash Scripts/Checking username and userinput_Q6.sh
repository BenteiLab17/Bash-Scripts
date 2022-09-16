#!/bin/bash

#Program to ask user the name and check with the system username

systemname=$1	#Importing the systemusername

read -p "Enter your name: " name

if [ "$name" = "$systemname" ]	#Comparing two strings
then
	echo "Hello"
else
	echo "Try Again"
fi

