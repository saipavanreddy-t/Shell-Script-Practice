#!/bin/bash

Number=$1

#-gt-> greater than
#-lt-> less than
#-eq-> equal to
#-ne-> not equal to
#-ge-> greater than or equal to
#-le-> less than or equal to

if [ $Number -gt 20 ]; then
    echo " Given Number : $Number is greater than 20"
    else
    echo " Given Number : $Number is less than or equal to 20"
fi