#!/bin/bash

# echo 'hello from the other side'

# p1=sheet
# p2=jeeth
# echo "$p1:hi there"
# echo "$p2:whats up"
# echo "$p1:fine about you?"
# echo "$p2:i'm good"
# echo "$p1:bye from this side"
# echo "$p2:bye $p1"

# echo "enter username"
# read -s username
# echo "enter passwd"
# read -s passwd
# echo "your username is: $username"
# echo "your passwd is: $passwd"

# a=('apple' 'banana' 'grapes')
# echo "first element is: ${a[0]}"
# echo "second element is: ${a[1]}"
# echo "third element is: ${a[2]}"

# echo "all elemnts: ${a[@]}"

#!/bin/bash

# userid=$(id -u)
# if [ $userid -ne 0 ]
# then
#     echo "you need su"
#     exit 1
# else
#     echo "installing"

# fi

# dnf install mysql -y
# if [ $? -ne 0 ]
# then
#     echo "failed"
# else    
#     echo "success"
# fi


# user=$(id -u)
# if [ $user -ne 0 ]
# then
#     echo "is this super user"
#     exit 1
# else
#     echo "success"
# fi

# dnf install aria2 -y
# if [ $? -ne 0 ]
# then
#     echo "failed"
# else
#     echo "successful"
# fi




# using functions practice
usr=$(id -u)
val(){
    if [ $1 -ne 0 ]
    then    
        echo "failed"
    else
        echo "successful"

}

if [ user -ne 0 ]
then
    echo "is this sudo"
else
    echo "you are in sudo"
fi

dnf install mysql -y
val $? "installing mysql success"

dnf install wget -y
val $? "installing wget success"
