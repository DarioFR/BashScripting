#!/usr/bin/env bash

DIR=$1
function file_count(){
echo "${DIR}:"
  local SAMPLE=$(ls $DIR)
  local count=0
  for FILE in $SAMPLE
  do
      ((count++))
  done
echo $count
}
file_count