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
  productName VARCHAR(50) UNIQUE,
  productDescription VARCHAR(550) UNIQUE,
  productPrice DECIMAL(10,2),
  qtyInStock INT DEFAULT 0,
  PRIMARY KEY (productID)
);
ALTER TABLE Product AUTO_INCREMENT=200;

CREATE TABLE Orders (
  orderID INT AUTO_INCREMENT, 
  customerID INT,
  orderTotal DECIMAL(10,2),
  dateOrdered DATE DEFAULT CURRENT_DATE(),
  dateShipped DATE,
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
INSERT INTO Orders VALUES (NULL, 10, 28.98, DEFAULT, NULL);
INSERT INTO OrderProducts VALUES (800, 200, 1);
INSERT INTO OrderProducts VALUES (800, 201, DEFAULT);
INSERT INTO OrderProducts VALUES (800, 202, DEFAULT);
INSERT INTO Product VALUES (NULL, 'Earl Grey Tea', "A sophisticated flavor that combines the floral taste of Earl Grey tea with the creaminess of ice cream.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Matcha White Chocolate', "A delicate and luxurious ice cream with a hint of earthy matcha and chunks of smooth white chocolate.", 9.50, 50);
INSERT INTO Product VALUES (NULL, 'Blood Orange Grapefruit', "This tangy combination of citrus flavors is bright, refreshing, and full of zesty flavor.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Lavender Honey', "A floral and sweet combination that's both soothing and refreshing.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Cherry Blossom', "A delicate flavor made with cherry blossom petals, giving it a floral, slightly sweet taste.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Bourbon Brown Sugar', "A decadent flavor that combines the smoky taste of bourbon with the sweetness of brown sugar.", 8.99, 50);
INSERT INTO Product VALUES (NULL, 'Raspberry Mint', "Tart raspberries and cool mint come together in this refreshing and vibrant sorbet flavor.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Honeycomb', "A sweet and crunchy ice cream featuring chunks of golden, caramelized honeycomb.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Rosewater Pistachio', "A delicate floral ice cream with a nutty pistachio finish.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Cherry Cheesecake', "A creamy and tangy ice cream with swirls of sweet cherry sauce and chunks of rich cheesecake.", 8.99, 50);
INSERT INTO Product VALUES (NULL, 'Cardamom Orange', "A bold and aromatic ice cream made with warming cardamom spice and zesty orange.", 7.80, 50)
INSERT INTO Product VALUES (NULL, 'Peach Ginger', "Ripe peaches and spicy ginger come together in this refreshing and unique sorbet flavor.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Blueberry Cheesecake', "A creamy and tangy ice cream loaded with chunks of cheesecake and fresh blueberries.", 8.99, 50);
INSERT INTO Product VALUES (NULL, 'Salted Caramel', "A buttery caramel flavor with a touch of sea salt, creating a perfect balance of sweet and salty.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Blueberry Lemon', "Sweet and juicy blueberries paired with tart lemon make for a bright and refreshing sorbet flavor.", 7.80, 50);
INSERT INTO Product VALUES (NULL, 'Cardamom Orange', "A bold and aromatic ice cream made with warming cardamom spice and zesty orange.", 7.80, 50);
INSERT INTO Payment VALUES (NULL, 800, 28.98, DEFAULT);

-- delete
DELETE FROM Customer WHERE customerID = 10;

DROP TABLE Payment;
DROP TABLE OrderProducts;
DROP TABLE Orders; 
DROP TABLE Product;
DROP TABLE Customer; 