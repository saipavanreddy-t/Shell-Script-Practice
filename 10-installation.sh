#!/bin/bash


UserID=$(id -u)

If [ $UserID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi
echo "Installing nginx "
dnf install nginx -y
#please check the exit status of every command u write in the script, if any command fails then we should not proceed with next command, we should exit the script with proper message
