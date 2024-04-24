#!/bin/bash/

var1=$1
var2=$2

if [ $var1 -gt $var2]
then
    echo "$var1 is greater then $var2"
else
     echo "$var1 is less then $var2"
fi