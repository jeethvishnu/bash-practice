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

dnf install mysql-server -y &>>log
lak $? "installing"

systemctl enable mysqld &>>log
lak $? "enabling"

systemctl start mysqld &>>log
lak $? "starting"

mysql_secure_installation --set-root-pass ExpenseApp@1 &>>log
lak $? "setting root password"
