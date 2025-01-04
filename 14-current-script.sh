#!/bin/bash
#how do you call other scripts into your shell #script.

course="devops from other script"

echo "before calling other script, course:$course"
echo "process id of current script: $$"


./15-other-script.sh  #first method

source ./15-other-script.sh #second method

echo "after calling other script: $coure"

