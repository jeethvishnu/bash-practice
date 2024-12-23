#!/bin/bash
usr=$(id -u)
time=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
log=/tmp/$scriptname-$time.log

u=$(id -u)

lak(){
    if [ $1 -ne 0 ]
    then
        echo "$2 failed"
    else
        echo "$2 success"
    fi
}

if [ $u -ne 0 ]
then
    echo "is this sudo"
    exit 1
else    
    echo "SUDO"
fi

dnf module disable nodejs -y &>>log
lak $? "disabling"

dnf module enable nodejs:20 -y &>>log
lak $? "enabling"

dnf install nodejs -y &>>log
lak $? "installing"

id expense
if [ $? -ne 0 ]
then    
    useradd expense &>>log
    lak $? "creating usr"
else
    echo "already created skipping"
fi
