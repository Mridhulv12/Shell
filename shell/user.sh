#!/bin/bash
read -p "Enter a  Username :" uname
read -p "Enter UID :" uid
read -p "Enter gecos :" ge
read -p "Enter a  new shell:" shell
read -p "Do this user need sudo access(only yes is accepted) :" sudo
if [ $? -eq 0 ]
then
        echo "user already exists"
else
        echo "user $uname has been created "
fi
if [ $sudo == yes ]
then 
	useradd -u $uid -c $ge -s $shell -G wheel $uname
else
	useradd -u $uid -c $ge -s $shell $uname
fi

	


