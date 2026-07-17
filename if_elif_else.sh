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


read -p "Enter the package name:- " Package

echo "Checking if the package is already installed"

if dpkg -s $Package >/dev/null 2>&1
then
        echo "$Package already installed"
        exit 1
else
        echo "Updating system and Installing $Package"
fi

sudo apt-get update
sudo apt install $Package -y

read -p "Enter the service name:- " Service

sudo systemctl start $Service
systemctl status $Service
