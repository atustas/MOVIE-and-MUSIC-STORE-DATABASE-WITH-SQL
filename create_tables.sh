#!/bin/sh
#export LD_LIBRARY_PATH=~/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port =1521))(CONNECT_DATA=(SID=orcl)))"<<EOF
CREATE TABLE Product (
       Type VARCHAR(10) PRIMARY KEY,
       Stock NUMBER,
       Discount NUMBER);

CREATE TABLE Movies (
Title VARCHAR(30) PRIMARY KEY,    
Director VARCHAR(20),
Producer VARCHAR(30),
ReleaseYear NUMBER,
Genre VARCHAR(15),
Length VARCHAR(10),
Price NUMBER
);

CREATE TABLE Songs (
    Title VARCHAR(30) PRIMARY KEY,
    Artist VARCHAR(30),
    Producer VARCHAR(30),
    ReleaseYear NUMBER,
    Genre VARCHAR(15),
    Length VARCHAR(10),
    Price NUMBER
);

CREATE TABLE Albums (
    Title VARCHAR(30) PRIMARY KEY,
    Artist VARCHAR(20),
    Genre VARCHAR(15),
    ReleaseYear NUMBER,
    Tracks NUMBER,
    Length VARCHAR(10),
    Price NUMBER
);

CREATE TABLE TvShows (
    Title VARCHAR(30) PRIMARY KEY,
    Season NUMBER,
    Producer VARCHAR(30),
    ReleaseYear NUMBER,
    Genre VARCHAR(15),
    Episodes NUMBER,
    Price NUMBER
);

CREATE TABLE Customers (
    Email VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50),
    Points NUMBER,
    Street VARCHAR(30),
    PostalCode VARCHAR(7),
    Status VARCHAR(15)
);

CREATE TABLE Cities (
    PostalCode VARCHAR(7) PRIMARY KEY,
    City VARCHAR(15)
);

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR(40),
    Position VARCHAR(20),
    ManagerID NUMBER
);

CREATE TABLE Managers (
    ManagerID NUMBER PRIMARY KEY,
    Name VARCHAR(40),
    Department VARCHAR(15)
);
exit;
EOF