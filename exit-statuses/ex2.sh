#!/usr/bin/env bash -x

NAME=$1
if [ -f $NAME ]
then echo "this is a regular file"
exit 0;
elif [ -d $NAME ]
then echo "this is a directory"
exit 1;
else
    echo "this is another type of file"
    exit 2;
fi