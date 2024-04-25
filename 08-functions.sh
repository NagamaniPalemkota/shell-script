#!/bin/bash/

USERID=$(id -u)

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "$2is failure"
        exit 197
    else
        echo "$2 is success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run with super user access"
    exit 1 #manually exiting the code if error comes
else
    echo "You are super user"
fi
    
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"

echo "Is it still running?"