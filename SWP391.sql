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
	CoverPage varbinary(max),
	isApproved bit,
	files varbinary(max),
    CONSTRAINT pk_Publication PRIMARY KEY (PublicationID),
    CONSTRAINT fk_Publication_User FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);


-- Create the Orders table
CREATE TABLE Orders (
    OrderID nvarchar(50) NOT NULL PRIMARY KEY,
    UserID nvarchar(50) NOT NULL,
    OrderDate DATE,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);
CREATE TABLE OrderDetail (
    OrderID nvarchar(50) NOT NULL,
    PublicationID nvarchar(50) NOT NULL,
    Quantity int NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (OrderID,PublicationID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (PublicationID) REFERENCES Publication(PublicationID)
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

INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('1', '0FDAFCE8-8', 'Title 1', 'Overview 1', '2023-01-01', 'Category 1', 1, 10.0, NULL, 1, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('2', '0FDAFCE8-8', 'Title 2', 'Overview 2', '2023-02-01', 'Category 2', 0, 20.0, NULL, 0, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('3', '0FDAFCE8-8', 'Title 3', 'Overview 3', '2023-03-01', 'Category 3', 1, 30.0, NULL, 1, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('4', '0FDAFCE8-8', 'Title 4', 'Overview 4', '2023-04-01', 'Category 4', 0, 40.0, NULL, 0, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('5', '0FDAFCE8-8', 'Title 5', 'Overview 5', '2023-05-01', 'Category 5', 1, 50.0, NULL, 1, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('6', '0FDAFCE8-8', 'Title 6', 'Overview 6', '2023-06-01', 'Category 6', 0, 60.0, NULL, 0, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('7', '0FDAFCE8-8', 'Title 7', 'Overview 7', '2023-07-01', 'Category 7', 1, 70.0, NULL, 1, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('8', '0FDAFCE8-8', 'Title 8', 'Overview 8', '2023-08-01', 'Category 8', 0, 80.0, NULL, 0, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('9', '0FDAFCE8-8', 'Title 9', 'Overview 9', '2023-09-01', 'Category 9', 1, 90.0, NULL, 1, NULL);
INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES ('10', '0FDAFCE8-8', 'Title 10', 'Overview 10', '2023-10-01', 'Category 10', 0, 100.0, NULL, 0, NULL);





















---------------------------------------















use master;
drop database SWP391;

