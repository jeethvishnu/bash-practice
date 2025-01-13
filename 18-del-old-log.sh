#!/bin/bash

src=/tmp/logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $src ]
then
    echo -e "$G src dir exist $N"
else
    echo -e "$Y src $src dont exist $N"
    exit 1
fi

f=$(find . -name "*log"  -mtime +14) #--> 14 means more than 14 days

