#!/bin/bash


<<info
This shell script checks if user exists
info


read -p "Enter the username you wish to check" username

if [ $(cat /etc/passwd  | grep $username | wc | awk '{print $1}')];

then
	echo "as wc is 0 the user is deleted"
else
	echo "user was not deleted"
fi
