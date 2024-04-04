#!/usr/bin/bash

#conditional statement
#switch case statement

echo "Enter a character: "
read char
case $char in
    A|a)
    echo "Apple";;
    B|b)
    echo "Banana";;
    C|c)
    echo "Cat";;
    *)
    echo "Invalid Character";;
esac