#!/bin/bash

# p=$1
# q=$2

# echo "hi there $p"
# echo "hi $q"
# echo "sign up yoour creds $p and $q"
# echo "both signin creds are:"
# read -s username
# read -s passwd
# echo "your creds are: $username"
# echo "your pass is: $passwd"

# echo "lets install some packages $p,$q"

# usr=$(id -u)
# if [ $usr -ne 0 ]
# then
#     echo "is it sudo"
# else    
#     echo "IN SUDO"
# fi

# dnf install mysql -y
# if [ $? -ne 0 ]
# then
#     echo "failed.."
# else
#     echo "success.."
# fi

# usr=$(id -u)
# val(){
#     if [ $1 -ne 0 ]
#     then
#         echo "$2 failed"
#         exit 1
#     else
#         echo "$2 success"
#     fi

# }
# if [ usr -ne 0 ]
# then
#     echo "is is sudo"
#     exit 1
# else
#     echo "IN SUDO"
# fi

# dnf install docker -y
# val $? "installing docker"

# ui=$(id -u)
# dun(){
#     if [ $1 -ne 0 ]
#     then
#         echo "$2 failed"
#         exit 1
#     else
#         echo "$2 success"
#     fi

# }
# if [ $ui -ne 0 ]
# then
#     echo "is this sudo"
#     exit 1
# else
#     echo "IN SUDO"
# fi

# dnf install mysql-server -y
# dun $? "mysql-server installing"


usr=$(id -u)
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

dnf install curl -y
lak $? "curl installed"


