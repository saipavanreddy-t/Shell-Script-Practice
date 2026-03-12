#!/bin/bash
set -e #ERR


trap 'echo "there is an error in $LINENO, Command: $BASH_COMMAND"' ERR


echo "hello world"
echo "i am learning bash scripting"
echoo " Print this error"
echo "no error in this line".