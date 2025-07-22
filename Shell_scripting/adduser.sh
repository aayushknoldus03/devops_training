#!/bin/bash

: <<'COMMENT'
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
COMMENT


read -p "enter username: " username
 
useradd -m $username

#read -s -p "enter password " password 

age="25"

#echo "$username:$password" | chpasswd

echo 

echo  "user added : $0 $1 and $2 $username their age is $age"
