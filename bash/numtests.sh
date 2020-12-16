#!/bin/bash
# this script demonstrates doing numberic tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
# TASK 3: Improve it by adding a test to tell the user if the second number is a multile of the first number

#1
read -p "Give me 2 numbers, separated by a space: " firstnum secondnum

[ $firstnum -eq $secondnum ] && echo "The two numbers are the same"
[ $firstnum -ne $secondnum ] && echo "The two numbers are not the same"
[ $firstnum -lt $secondnum ] && echo "The first number is less than the second number"
[ $firstnum -gt $secondnum ] && echo "The first number is greater than or equal to the second number"

#2
[ $((firstnum %2)) -eq 1 ] && echo "The first number is odd" || echo "The first number is even" 
[ $((secondnum %2)) -eq 1 ] && echo "The second number is odd" || echo "The second number is even" 

#3
multiple=$((firstnum * secondnum))
[ $secondnum -eq $multiple ] && echo "The second number is a multiple of the first number" || echo "The second number is not a multiple of the first number"
