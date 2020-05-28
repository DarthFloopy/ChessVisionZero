#!/bin/bash

[ $1 ] && num=$1 || num=10

echo "Printing $num square names. Hit enter for next square name."

i=0
while [ $i -lt $num ]; do
    read asdfjkl  # wait for the user to press enter
    printf $((RANDOM%8)) | tr '01234567' 'abcdefgh'
    echo $((RANDOM%8+1))
    i=$((i+1))
done

read -t 3 asdfjkl

echo "Done!"

