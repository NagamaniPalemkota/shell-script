#!/bin/bash/
echo "Enter few arguments:"
echo "all variables are: $@"
echo "No. of variables passed: $#"
echo "CUrrent file name is : $0"
echo "Previously used command is : $?"
echo "present working directory is :$PWD"
echo "Current home directory is: $HOME"
echo "current user working on it is: $USER"
echo "host name is : $HOSTNAME"
echo "PRoceess id of this script is : $$"
sleep 60&
echo " Process id of last background command: $!"