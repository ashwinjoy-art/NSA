#!/usr/bin/bash

echo "Enter a number:"
read number

remainder=$((number % 2))

case $remainder in
    0)
        echo "$number is even."
        ;;
    1)
        echo "$number is odd."
        ;;
    *)
        echo "Invalid input."
        ;;
esac
