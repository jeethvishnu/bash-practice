user=$(id -u) #check if super user or not first
timestamp=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
log=/tmp/$scriptname-$timestamp.log
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


for i in $@
do
    echo "package to install: $i"
    dnf list intsalled $i &>>log
    if [ $? -eq 0 ]
    then    
        echo "$i already installed"
    else
        dnf install $i -y &>>log
        validate $? "installation of $i"
    fi
done
