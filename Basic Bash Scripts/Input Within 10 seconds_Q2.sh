#!/bin/bash

#Program to ask username and exit if input is not read within 10 secs
	
echo "Enter your username: "
read -t 10 name	#If user is not inputing within 10 seconds. Program ends
echo "Username: $name"

