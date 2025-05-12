-- Step 1: Create the Database
CREATE DATABASE PropertyManagementDB;
USE PropertyManagementDB;

-- Step 2: Create the Landlord table
CREATE TABLE Landlord (
    LandlordID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE
);

-- Step 3: Create the Property table
CREATE TABLE Property (
    PropertyID INT AUTO_INCREMENT PRIMARY KEY,
    LandlordID INT NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    RentAmount DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(50) DEFAULT 'Available',
    FOREIGN KEY (LandlordID) REFERENCES Landlord(LandlordID) ON DELETE CASCADE
);

-- Step 4: Create the Tenant table
CREATE TABLE Tenant (
    TenantID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    PropertyID INT,
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID) ON DELETE SET NULL
);

-- Step 5: Create the Lease Agreement table
CREATE TABLE LeaseAgreement (
    LeaseID INT AUTO_INCREMENT PRIMARY KEY,
    TenantID INT NOT NULL,
    PropertyID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Active',
    FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID) ON DELETE CASCADE,
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID) ON DELETE CASCADE
);

-- Step 6: Create the Payment table
CREATE TABLE Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    TenantID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Date DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID) ON DELETE CASCADE
);

-- Step 7: Create the Maintenance Request table
CREATE TABLE MaintenanceRequest (
    RequestID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT NOT NULL,
    Description TEXT NOT NULL,
    DateReported DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID) ON DELETE CASCADE
);
