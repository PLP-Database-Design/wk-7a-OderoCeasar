
-- Question 1:
-- CREATE TABLE Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100)
);

-- CREATE TABLE OrderProducts
CREATE TABLE OrderProducts (
    OrderProductID INT AUTO_INCREMENT PRIMARY KEY,
    Product VARCHAR(100),
	OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- INSERT DATA INTO Orders
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- INSERT DATA INTO OrderProducts
INSERT INTO OrderProducts (OrderID, Product) VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');

-- RETRIEVE DATA
SELECT Orders.OrderID, Orders.CustomerName, OrderProducts.Product
FROM Orders 
JOIN OrderProducts ON Orders.OrderID = OrderProducts.OrderID



-- Question 2:
-- CREATE TABLE OrderDetails
CREATE TABLE OrderDetails (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- INSERT DATA INTO OrderDetails
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- RETRIEVE DATA
SELECT Orders.OrderID, Orders.CustomerName, OrderDetails.Product, OrderDetails.Quantity
FROM Orders 
JOIN OrderDetails ON Orders.OrderID = OrderItems.OrderID
