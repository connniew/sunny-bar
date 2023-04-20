-- create tables
CREATE TABLE Customer (
  	customerID INT AUTO_INCREMENT, 
	firstName VARCHAR(255),
  	lastName VARCHAR(255),
  	email VARCHAR(255),
  	address VARCHAR(255),
    province VARCHAR(100) DEFAULT 'Ontario' CHECK (province IN ('Alberta', 'British Columbia', 'Manitoba', 'New Brunswick', 'Newfoundland and Labrador', 'Northwest Territories', 'Nova Scotia', 'Nunavut', 'Ontario', 'Prince Edward Island', 'Quebec', 'Saskatchewan', 'Yukon')),
    city VARCHAR(100),
    country VARCHAR(6) DEFAULT 'Canada',
    postalCode VARCHAR(7),
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
  	PRIMARY KEY (customerID, email)
);
ALTER TABLE Customer AUTO_INCREMENT=10;

CREATE TABLE Product (
  	productID INT AUTO_INCREMENT, 
	name VARCHAR(255) UNIQUE,
   	price DECIMAL(10,2),
    qtyInStock INT DEFAULT 0,
  	PRIMARY KEY (productID)
);
ALTER TABLE Product AUTO_INCREMENT=200;

CREATE TABLE Orders (
  	orderID INT AUTO_INCREMENT, 
	customerID INT,
   	orderTotal DECIMAL(10,2),
	dateOrdered DATE DEFAULT CURRENT_DATE(),
    dateReceived DATE,
  	PRIMARY KEY (orderID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID) ON DELETE CASCADE
);
ALTER TABLE Orders AUTO_INCREMENT=8000;

CREATE TABLE OrderProducts (
    orderID INT,
  	productID INT, 
    qtyOrdered INT DEFAULT 1,
  	PRIMARY KEY (orderID, productID),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID) ON DELETE CASCADE,
    FOREIGN KEY (productID) REFERENCES Product(productID)
);

CREATE TABLE Payment (
    paymentID INT AUTO_INCREMENT,
    orderID INT,
    paymentAmount DECIMAL(10,2),
    paymentDate DATE DEFAULT CURRENT_DATE(),
    PRIMARY KEY (paymentID),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID) ON DELETE CASCADE
);
ALTER TABLE Payment AUTO_INCREMENT=98000;

-- insert dummy data
INSERT INTO Customer VALUES (NULL, 'Ever', 'Avery', 'con@con.com', '123 Sunny St', DEFAULT, 'Toronto', DEFAULT, 'M1M1M1', 'ever', 'avery');
INSERT INTO Product VALUES (NULL, 'Earl Grey', 10.99, 50);
INSERT INTO Product VALUES (NULL, 'London Fog', 9.99, 50);
INSERT INTO Product VALUES (NULL, 'Lavender', 8.00, 50);
INSERT INTO Orders VALUES (NULL, 10, 28.98, DEFAULT, NULL);
INSERT INTO OrderProducts VALUES (8000, 200, 1);
INSERT INTO OrderProducts VALUES (8000, 201, DEFAULT);
INSERT INTO OrderProducts VALUES (8000, 202, DEFAULT);
INSERT INTO Payment VALUES (NULL, 8000, 28.98, DEFAULT);

-- delete
DELETE FROM Customer WHERE customerID = 11;
DELETE FROM Orders WHERE orderID = 98001;

DROP TABLE Payment;
DROP TABLE OrderProducts;
DROP TABLE Orders; 
DROP TABLE Product;
DROP TABLE Customer; 