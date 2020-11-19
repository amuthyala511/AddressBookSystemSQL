CREATE DATABASE AddressBookSystem;
SHOW DATABASES;
CREATE TABLE contacts
( FirstName VARCHAR(50) NOT NULL PRIMARY KEY,
LastName VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
Zip INT(30) NOT NULL,
PhoneNumber INT(30) NOT NULL,
Email VARCHAR(50) NOT NULL );
SHOW TABLES;
INSERT INTO contacts ( FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email ) VALUES
( 'Aish', 'Reddy', 'PeaceVilla', 'KNR', 'TG', 505001, 9087654321, 'aish@gmail.com' ),
( 'Panu', 'Muthyala', 'SCHomes', 'HYD', 'TG', 505468, 9876543210, 'panu@gmail.com' ),
( 'Shiv', 'Kumar', 'MCHS', 'Bangalore', 'KA', 560076, 7689054321, 'shiv@yahoo.com' ),
( 'Vishal', 'Chander', 'Perambur', 'Chennai', 'TN', 600011, 7098654321, 'chan@gmail.com' );
UPDATE contacts SET Zip = 500049 WHERE FirstName = 'Panu';
DELETE FROM contacts WHERE FirstName = 'Shiv';
SELECT * FROM contacts WHERE City = 'Chennai';
SELECT COUNT(*) FROM contacts WHERE State = 'TG';
SELECT	* FROM contacts WHERE City = 'KNR' ORDER BY FirstName ASC;
ALTER TABLE contacts ADD AddressBookName VARCHAR(50);
ALTER TABLE contacts ADD AddressBookType VARCHAR(50);	
UPDATE contacts SET AddressBookName = 'FamilyBook' WHERE FirstName = 'Aish';
UPDATE contacts SET AddressBookType = 'Family' WHERE FirstName = 'Aish';
UPDATE contacts SET AddressBookName = 'FriendsBook' WHERE FirstName = 'Vishal';
UPDATE contacts SET AddressBookType = 'Friend' WHERE FirstName = 'Vishal';
SELECT COUNT(*) FROM contacts WHERE addressBookType = 'Family';
CREATE TABLE Friend
( FirstName VARCHAR(50) NOT NULL PRIMARY KEY,
LastName VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
Zip INT(30) NOT NULL,
PhoneNumber INT(30) NOT NULL,
Email VARCHAR(50) NOT NULL );
SHOW TABLES;
CREATE TABLE Family
( FirstName VARCHAR(50) NOT NULL PRIMARY KEY,
LastName VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
Zip INT(30) NOT NULL,
PhoneNumber INT(30) NOT NULL,
Email VARCHAR(50) NOT NULL );										
SHOW TABLES;
INSERT INTO Family(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
('Raji', 'Anji', 'BSPT', 'UTNR', 'TG', '501069', '919912349876', 'raji@gmail.com'),
('Rama', 'Devi', 'Barad','Nanded', 'MH', '503401', '9543216780', 'rama@gmail.com');	
    
INSERT INTO Friend(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
('Abhi', 'Ram', 'Mylapore', 'Chennai', 'TN', '600039', '919912345678', 'abhi@gmail.com'),
('Pranay', 'Reddy', 'Begur', 'Mysore', 'KA', '560068', '8790654321', 'pranay@gmail.com');
UPDATE contacts SET AddressBookName = 'FamilyBook' WHERE FirstName = 'Aish';
UPDATE contacts SET AddressBookName = 'FriendsBook' WHERE FirstName = 'Vishal';