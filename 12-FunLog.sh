#!/bin/bash

USERID=$(id -u)
LOGS_Folder="/var/logs/shell-scripts"
LOGS_FILE="/var/logs/shell-scripts/$0.log"

if [ $USERID-ne 0 ]; then
    echo "Please run this script as root access"
    exit 1
    fi
    mkdir -p $LOGS_Folder
validate(){
    if [ $1 -ne 0 ]; then
    echo "$2.. Failure"
    exit 1
else
    echo "$2 successfully."
fi
}
dnf install nginx -y &>> $LOGS_FILE
validate $? "Nginx installation"

dnf install nodejs -y &>> $LOGS_FILE    
validate $? "NodeJS installation"

dnf install mariadb105 -y &>> $LOGS_FILE
validate $? "mariadb105 installation"

dnf install mariadb -y &>> $LOGS_FILE
validate $? "mariadb installation"

dnf install mariadb-client -y &>> $LOGS_FILE
validate $? "mariadb-client installation"

dnf install php -y&>> $LOGS_FILE  
validate $? "PHP installation"


