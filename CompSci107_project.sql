
-- create a table 1
CREATE TABLE Client (
  ClientID INTEGER PRIMARY KEY,
  ClientFirstName TEXT NOT NULL,
  ClientLastName TEXT NOT NULL,
  ClientDOB DATE NOT NULL,
  Occupation TEXT NOT NULL
);

-- create a table 2
CREATE TABLE Author (
  AuthorID INTEGER PRIMARY KEY,
  AuthorFirstName TEXT NOT NULL,
  AuthorLastName TEXT NOT NULL,
  AuthorNationality TEXT NOT NULL
);


-- create a table 3
CREATE TABLE Book (
  BookID INTEGER PRIMARY KEY,
  BookTitle TEXT NOT NULL,
  AuthorID INTEGER,
  Genre TEXT NOT NULL,
  FOREIGN KEY (AuthorID) REFERENCES AUTHOR(AuthorID)
);


-- create a table 4
CREATE TABLE Borrower (
  BorrowID INTEGER PRIMARY KEY,
  ClientID INTEGER,
  BookID INTEGER,
  BorrowDate DATE NOT NULL,
  FOREIGN KEY (ClientID) REFERENCES CLIENT(ClientID),
  FOREIGN KEY (BookID) REFERENCES BOOK(BookID)
);

-- insert into client table 1
INSERT INTO Client VALUES (1, 'Clark', 'Kent', '1995-11-11', 'Hero');
INSERT INTO Client VALUES (2, 'Dave', 'Mulry', '2000-01-01', 'Lawyer');
INSERT INTO Client VALUES (3, 'Ava', 'Long', '2008-08-08', 'Runner');

-- insert into Author table 2
INSERT INTO Author VALUES (1, 'Gerard', 'Reaver', 'Newyorkian');
INSERT INTO Author VALUES (2, 'Isaac', 'Boyd', 'Newyorkian');

-- insert into Book table 3
INSERT INTO Book VALUES (1, 'The Great Gatsby', 1, 'Thriller');
INSERT INTO Book VALUES (2, 'The Gangsta', 2, 'Suspense');

-- insert into borrower table 4
INSERT INTO Borrower VALUES (1, 1, 1, '2023-01-01');
INSERT INTO Borrower VALUES (2, 1, 2, '2023-02-02');

-- insert more infomation into table 1
INSERT INTO Client
VALUES (4, 'Michael', 'Benfield', '1994-08-08', 'Pilot');

-- Query
SELECT *
FROM Client ;
