#!/bin/bash
# This script demonstrates processing the command line using function for help and error message handling

# TASk: add a debug option and a verbose option to this script. Both options should set a variable if 
#       they appear on the command line when the script is run. The debug option is '-d' and should set
#       a variable named 'debug' to the value "yes". The verbose option is '-v' and should set a variable 
#       named 'verbose' to yes. The debug and verbose variables should be set to 'no' if the user did not
#       give the option for them on the command line when runing the script. After the command line is processed,
#       the script should print out 2 lines to indicate if the verbose and debug options are set to yes or no.

############
# FUNCTIONS
############
# Define functions for error messages and displaying command line help.
function displayusage {
  echo "Usage:$0 [-h | --help] [-d | --debug] [-v | --verbose]"
}
function displaydebug {
  echo "Debug : $debug [-d | --debug]"
}
function displayverbose {
  echo "verbose : $verbose [-v | --verbose]"
}
function errormessage {
  echo "$@" >&2
}
function debug {
  debug='no'
}
function verbose {
  verbose='no'
}

############
# CLI Processing
############
# Process the command line options, saving the results in variables for later use.
verbose
debug
while [ $# -gt 0 ]; do
  case "$1" in
    -h|--help)
      displayusage
      exit 0
      ;;
    -d|--debug)
      debug='yes'
      displaydebug
      displayverbose
      exit 0
      ;;
    -v|--verbose)
      verbose='yes'
      displayverbose
      displaydebug
      exit 0
      ;;
    *)
      errormessage "I don't know what '$1' is. Sorry"
      errormessage "$(displayusage)"
      displaydebug
      displatverbose
      exit 1
      ;;
  esac
  shift
done
displaydebug
displayverbose
