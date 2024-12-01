# if id is 0 then its super user if not its normal user
#!/bin/bash
#here we are trying to install some pakages

user=$(id -u) #check if super user or not first
if [ $user -ne 0 ]
then
    echo "please run in super user"
    exit 1 #manually exit if error comes
else
    echo "you are super usr"
fi

dnf install mysql -y
echo "is script proceeding"
