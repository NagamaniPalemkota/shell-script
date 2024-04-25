#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with super user access"
    exit 1 #manually exiting the code if error comes
else
    echo "You are super user"
fi


for i in $@
do
    echo "Packages to install : $i"
done