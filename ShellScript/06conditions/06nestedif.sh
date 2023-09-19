#!/bin/bash
number=9
if [[ ${number} -gt 10 ]]
then
    if [[ $number -gt 50 ]]
    then
        if [[ ${number} -gt 100 ]]
        then
            echo "number is grater then 100"
        fi
    else
        echo "number is in between 11 to 50"
    fi
else
    echo "number is less then or equal to 10"
fi