#welcome
#!/bin/bash

c=$(id -u)
if [ $c -ne 0 ]
then
    echo "is it sudo"
    exit 1
else
    echo "entered into sudo"
fi


dnf install curl -y

if [ $? -ne 0 ]
then
    echo "failed"
    exit 1
else        
    echo "success"
fi
