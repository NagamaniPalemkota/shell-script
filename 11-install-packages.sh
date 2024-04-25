#!/bin/bash/

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo "$0" | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log



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
    dnf list installed $i &>> $LOGFILE

    if [ $? -eq 0 ]
    then
        echo "$i Already installed..skipping"
        exit 197
    else
        echo " $i Has to be installed"
    fi
done