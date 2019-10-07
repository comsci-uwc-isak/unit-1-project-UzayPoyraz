#!/bin/bash

#This file creates the folder structure for the
#minimal Car Rental App

echo "Starting installation"
echo "Enter the path where you want to install. Press Enter"

read path

#moving to the desired location
cd $path
echo "moving to $path"
echo $PWD
#check for correct change directory
if [ "$path" != "$PWD" ];then
	echo "Error creating the folder structure"
	exit
fi

#Create App Folder
mkdir RentalCarApp

cd RentalCarApp

#create folder for database and scripts
mkdir db
mkdir scripts
echo "structure created successfully"

