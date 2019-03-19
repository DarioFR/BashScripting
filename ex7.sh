#!/usr/bin/env bash

FILE=$1

if [ -f $FILE ]
then echo "This is a regular file"
elif [ -d $FILE ]
then echo "This is a directory"
else
echo "This is another type of file"
fi

ls -l $FILE