#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with super user access"
    exit 1 #manually exiting the code if error comes
else
    dnf install mysql -y
    exit 0
fi
echo "Is it still running?"