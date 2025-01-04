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

for i in $@
do
    echo "to install:$i"
    dnf list installed $i &>>log #here it will search for package whether it si installed or not
    if [ $? -eq 0 ]
    then    
        echo "$i already installed"
    # else
    #     echo "$i not installed...need to"
    else
        dnf install $i -y &>>log
        lak $? "installation of $i"
    fi
done





