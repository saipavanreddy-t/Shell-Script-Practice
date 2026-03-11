#!/bin/bash

USERID=$(id -u)
if [ $USERID-ne 0 ]; then
    echo "Please run this script as root access"
    exit 1
    fi
validate(){
    if [ $1 -ne 0 ]; then
    echo "$2.. Failure"
    exit 1
else
    echo "$2 successfully."
fi
}
dnf install nginx -y
validate $? "Nginx installation"

dnf install nodejs -y
validate $? "NodeJS installation"

