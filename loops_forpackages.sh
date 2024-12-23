#!/bin/bash

u=$(id -u)
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
done




