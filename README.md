![CarRental](logo.png)
```.py
Marks=10
Demo= No demonstration in class
Total=(Marks+Demo)=10
```
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

### Definiton of the problem

### Solution Proposed

### Success Criteria
This are measureable outcomes
1. A car can be created and stored in database
2. A car information can be edited
3. A car can be deleted
4. The installation is ***simple-> one step process***
5. A summary (total/average distance traveled) can be generated for a particular car
6. Trips can be recorded and stored for an existing car
7. A basic database system is implemented
8. A basic backup functionality is available.

**Criterion A**

|Level|Descriptor|
|----|-----|
|1|An appropriate scenario for investigation for an identified client is stated. The rationale for choosing the proposed product is identified. The criteria for evaluating the success of the product are generally inappropriate.|
```.sh
Rational
* Uzay, this is practically what I wrote in class. There is no further development on your part.
* Who is the client? Why is the product being developed? Why are we using BASH or other tools? These are questions that you will need to solve for next Unit.
```

Design
-------
### First sketch of the system
![Firstsketch](screenie.png)

## Criterion B
|**level**|**Description**|
|-----|------------|
|3|An outline test plan is included but limited. A system diagram is included. From this information it is difficult to see how the product was developed.|
```.sh
Rationale
* Good job with the system diagram
* Here again you have limited evidence for your work, you are missing flow diagrams, description of the images, and test plan"
```

Development
--------
### Development of the functions; Create new car:
The following steps summarize the algorithm to create a new car in the system
1) Get inputs (Plate, Model, Color, Parranger number)
2) Check number of arguments if 4 then continue, if not exit "message
3) Write to main file with one extra line. Not erasing other Entries
4) Create car trip file with Licence plate.txt

### Uninstall:
1) Ask user if they want to delete or not
2) If yes remove folder by rm command 
3) If no exit

### Backup:
1) Ask the user where the backup should be
2) Copy the files
3) Paste it in the folder the user chose.

### Edit Car:
1) Ask user for the input
2) If the imputs are not 4, tell the user that the input is incorrect
3) Find the car that matches the inputs
4) Delete the old information and add the new one
### Summary scripts:
1) Get an argument from the user
2) If the argument is licence plate, show that cars total km
3) If the user enters all as an argument, show all of the cars total km.

### Delete car:
1) Ask the user to enter the licence plate of the car that they want to delete
2) Check if user entered a correct argument
3) If yes, delete the $plate and the text from maincarfile.txt

### Install:
1) Ask user if they want to download it to the default pathway or to a location they choose
2) Move to that location and install from the download location

### 1. The following script crates the app folder and inside it creates two more folders: db and scripts.

All of the necessary scripts can be found in the repository
----------

## Criterion C

|**level**|**Description**|
|-----|------------|
|2+3|The proposed solution is characterized by limited use of existing tools. There is no explanation of why the techniques are used or how they are adequate for the task. Sources are used but are not identified.|
```.sh
Rationale
* You have included the step for many of the actions, however, not code or further research is included in the document
* You programs are included in the repository, this helped your mark
```

Evaluation
-----------
Test 1:
The first run of the test file was unsuccessful because the Database folder was non existent
Also the create program did not store the licence file inside the Database folder.
Changing the line `echo " " > $license.txt` to `echo " " > Database/$license.txt` Solved this issue.
Second run of the program we had an issue: the test needed to move to the main folder
```.sh
cd ../
```
This is necessary because the `create.sh` resides in the main folder whereasthe test file
is inside the /tests folders.
To check that the car was creatd in the maincarfile.txt, the folowing command is used:
`lastline = $( tail -n 1 Database/maincarfile.txt)`
This line is used so we don't need to `cat` the program and check the whole file. Instead we use this line
to check the last lines of the maincarfile.txt

We faced a problem: Too many arguments. We added quoting marks in order to show it as 1 sentence instead of multiple arguments.

**Summary:** We were the alpha tester of the program, we did dynaminc testing using White-box testing method.

## Criterion D
|**level**|**Description**|
|-----|------------|
|1|There is a limited attempt to evaluate the product against the success criteria identified in criterion A. There is limited evidence of any recommendations for further improvement, they are trivial or unrealistic.|
```.sh
Rationale
* You are missing several most of this evaluation.
```
