#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

    if [ -d ${SOURCE_DIRECTORY} ]
        then
            echo -e "$G ${SOURCE_DIRECTORY} is present $N"
        else
            echo -e "$R ${SOURCE_DIRECTORY} is not present $N"
    fi

    FILES=$(find $SOURCE_DIRECTORY -name "-log" -mtime +14)

    echo "Files to delete: $FILES"

    while IFS=read -r line 
    do

    echo "Deleting $line"
    rm -rf $line

    done <<<$FILES