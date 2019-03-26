#!/usr/bin/env bash

function file_count(){
  local SAMPLE=$(ls)
  local count=0
  for FILE in $SAMPLE
  do
      ((count++))
  done
echo $count
}
file_count