#!/bin/bash
# num=$1

# if [ $num -gt 10 ]
# then
#     echo "given num $num is greater than 10"
# else
#     echo "given num $num is not greater than 10"
# fi

# practice

# num1=$1
# num2=$2
# if [ $num1 -gt $num2 ]
# then
#     echo "number $num1 is gretaer than $num2"
# else
#     echo "number $num2 is greater tha $num1"
# fi

num1=$1
num2=$2
if [ $num1 -lt $num2 ]
then    
    echo "given number $num1 is less than $num2"
else
    echo "given number $num1 is not less than $num2"

fi