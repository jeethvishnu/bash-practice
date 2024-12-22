#!/bin/bash

p1=vishnu
p2=shee

echo "hi $p1"
echo "hi $p2"
echo "how are you $p2"
echo "i am fine $p1"
echo "enter your details $p1 and $p2"
echo "entering $p1 details"
echo "enter username"
read username
echo "enter passwd"
read passwd
echo "username added: $username"
echo "passwd added: $passwd"

echo "enter $p2 details"
echo "enter name"
read -s name
echo "passwd"
read -s passwd
echo "name added: $name"
echo "passwd added: $passwd"
