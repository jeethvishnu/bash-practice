user=$(id -u) #check if super user or not first
r="\e[31m"
g="\e[32m"
n="\e[0m"

validate(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...$r fail $n"
        exit 1
    else
        echo -e "$2...$g success $n"
    fi

}

if [ $user -ne 0 ]
then
    echo "please run in super user"
    exit 1 #manually exit if error comes
else
    echo "you are super usr"
fi

dnf install mysql -y
validate $? "installing sql"


dnf install git -y
validate $? "installing git"

dnf install dockerr -y
validate $? "installing docker"
