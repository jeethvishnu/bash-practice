#!/bin/bash

set -e #here if ant error comes it will stop there it wont continue

failure(){ #function which will tell error line number
    echo "failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR #function which will tell error line number

user=$(id -u) #check if super user or not first

if [ $user -ne 0 ]
then
    echo "please run in super user"
    exit 1 #manually exit if error comes
else
    echo "you are super usr"
fi

dnf install giteww -y #here we gave mistake 
dnf install mysql -y


echo "is script proceeding"
