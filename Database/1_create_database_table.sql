
DROP DATABASE IF EXISTS Ebay_Clone
GO

CREATE DATABASE Ebay_Clone
GO
/*
DROP TABLE Account
DROP TABLE Product
DROP TABLE [Order]
DROP TABLE OrderDetail
DROP TABLE Feedback
DROP TABLE Categories
DROP TABLE Products_To_Categories
DROP TABLE Cart
DROP TABLE CartDetail
*/
-- Create Account table
CREATE TABLE Account (
    Username NVARCHAR(50) PRIMARY KEY,
    [Password] NVARCHAR(255) NOT NULL,
    Fullname NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE NOT NULL,
    [Role] NVARCHAR(10) CHECK (Role IN ('user', 'admin')) DEFAULT 'user',
    [Status] BIT NOT NULL DEFAULT 1,
	Avatar NVARCHAR(255)
);
GO

-- Create Product table
CREATE TABLE Product (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    Price FLOAT NOT NULL, 
    Quantity INT NOT NULL,
	[Image] VARCHAR(255) NOT NULL
);
GO

-- Create Order table
CREATE TABLE [Order] (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Total FLOAT NOT NULL,
    Buyer NVARCHAR(50) FOREIGN KEY REFERENCES Account(Username),
    Seller NVARCHAR(50) FOREIGN KEY REFERENCES Account(Username),
    [Status] NVARCHAR(20) NOT NULL
);
GO

-- Create OrderDetail table
CREATE TABLE OrderDetail (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Product INT FOREIGN KEY REFERENCES Product(ID),
    ID_Order INT FOREIGN KEY REFERENCES [Order](ID),
    Quantity INT NOT NULL
);
GO

-- Create Feedback table
CREATE TABLE Feedback (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Content NVARCHAR(MAX) NOT NULL,
    [Type] NVARCHAR(10) CHECK (Type IN ('positive', 'negative')),
    [Status] BIT NOT NULL DEFAULT 1,
	Buyer NVARCHAR(50) FOREIGN KEY REFERENCES Account(Username),
    Seller NVARCHAR(50) FOREIGN KEY REFERENCES Account(Username)
);
GO

-- Create Categories table
CREATE TABLE Categories (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL
);
GO

-- Create Products_To_Categories table
CREATE TABLE Products_To_Categories (
    ID_Product INT FOREIGN KEY REFERENCES Product(ID),
    ID_Categories INT FOREIGN KEY REFERENCES Categories(ID),
    PRIMARY KEY (ID_Product, ID_Categories)
);
GO

-- Create Cart table
CREATE TABLE Cart (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Account NVARCHAR(50) FOREIGN KEY REFERENCES Account(Username)
);
GO

-- Create CartDetail table
CREATE TABLE CartDetail (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Cart INT FOREIGN KEY REFERENCES Cart(ID),
    ID_Product INT FOREIGN KEY REFERENCES Product(ID),
    Quantity INT NOT NULL
);
GO
