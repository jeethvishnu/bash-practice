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
#so we if theres any problem while installing mysql we have to check because machines can do mistakes some problems may occur sometimes while installing pacakages
if [ $? -ne 0 ]
then
    echo "failed"
    exit 1
else
    echo "success"

fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "failed"
    exit 1
else  
    echo "pass"
fi

echo "is script proceeding"
