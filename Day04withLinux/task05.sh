#!/bin/bash

# Taking two numbers as input
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

# If-Else comparison
if [ $num1 -gt $num2 ]
then
    echo "$num1 is greater than $num2"
else
    echo "$num2 is greater than or equal to $num1"
fi
