#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with super user access"
    exit 1 #manually exiting the code if error comes
else
    echo "You are super user"
fi
    
    dnf install mysqlll -y

    if [ $? -ne 0]
        echo "Installation of mysql is failure"
    else
        echo "Installation of mysql is success"
    fi

echo "Is it still running?"