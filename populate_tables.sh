#!/bin/sh
#export LD_LIBRARY_PATH=~/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port =1521))(CONNECT_DATA=(SID=orcl)))"<<EOF
INSERT INTO Product(Type, Stock, Discount) VALUES('Movies', 60, 3);

INSERT INTO Product(Type, Stock, Discount) VALUES('Songs', 45, 5);

INSERT INTO Product(Type, Stock, Discount) VALUES('Albums', 37, 2);

INSERT INTO Product(Type, Stock, Discount) VALUES('TvShows', 29, 8);

INSERT INTO Movies(Title, Director, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Jaws', 'Steven Spielberg', 'Richard D. Zanuck', 1975, 'Thriller', '2h4m', 14.99);

INSERT INTO Movies(Title, Director, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Us', 'Jordan Peele', 'Jordan Peele', 2019, 'Horror', '2h1m', 16.99);

INSERT INTO Movies(Title, Director, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Doctor Strange', 'Scott Derrickson', 'Kevin Feige', 2016, 'Action', '1h55m', 24.99);

INSERT INTO Movies(Title, Director, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Soul', 'Pete Docter', 'Dana Leigh Murray', 2020, 'Family', '1h40m', 24.99);

INSERT INTO Movies(Title, Director, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Back to The Future', 'Robert Zemeckis', 'Bob Gale', 1985, 'Sci-fi', '1h56m', 8.99);

INSERT INTO Movies(Title, Director, Producer, ReleaseYear, Genre, Length, Price) VALUES ('American Psycho', 'Marry Harron', 'Joseph Drake', 2000, 'Thriller', '1h44m', 11.99)

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Stairway To Heaven', 'Led Zeppelin', 'Jimmy Page', 1971, 'Hard Rock', '7:55', 2.99);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('September', 'Earth, Wind And Fire', 'Maurice White', 1978, 'Disco', '3:55', 1.99);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('All By Myself', 'Celine Dion', 'David Foster', 1996, 'RNB', '5:13', 1);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Lose Yourself', 'Eminem', 'Jeff Bass', 2002, 'Rap', '5:21', 0.99);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('LOVE.', 'Kendrick Lamar', 'Teddy Walton', 2017, 'Rap', '3:34', 1.49);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Tell On Me', 'Duwap Kaine', 'Pierre Bourne', 2017, 'Rap', '2:06', 1.99);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('DNA.', 'Kendrick Lamar', 'Mike Will Made It', 2017, 'Rap', '3:06', 1.49);

INSERT INTO Songs(Title, Artist, Producer, ReleaseYear, Genre, Length, Price) VALUES ('Good Days', 'SZA', 'Solana Rowe', 2020, 'RNB', '4:39', 1.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('Die Lit', 'Playboi Carti', 'Rap', 2018, 19, '57:39', 6.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('DAMN.', 'Kendrick Lamar', 'Rap', 2017, 14, '54:54', 5.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('Blonde', 'Frank Ocean', 'RNB', 2016, 17, '60:08', 6.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('Who Cares?', 'Rex Orange County', 'Pop', 2022, 11, '34:51', 4.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('Ctrl', 'SZA', 'RNB', 2017, 14, '49:01', 7.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('Making Mirrors', 'Gotye', 'Pop', 2011, 13, '42:21', 4.99);

INSERT INTO Albums(Title, Artist, Genre, ReleaseYear, Tracks, Length, Price) VALUES ('To Pimp A Butterfly', 'Kendrick Lamar', 'Rap', 2015, 16, '78:51', 7.99);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price)
VALUES ('Spongebob Squarepants', 2, 'Stephen Hillenburg', 2003, 'Comedy', 20, 9.99);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price)
VALUES ('Squid Game', 1, 'Hwang Dong-hyuk, Ji-yeon Kim', 2021, 'Thriller', 9, 12.99);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price) VALUES ('Twin Peaks', 3, 'David Lynch', 1990, 'Mystery', 48, 19.99);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price) VALUES ('Atlanta', 4, 'Donald Glover', 2016, 'Comedy', 38, 22.49);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price) VALUES ('Black Mirror', 5, 'Charlie Brooker', 2011, 'Sci-fi', 22, 25);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price) VALUES ('The Haunting of Hill House', 1, 'Mike Flanagan', 2018, 'Horror', 10, 12.99);

INSERT INTO TvShows(Title, Season, Producer, ReleaseYear, Genre, Episodes, Price)
VALUES ('The Queens Gambit', 1, 'Scott Frank', 2020, 'Drama', 7, 15.99);

INSERT INTO Customers(Email, Name, Points, Street, PostalCode, Status)
VALUES ('john.doe@gmail.com', 'John Doe', 13, '500 Sherbourne St', 'M4X 1L1', 'Member');

INSERT INTO Customers(Email, Name, Points, Street, PostalCode, Status)
VALUES ('olivias@hotmail.com', 'Olivia Smith', 64, '7 Hogan Dr', 'M1G 2H1', 'Member');

INSERT INTO Customers(Email, Name, Points, Street, PostalCode, Status)
VALUES ('jperez@gmail.com', 'Juan Perez', 20, '135 Markham St', 'M6J 2G4', 'Pending');

INSERT INTO Customers(Email, Name, Points, Street, PostalCode, Status)
VALUES ('lilywang12@yahoo.com', 'Lily Wang', 37, '87 Bogert Ave', 'M2N 1K5', 'Canceled'); 

INSERT INTO Cities(PostalCode, City) VALUES ('M4X 1L1', 'Toronto');

INSERT INTO Cities(PostalCode, City) VALUES ('M1G 2H1', 'Scarborough');

INSERT INTO Cities(PostalCode, City) VALUES ('M6J 2G4', 'Toronto');

INSERT INTO Cities(PostalCode, City) VALUES ('M2N 1K5', 'North York');

INSERT INTO Employees(EmployeeID, Name, Position, ManagerID) VALUES (1, 'Shelby Jones', 'Designer', 2);

INSERT INTO Employees(EmployeeID, Name, Position, ManagerID) VALUES (2, 'Christopher Penaldus', 'Security', 2);

INSERT INTO Employees(EmployeeID, Name, Position, ManagerID) VALUES (3, 'Renato Sanches', 'Designer', 3);

INSERT INTO Employees(EmployeeID, Name, Position, ManagerID) VALUES (4, 'Shelby Jones', 'Maintenance', 1);

INSERT INTO Managers(ManagerID, Name, Department) VALUES (1, 'Joao Mario', 'Songs');

INSERT INTO Managers(ManagerID, Name, Department) VALUES (2, 'Fernando Santos', 'Movies');

INSERT INTO Managers(ManagerID, Name, Department) VALUES (3, 'Roger Schmidt', 'Albums');
EOF