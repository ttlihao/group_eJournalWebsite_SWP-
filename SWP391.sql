-- Create the SWP391 database
CREATE DATABASE SWP391;
USE SWP391;

-- Create the Role table
CREATE TABLE Role (
    RoleID INT NOT NULL PRIMARY KEY,
    RoleName VARCHAR(50)
);

-- Create the UserAccount table
CREATE TABLE UserAccount (
    UserID nvarchar(50) NOT NULL PRIMARY KEY,
    FullName nVARCHAR(255),
    Address nVARCHAR(255),
    Phone VARCHAR(15),
    UserName VARCHAR(50),
    Password VARCHAR(50),
    Email VARCHAR(100),
    Birth DATE,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
);


-- Create the Publication table
CREATE TABLE Publication(
    PublicationID nvarchar (50) NOT NULL,
    UserID nvarchar(50) NOT NULL,
    Title nvarchar(100),
    Overview nvarchar(500),
    ReleaseDate date,
    Category nvarchar(50),
	IsOpenAccess bit,
	Price float,
	CoverPage nvarchar,
    CONSTRAINT pk_Publication PRIMARY KEY (PublicationID),
    CONSTRAINT fk_Publication_User FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);


-- Create the Orders table
CREATE TABLE Orders (
    OrderID nvarchar(50) NOT NULL PRIMARY KEY,
    PublicationID nvarchar (50) NOT NULL,
    UserID nvarchar(50) NOT NULL,
    OrderDate DATE,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (PublicationID) REFERENCES Publication(PublicationID),
    FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);


-- Create the Comment table
CREATE TABLE Comment(
	UserID nvarchar(50) NOT NULL,
	CommentID nvarchar (50) NOT NULL PRIMARY KEY,
	PublicationID nvarchar (50) NOT NULL,
	FOREIGN KEY(PublicationID) REFERENCES Publication(PublicationID),
	FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);

-- Create the Submission table
CREATE TABLE Submission(
	PublicationID nvarchar (50) NOT NULL,
	UserID nvarchar(50) NOT NULL,
	isApproved bit,
	Stage int,
	CONSTRAINT pk_Submission PRIMARY KEY (PublicationID, UserID),
	FOREIGN KEY (PublicationID) REFERENCES Publication(PublicationID),
	FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);










use master;
drop database SWP391;

