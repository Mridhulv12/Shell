#!/bin/bash
read -p "Enter a number :" num1
echo "Multiplication of $num1 "
for (( i=1; i<=10; i++))
do echo "$num1 x $i = $((num1*i))"
done
       
~                             
