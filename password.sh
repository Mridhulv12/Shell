#!/bin/bash
read -p "Enter username of user to change password: " user
id $user
if [ $? -eq 0 ]
then
	echo "User $user exists"
	read -p "Enter new Password : " pass
	echo "$pass" | passwd --stdin $user
	echo "password updated successfully"
else
	echo "user $user doesn't exists"
fi
