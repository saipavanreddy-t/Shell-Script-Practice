#!/bin/bash
####special variable
echo " All Arguments passed to script : $@"
echo" Total number of arguments passed to script : $#"
echo " Name of the script : $0"
echo "Present working directory : $PWD"
echo "User executing the script : $USER"
echo "Home directory of the user : $HOME"
echo "prcess id of the script : $$"
sleep 100
echo "PID of last background process : $!"
echo " All args passed to script :$*"