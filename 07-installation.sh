#!/bin/bash/

USERID=$(id -u)

if [$USERID -ne 0]
then
    echo "Please run with super user access"
else
    dnf install mysql -y
fi
echo "Is it still running?"