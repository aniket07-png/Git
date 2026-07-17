#!/bin/bash

#This is if,elif and else statement

read -p "Enter your percentage: " percentage

if [[ $percentage == 100 ]];
then
	echo "You got 100%"

elif [[ $percentage -ge 50 ]];
then
	echo "You got 50 or more than 50%"

else
	echo "You got less than 50%"

fi #to close the if statement
