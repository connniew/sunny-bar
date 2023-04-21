-- create tables
CREATE TABLE Customer (
  customerID INT AUTO_INCREMENT, 
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  email VARCHAR(100),
  address VARCHAR(100),
  province VARCHAR(50) DEFAULT 'Ontario' CHECK (province IN ('Alberta', 'British Columbia', 'Manitoba', 'New Brunswick', 'Newfoundland and Labrador', 'Northwest Territories', 'Nova Scotia', 'Nunavut', 'Ontario', 'Prince Edward Island', 'Quebec', 'Saskatchewan', 'Yukon')),
  city VARCHAR(50),
  country VARCHAR(6) DEFAULT 'Canada',
  postalCode VARCHAR(6),
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (customerID, email)
);
ALTER TABLE Customer AUTO_INCREMENT=10;

CREATE TABLE Product (
  productID INT AUTO_INCREMENT, 
  name VARCHAR(50) UNIQUE,
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
ALTER TABLE Orders AUTO_INCREMENT=800;

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
ALTER TABLE Payment AUTO_INCREMENT=900;

-- insert dummy data
INSERT INTO Customer VALUES (NULL, 'Ever', 'Avery', 'con@con.com', '123 Sunny St', DEFAULT, 'Toronto', DEFAULT, 'M1M1M1', 'ever', 'avery');
INSERT INTO Product VALUES (NULL, 'Earl Grey', 10.99, 50);
INSERT INTO Product VALUES (NULL, 'London Fog', 9.99, 50);
INSERT INTO Product VALUES (NULL, 'Lavender', 8.00, 50);
INSERT INTO Orders VALUES (NULL, 10, 28.98, DEFAULT, NULL);
INSERT INTO OrderProducts VALUES (800, 200, 1);
INSERT INTO OrderProducts VALUES (800, 201, DEFAULT);
INSERT INTO OrderProducts VALUES (800, 202, DEFAULT);
INSERT INTO Payment VALUES (NULL, 800, 28.98, DEFAULT);

-- delete
DELETE FROM Customer WHERE customerID = 10;

DROP TABLE Payment;
DROP TABLE OrderProducts;
DROP TABLE Orders; 
DROP TABLE Product;
DROP TABLE Customer; 