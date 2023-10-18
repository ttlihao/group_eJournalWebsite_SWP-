-- Create the SWP391 database
CREATE DATABASE SWP391;
USE SWP391;

-- drop the SWP391 database 
use master;
drop database SWP391;

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
	isApproved bit,
    CONSTRAINT pk_Publication PRIMARY KEY (PublicationID),
    CONSTRAINT fk_Publication_User FOREIGN KEY (UserID) REFERENCES UserAccount(UserID),

	CONSTRAINT fk_Publication_Submission FOREIGN KEY (isApproved) REFERENCES Submission(isApproved)
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








---------------------------------------
-- added data set


-- Insert roles into the Role table
INSERT INTO Role (RoleID, RoleName) VALUES
(1, 'Author'),
(2, 'Customer'),
(3, 'Editor'),
(4, 'Reviewer');

-- Create a table of random values
DECLARE @randomStuff TABLE (
    [id] INT,
    [val] VARCHAR(100)
);

-- Insert some random values into the table
INSERT INTO @randomStuff ([id], [val])
VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'David'), (5, 'Eve');

-- Declare a counter variable
DECLARE @cnt INT = 1;

-- Loop until 1000 rows are inserted
WHILE @cnt <= 100
BEGIN
    -- Insert a row into UserAccount with random values
    INSERT INTO UserAccount (
        UserID,
        FullName,
        Address,
        Phone,
        UserName,
        Password,
        Email,
        Birth,
        RoleID
    )
    SELECT
        -- Generate a random UserID with 10 characters
        SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 10) AS UserID,
        -- Select a random FullName from @randomStuff
        (SELECT TOP 1 [val] FROM @randomStuff ORDER BY NEWID()) AS FullName,
        -- Generate a random Address with 20 characters
        SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 20) AS Address,
        -- Generate a random Phone number with 10 digits
        CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)) AS Phone,
        -- Generate a random UserName with 8 characters
        SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8) AS UserName,
        -- Generate a random Password with 8 characters
        SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8) AS Password,
        -- Generate a random Email with the format UserName@domain.com
        SUBSTRING(CONVERT(VARCHAR(36), NEWID()), 1, 8) + '@gmail' + 
        '.com' AS Email,
        -- Generate a random Birth date between 1970-01-01 and 2020-12-31
        DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 18628, '1970-01-01') AS Birth,
        -- Select a random RoleID from 1 to 4
        ABS(CHECKSUM(NEWID())) % 4 + 1 AS RoleID;

    -- Increment the counter variable
    SET @cnt = @cnt + 1;
END;


-- Delete data
Select * from UserAccount
Delete from UserAccount






















---------------------------------------















use master;
drop database SWP391;

