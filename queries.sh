#!/bin/sh
#export LD_LIBRARY_PATH=~/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port =1521))(CONNECT_DATA=(SID=orcl)))"<<EOF

set linesize 256

-- List all Sci-fi and Thriller movies that are between 5 and 15 dollars

SELECT Title, Genre, Price
FROM Movies
WHERE (Price BETWEEN 5 and 15) 
AND (Genre = 'Sci-fi' OR Genre = 'Thriller');

-- Count the number of albums of all genres except for Pop

SELECT Albums.Genre, COUNT(*) AS Amount
FROM Albums
WHERE Albums.Genre <> 'Pop'
GROUP BY Albums.Genre;

SELECT MIN(Price), MAX(Price), AVG(Price)
From Movies;

SELECT Title, Artist
FROM Songs
WHERE EXISTS (SELECT Title FROM Albums WHERE Albums.Artist = Songs.Artist);

SELECT Title, Genre, Price FROM Movies
WHERE Genre = 'Sci-fi'
UNION
SELECT Title, Genre, Price FROM TvShows
WHERE Genre = 'Sci-fi'
ORDER BY Price;

CREATE VIEW HorrorMovies AS
(SELECT *
FROM Movies
WHERE ReleaseYear BETWEEN 2010 AND 2019
AND Genre = 'Horror');

CREATE VIEW TorontoCustomers10Points(CustomerName, CustomerPoints) AS
(SELECT Name, Points 
FROM Customers
WHERE Points >= 10);

CREATE VIEW CheapTVShows AS
(SELECT Title,ReleaseYear, Price
FROM TvShows
WHERE Price <= 10
AND ReleaseYear > 2000);

-- Lists the average release year of song genres that are above the average release year by genre.
SELECT Genre, AVG(ReleaseYear)
FROM Songs
GROUP BY Genre
HAVING AVG(ReleaseYear) > (SELECT AVG(ReleaseYear) FROM Songs);
EOF