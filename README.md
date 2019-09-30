![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
---------
We will create a program for a car company that is trying to log their car orders into a system. The program will run in terminal since the company does not want to download additional program to their pcs, it should have a simple and transparent installation, it should be very user friendly; so the users will add cars, record trips, have the trip history, edit and delete any car without a burden. The commands should be easy so the user can enter the trip distance (in kilometers). In addition, the company requests to have permanent system and backup to minimise the risk of failure. Also, the program will show the total statistics so it is more manageable.

Design
-------
### First sketch of the system
![Firstsketch](screenie.png)

Development
--------
### Development of the functions; Create new car:
The following steps summarize the algorithm to create a new car in the system
1) Get inputs (Plate, Model, Color, Parranger number)
2) Check number of arguments if 4 then continue, if not exit "message
3) Write to main file with one extra line. Not erasing other Entries
4) Create car trip file with Licence plate.txt

### 1. The following script crates the app folder and inside it creates two more folders: db and scripts.


Evaluation
-----------



