
DROP DATABASE IF EXISTS Ebay_Clone
GO

CREATE DATABASE Ebay_Clone
GO

USE Ebay_Clone
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
CREATE TABLE Accounts (
    Username NVARCHAR(50) PRIMARY KEY,
    [Password] NVARCHAR(255) NOT NULL,
    Fullname NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE NOT NULL,
    [Role] NVARCHAR(10) CHECK (Role IN ('user', 'admin')) DEFAULT 'user',
    [Status] BIT NOT NULL DEFAULT 1,
	Avatar NVARCHAR(255)
);
GO

-- Create Categories table
CREATE TABLE Categories (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL
);
GO

-- Create Product table
CREATE TABLE Products (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    Price FLOAT NOT NULL, 
    Quantity INT NOT NULL,
    [Image] VARCHAR(255) NOT NULL,
	CategoryID INT FOREIGN KEY REFERENCES Categories(ID),
    Seller NVARCHAR(50) FOREIGN KEY REFERENCES Accounts(Username)
);
GO


-- Create Order table
CREATE TABLE [Orders] (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Total FLOAT NOT NULL,
    Buyer NVARCHAR(50) FOREIGN KEY REFERENCES Accounts(Username),
    Seller NVARCHAR(50) FOREIGN KEY REFERENCES Accounts(Username),
    [Status] NVARCHAR(20) DEFAULT 'Pending'
);
GO

-- Create OrderDetail table
CREATE TABLE OrderDetail (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Product INT FOREIGN KEY REFERENCES Products(ID),
    ID_Order INT FOREIGN KEY REFERENCES [Orders](ID),
    Quantity INT NOT NULL
);
GO

-- Create Feedback table
CREATE TABLE Feedbacks (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Content NVARCHAR(MAX) NOT NULL,
    [Type] NVARCHAR(10) CHECK (Type IN ('positive', 'negative')),
	Buyer NVARCHAR(50) FOREIGN KEY REFERENCES Accounts(Username),
    Seller NVARCHAR(50) FOREIGN KEY REFERENCES Accounts(Username)
);
GO

-- Create Cart table
CREATE TABLE Carts (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Account NVARCHAR(50) FOREIGN KEY REFERENCES Accounts(Username)
);
GO

-- Create CartDetail table
CREATE TABLE CartDetail (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Cart INT FOREIGN KEY REFERENCES Carts(ID),
    ID_Product INT FOREIGN KEY REFERENCES Products(ID),
    Quantity INT NOT NULL
);
GO
