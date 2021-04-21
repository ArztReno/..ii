# Authors: Renato Gusani & Jordan O Donovan 
# Student No. : x19411076 & x19372016
# Date : 10/12/2020
# Database: Finance + Agriculture DDL

DROP DATABASE IF EXISTS payroll;	# drops the database [payroll] if it already exists
CREATE DATABASE payroll;			# Creates the database [payroll] 

USE payroll;						# Uses payroll database to create the tables below

# Table created by Jordan [x19372016]
CREATE TABLE farm (					# Creates the table for the Farms [This tables stores information relating to Agriculture]
	farmID varchar(4) NOT NULL,		# farmID = Stores the email address of the employees using VARCHAR datatype up to 255 characters
    farmName varchar(255),			# farmName = Store the names of the farms using VARCHAR datatype up to 255 characters
    phoneNo int, 					# phoneNo = Stores the phone number for each department using the INT datatype
    PRIMARY KEY (farmID)			# Sets the PRIMARY KEY of the farm table as, "farmID"
);

# Table created by Renato [x19411076]
CREATE TABLE branch (				# Creates the table for the Branches [This tables stores information relating to Finance]
	branchID varchar(4) NOT NULL,	# branchID = Stores the branch identification of the branches using VARCHAR datatype up to 4 characters
    branchName varchar(255),		# branchName = Stores the name of the branches using VARCHAR datatype up to 255 characters
    phoneNo int,					# phoneNo = Stores the phone number for each department using the INT datatype
    PRIMARY KEY (branchID)			# Sets the PRIMARY KEY of the branch table as, "branchID"
);
# Table created by Renato [x19411076]
CREATE TABLE address (				# Creates the table for the employees addresses
	addressID varchar(4),			# addressID = Stores the address identification of the employees using VARCHAR datatype up to 4 characters
    line1 varchar(255),				# line1 = Stores the first line of the employee address using VARCHAR datatype up to 255 characters
    line2 varchar(255),				# line2 = Stores the second line of the employees address using VARCHAR datatype up to 255 characters
    line3 varchar(255),				# line3 = Stores the third line of the employees address using VARCHAR datatype up to 255 characters
    county varchar(9),				# county = Stores the county of the employees using VARCHAR datatype up to 9 characters
    eirCode varchar(8),				# eirCode = Stores the eir code of the employees using VARCHAR datatype up to 7 characters
    PRIMARY KEY (addressID)			# Sets the PRIMARY KEY of the address table as, "addressID"
);

# Table created by Jordan [x19372016]
CREATE TABLE tax (					# Creates the table for the Tax 
	empTaxID varchar(4),			# empTaxID = Stores the tax identification of the employees using VARCHAR datatype up to 4 characters
    PRSI decimal(6,2),				# PRSI = Stores the PRSI of the employees using DECIMAL datatype up to 6 and 2
    USC decimal(6,2),				# USC = Stores the USC of the employees using DECIMAL datatype up to 6 and 2
    PAYELower decimal(6,2),			# PAYElower = Stores the PAYElower of the employees using DECIMAL datatype up to 6 and 2
    PAYEHigher decimal(6,2),		# PAYEhigher = Stores the PAYEhigher of the employees using DECIMAL datatype up to 6 and 2
    PRIMARY KEY (empTaxID)			# Sets the PRIMARY KEY of the tax table as, "empTaxID"
);

# Table created by Renato [x19411076] & Jordan [x19372016] 
CREATE TABLE employee (												# Creates the table for the Farms [This tables stores information relating to Agriculture]
	employeeID int NOT NULL AUTO_INCREMENT,							# employeeID = Stores the phone number for each employee using the INT datatype
    firstName varchar(255),											# firstName = Stores the first name for each employee using the VARCHAR datatype up to 255 characters
    lastName varchar(255),											# lastName = Stores the last name for each employee using the VARCHAR datatype up to 255 characters
    addressID varchar(4),											# addressID = Stores the address identification for each employee using the VARCHAR datatype up to 4 characters
    branchID varchar(4),											# branchID = Stores the branch indentification for each employee using the VARCHAR datatype up to 4 characters
    empTaxID varchar(4),											# empTaxID = Stores the employee tax identification for each employee using the VARCHAR datatype up to 4 characters
    role varchar(255),												# role = Stores the role for each employee using the VARCHAR datatype up to 255 characters
    phoneNo int,													# phoneNo = Stores the phone number for each department using the INT datatype
    email varchar(255),												# email = Store the email address of the employees using VARCHAR datatype up to 255 characters
    DOB date,														# DOB = Stores the date of birth for each employee using the DATE datatype
    PRIMARY KEY (employeeID),										# Sets the PRIMARY KEY of the employee table as, "employeeID"
    UNIQUE (empTaxID),												# Sets the UNIQUE KEY of the employee table as, "empTaxID"
    FOREIGN KEY (addressID) REFERENCES address (addressID)			# Sets the FOREIGN KEY of the employee table as, "addressID" and references the PRIMARY KEY from the address table
);

# Table created by Renato [x19411076]
CREATE TABLE finance (
    employeeID int NOT NULL,										# phoneNo = Stores the phone number for each department using the INT datatype
    branchID varchar(4) NOT NULL,									# Stores the identification of the branches using VARCHAR datatype up to 4 characters
    UNIQUE (employeeID,branchID),									# Sets the UNIQUE KEY of the finance table as, "employeeID" and "branchID"
    FOREIGN KEY (employeeID) REFERENCES employee (employeeID),		# Sets the FOREIGN KEY of the finance table as, "employeeID" and references the PRIMARY KEY table employee
    FOREIGN KEY (branchID) REFERENCES branch (branchID)				# Sets the 2nd FOREIGN KEY of the finance table as, "branchID" and references the PRIMARY KEY table branch
);

# Table created by Jordan [x19372016]
CREATE TABLE agriculture (											# Creates the table for Agriculture
	employeeID int NOT NULL,										# employeeID = Stores the identification of the employees using INT datatype
    farmID varchar(4) NOT NULL,										# farmID = Stores the identification of the farms using VARCHAR datatype up to 4 characters
    UNIQUE (employeeID,farmID),										# Sets the UNIQUE KEY of the agriculture table as, "employeeID" and "branchID"
    FOREIGN KEY (employeeID) REFERENCES employee (employeeID),		# Sets the FOREIGN KEY of the agriculture table as, "employeeID" and references the PRIMARY KEY from the employee table
    FOREIGN KEY (farmID) REFERENCES farm (farmID)					# Sets the 2nd FOREIGN KEY of the agriculture table as, "farmID" and references the PRIMARY KEY from the farm table
);

# Table created by Renato [x19411076]
CREATE TABLE absence (												# Creates the table for Absence
	employeeID int NOT NULL,										# employeeID = Store the identification of the employees using INT datatype
    paidLeaveTaken int,												# paidLeaveToken = Store the token of the employees paid leaves using INT datatype
    paidLeaveAvailable int,											# paidLeaveAvilable = Store the avilable leaves of the employees using INT datatype
	unpaidLeaveTaken int,											# unpaidLeaveTaken = Store the unpaid leaves taken by the employees using INT datatype
	DaysAbsent int PRIMARY KEY										# Sets the PRIMARY KEY of the absence table as, "DaysAbsent"
);

# Table created by Renato [x19411076]
CREATE TABLE time (													# Creates the table for the time employees work 
	employeeID int NOT NULL,										# employeeID = Store the identification of the employees using INT datatype
    hoursWorked decimal(6,2),										# hoursWorked = Stores the hoursWorked of the employees using DECIMAL datatype up to 4 and 2
    startDate date,													# startDate = Store the startDate of the employees using DATE datatype
    endDate date,													# endDate = Store the endDate of the employees using DATE datatype
	daysAbsent int,													# daysAbsent = Store the days of the employees which were absent using INT datatype
	FOREIGN KEY (daysAbsent) REFERENCES absence (DaysAbsent)		# Sets the FOREIGN KEY of the time table as, "daysAbsent" and references the PRIMARY KEY from the Absence table
);

# Table created by Jordan [x19372016]
CREATE TABLE pay (													# Creates the table for the pay relating to employees
	employeeID int,													# employeeID = Store the identification of the employees using INT datatype
    salary decimal(7,2),											# salary = Store the salary of the employees using DECIMAL dataype up to 7 and 2
    hourlyRate decimal(4,2),										# hourlyRate = Stores the hourlyRate of the employees using DECIMAL datatype up to 4 and 2
    lastChange date,												# lastChange = Store the lastChange of the employees using DATE datatype
    overtime decimal(6,2),											# USC = Stores the overtime of the employees using DECIMAL datatype up to 6 and 2
    bonus decimal(5,2),												# bonus = Stores the bonus of the employees using DECIMAL datatype up to 5 and 2
    empTaxID varchar(4),											# empTaxID = Store the tax identification of the employees using VARCHAR datatype up to 4 characters
    FOREIGN KEY (employeeID) REFERENCES employee (employeeID),		# Sets the FOREIGN KEY of the pay table as, "employeeID" and references the PRIMARY KEY from the employee table
    FOREIGN KEY (empTaxID) REFERENCES tax (empTaxID)				# Sets the 2nd FOREIGN KEY of the oay table as, "empTaxID" and references the PRIMARY KEY from the tax table
);