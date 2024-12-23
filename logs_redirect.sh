#!/bin/bash
#logs: 
#------
#   we should store the logs of nay coding

#redirectiosn
#------------
#   > -- by default only success output will redirected
#   1 -- success
#   2 -- error
#   &> -- stores both error and success
#   >> -- append the data ex: &>> something
#   > -- overwrite

#Note : ther should be no space b/w & and >


usr=$(id -u)
time=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
log=/tmp/$scriptname-$time.log
lak(){
    if [ $1 -ne 0 ]
    then
        echo "$2 failed"
    else
        echo "$2 success"
    fi
}
if [ $usr -ne 0 ]
then
    echo "is this sudo"
    exit 1
else
    echo "IN SUDO"
fi

dnf install curl -y &>>log
lak $? "curl installed"

dnf install wget -y &>>log
lak $? "wget installed"

