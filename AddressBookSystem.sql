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