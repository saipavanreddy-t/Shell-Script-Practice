#!/bin/bash

USERID=$(id -u)
if [ $USERID-ne 0 ]; then
    echo "Please run this script as root access"
    exit 1
else
    echo "Installing Nginx."
    dnf install nginx -y
fi
#please check the exit status of every command u write in the script,
## if any command fails then we should not proceed with next command, we should exit the script
# with proper message

if [ $? -ne 0 ]; then
    echo "Nginx installation failed, please check the error message and fix it."
    exit 1
else
    echo "Nginx installed successfully."
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "MySQL installation failed, please check the error message and fix it."
    exit 1
else
    echo "MySQL installed successfully."
fi
dnf install nodejs -y
if [ $? -ne 0 ]; then
    echo "NodeJS installation failed, please check the error message and fix it."
    exit 1
    else
    echo "NodeJS installed successfully."
fi
