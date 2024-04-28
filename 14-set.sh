#!/bin/bash

set -e #used to handle errors by shell
trap 'failure ${LINENO} ${BASH_COMMAND}' ERR
USERID=$(id -u)

failure()
{
    echo "Error occurs at $LINENO at $BASH_COMMAND"
}

if [ $USERID -ne 0 ]
then
    echo "Please run with super user access"
    exit 1 #manually exiting the code if error comes
else
    echo "You are super user"
fi
    
    dnf install mysqlll -y
    dnf install git -y

    if [ $? -ne 0]
    then
        echo "Installation of mysql is failure"
    else
        echo "Installation of mysql is success"
    fi

echo "Is it still running?"