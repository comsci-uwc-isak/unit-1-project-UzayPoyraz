#!/bin/bash

#This program creates files inside a folder

echo "Creating a floder"
mkdir test

#entering the folder
cd test

#create 100 files
for (( f=0; f<100; f++ ))
do
	echo "Creating.file $f"
	echo "Message #$f" > file_$f.txt
done
echo "task complete"
