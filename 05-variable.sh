#!/bin/bash
#passing the arrigments dinamaically to the script while executing the script
echo " please enter your user name ::"
# what ever name we enter it will be stored in USER_NAME variable will read in line 5;
read USER_NAME

echo "User name is $USER_NAME"

echo " please enter your password ::"

read -s PASSWORD
# beacause of -s option password will not be visible while typing