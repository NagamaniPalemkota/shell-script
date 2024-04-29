#!/bin/bash

DISK_USAGE=$(df -hT|grep xfs)
DISK_THRESHOLD=50

while IFS read -r line
    do 
        DISK_USED=$(echo $line|awk -F " " 'print {6F}'| cut -d "%" -f1)
        FOLDER=$(echo $line|awk -F " " 'print {NF}')
        if [ $DISK_USED -ge $DISK_THRESHOLD ]
            then
                echo " $FOLDER is more than the $DISK_THRESHOLD usage"
            else
                echo "$FOLDER is less than the $DISK_THRESHOLD usage"
        fi
    done <<< ${DISK_USAGE}