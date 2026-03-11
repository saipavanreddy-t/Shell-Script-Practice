#!/bin/bash

USERID=$(id -u)
LOGS_Folder="/var/logs/shell-scripts"
LOGS_FILE="/var/logs/shell-scripts/$0.log"

if [ $USERID-ne 0 ]; then
    echo "Please run this script as root access" | tee -a $LOGS_FILE
    exit 1
    fi
    mkdir -p $LOGS_Folder
validate(){
    if [ $1 -ne 0 ]; then
    echo "$2.. Failure" | tee -a $LOGS_FILE
    exit 1
else
    echo "$2 successfully." | tee -a $LOGS_FILE
fi
}

for package in $@ #sudo sh 14-loops.sh nginx nodejs mariadb105 php

do
    dnf install $package -y &>> $LOGS_FILE
    validate $? "$package installation"
done


