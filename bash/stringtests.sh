#!/bin/bash
# This script demonstrates testing variables

# Test if the USER variable exists
# TASK 1: Add a command that prints out a labelled description of what is in the USER variable, but only if it is not empty
# TASK 2: Add a command that tells the user is the USER variable exitsts, but not empty
[ -v USER ] && echo "The variable SHELL exists"

#1

[ -v USER ] && [ -n "$USER" ] && echo "The variable USER has data in it $USER is in the USER variable"
[ -v USER ] && [ -z "$USER" ] && echo "The variable USER is empty"

#2

# Tests for staring data
# TASK 3: Modify the command to user the != operator instead of = operator, without breaking the logic of the command
# TASK 4: User the read command to ask the user running the script to give us strings to use for the tests

a=1
b=01
[ $a = $b ] && echo "$a is alphanumerically equal to $b" || echo "$a is not alphanumerically equal to $b"

#3
[ $a != $b ] || echo "$a is alphanumerically equal to $b" && echo "$a is not alphanumerically equal to $b"

#4
read -p "Give me 2 numbers, separated by a space: " a b
[ $a = $b ] && echo "$a is alphanumerically equal to $b" || echo "$a is not alphanumerically equal to $b"
