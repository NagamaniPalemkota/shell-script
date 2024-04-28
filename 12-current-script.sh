#!/bin/bash

COURSE="Devops with AWS"

echo "Course before calling other script is: ${COURSE}"
echo "Process ID of current script is:$$"

#./13-other-script.sh

source ./13-other-script.sh
echo "Course after calling the other script is:${COURSE}"