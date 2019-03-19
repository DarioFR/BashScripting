#!/usr/bin/env bash

read -p "Please enter a file name: " FILE

if [ -f $FILE ]
then echo "This is a regular file"
elif [ -d $FILE ]
then echo "This is a directory"
else
echo "This is another type of file"
fi

ls -l $FILE

