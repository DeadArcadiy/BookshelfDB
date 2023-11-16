CREATE DATABASE IF NOT EXISTS Bookshelfdb;
USE Bookshelfdb;

CREATE TABLE Countries (
    CountryID INT PRIMARY KEY,
    Name TEXT
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    Name TEXT
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    FullName TEXT,
    DateOfBirth DATE,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title TEXT,
    AuthorID INT,
    PublicationYear DATE,
    ReaderRating FLOAT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE AuthorGenres (
    AuthorID INT,
    GenreID INT,
    PRIMARY KEY (AuthorID, GenreID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
