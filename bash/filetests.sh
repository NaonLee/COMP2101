#!/bin/bash
# This script demonstrates file testing

# test for the existence of the /etc/resolv.conf file
# TASK 1: Add a test to see if the /etc/resolv.conf is a regular file
# TASK 2: Add a test to see if the /etc/resolv.conf is a symbolic link
# TASK 3: Add a test to see if the /etc/resolv.conf is a directory
# TASK 4: Add a test to see if the /etc/resolv.conf is readable
# TASK 5: Add a test to see if the /etc/resolv.conf is writable
# TASK 6: Add a test to see if the /etc/resolv.conf is executable

[ -e /etc/resolv.conf ] && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"

#Task 1
[ -f /etc/resolv.conf ] && echo "/etc/resolv.conf is a regular file" || echo "/etc/resolv.conf is not a regular file"
#Task 2
[ -h /etc/resolv.conf ] && echo "/etc/resolv.conf is a symbolic link" || echo "/etc/resolv.conf is not a symbolic link"
#Task 3
[ -d /etc/resolv.conf ] && echo "/etc/resolv.conf is a directory" || echo "/etc/resolv.conf is not a directory"
#Task 4
[ -r /etc/resolv.conf ] && echo "/etc/resolv.conf is readable" || echo "/etc/resolv.conf is not readable"
#Task 5
[ -w /etc/resolv.conf ] && echo "/etc/resolv.conf is writable" || echo "/etc/resolv.conf is not writable"
#Task 6
[ -x /etc/resolv.conf ] && echo "/etc/resolv.conf is executable" || echo "/etc/resolv.conf is not executable"


# Tests if /tmp is a directory
# TASK 7: Add a test to see if the /tmp directory is readable
# TASK 8: Add a test to see if the /tmp directory is writable
# TASK 9: Add a test to see if the /tmp directory can be accessed
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"
#7
[ -r /tmp ] && echo "/tmp is readable" || echo "/tmp is not readable"
#8
[ -w /tmp ] && echo "/tmp is writable" || echo "/tmp is not writable"
#9
[ -x /tmp ] && echo "/tmp can be accessed" || echo "/tmp can not be accessed"

# Tests if one file is newer than another
# #Task 10: Add testing to print out which file newst, or if they are the same age
[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf" 
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts" 
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf"
#10
ls -lc /etc | head -1; echo "is the newest file in /etc"
