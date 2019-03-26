#!/usr/bin/env bash

NOW=$(date +%Y-%m-%d)
read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: (Press ENTER for ${NOW}). " PREFIX
if [[ $PREFIX = "" ]]
then
INPUT_PREFIX=$NOW
else
INPUT_PREFIX=$PREFIX
fi
for FILE in *.jpg
do
    FILENAME=${FILE%.*}
    echo "Renaming ${FILE} to ${INPUT_PREFIX}-${FILENAME}.${EXTENSION}"
    mv $FILE ${INPUT_PREFIX}-${FILENAME}.${EXTENSION}
done

