#!/bin/bash/

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo "$0" | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

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


for i in $@
do
    echo "Packages to install : $i"
    dnf list installed $i &>> $LOGFILE

    if [ $? -eq 0 ]
    then
        echo -e "\e[32m $i Already installed..\e[33m skipping \e[0m"
        
    else
        echo " $i is installing"
        dnf install $i -y &>> $LOGFILE
        validate $? "installation of $i.."

    fi
done