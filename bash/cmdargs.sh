#!/bin/bash
# this script demonstrates how the shift command works

#loop through the command line arguments
while [ $# -g 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  #display whatever is in $1
  echo '$1 has '"$1' in it."

# TASK 1: replace the echo command that just says processing with a case statement that
#         recognizes the following command line options and tells the user if they were found on the command line
#         Options to recognize: -h for help -v for verbose mode
# TASK 2: add recognition of a debug option -d that expects a number that specifies the debug level (e.g. -d 3)
#         save the debug level in a variable to be available to use later in the script
#         display an error if the user gave the -d option without a number after it
# TASK 3: put anything that wasn't recognized on the command line into a variable for use later in the script

debug="no"
verbose"no"

echo "starting to process the command line"
while [ $# -gt 0 ]; do
  case "$1" in
    -h | --help )
        echo "$0 [-h|--help] [-d level] [-v]"
        exit
        ;;
        
    -d )
      level=-1
      debug="yes"
      shift
      level=$1
      if [ -z $level ]; then
        echo "you didn't put the level"
        exit
      else
        echo "level is $level"
      fi
      ;;
    -v )
      verbose="yes"
      ;;
      * )
      what=$1
      echo "there is no option $1"
      exit
      ;;
      
  esac
  echo "Shifting..."
  shift
  
  #each time through the loop, shift the arguments left
  #this decrements the arguments count for us
  
  #tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process"
  echo "--------------------------------"
  #go back to the top of the loop to see if anything is left to work on
  done
  echo "done"
done
