#!/bin/sh
#export LD_LIBRARY_PATH=~/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port =1521))(CONNECT_DATA=(SID=orcl)))"<<EOF

set linesize 256

SELECT * FROM Product ORDER BY Type;

SELECT Name, Points, Email, Street, PostalCode FROM Customers ORDER BY Name;

SELECT * FROM Movies ORDER BY Title;

SELECT * FROM TvShows ORDER BY Title;

SELECT * FROM Songs ORDER BY Title;

SELECT * FROM Albums ORDER BY Title;

SELECT * FROM Cities;

SELECT * FROM Employees;

SELECT * FROM Managers;
exit;
EOF
