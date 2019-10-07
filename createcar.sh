#!/bin/bash

#This program will create a car in the maincarfile
#for the car rental system
#Sep 30

if [ $# -ne 4 ]; then
	echo "Wrong input. Please enter Plate, Model, Color, Passangers"
	exit
fi

#Number of arguments is correct. Continue
plate=$1
model=$2
color=$3
pp=$4

#adding new entry to file maincarfile.txt
echo "$plate $model $color $pp" >> ~Desktop/carRentalApp/db/maincarfile.txt

bash frame2 "Car created succesfully"
