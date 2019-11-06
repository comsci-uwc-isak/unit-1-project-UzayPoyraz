#!/bin/bash

#This script generates summary for a given car
bash frame Summary
#Step 1: Check the number of arguments
if [ $# -ne 1 ];then
  echo "Enter licence plate"
  exit
fi
#Step 2: Check if the file exists in the Database
cd ../Database/
FILE=$1
if [ ! -f "$FILE.txt" ]; then
  echo "File for car $FILE does not exist."
  exit
fi
#Step 3: Calculate the toal km
total=0
while read line;
do
  for km in $line
  do
    (( total=$total+$km ))
    break
  done
done < "$FILE.txt"
#Step 4: Show result nicely
cd../scripts/
bash frame "Total distance travelde for $FILE was $total"
exit
