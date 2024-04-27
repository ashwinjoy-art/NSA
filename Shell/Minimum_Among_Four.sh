#!/usr/bin/bash

echo "Enter four numbers:"
read num1 num2 num3 num4

min=$num1

if [ $num2 -lt $min ]; then
    min=$num2
fi

if [ $num3 -lt $min ]; then
    min=$num3
fi

if [ $num4 -lt $min ]; then
    min=$num4
fi

echo "Minimum value among $num1, $num2, $num3, and $num4 is: $min"
