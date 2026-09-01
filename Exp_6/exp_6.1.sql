--  Create a complex view named Unsold_Items that joins the Products and Order_Details tables to
-- display the ProductName and Category of all items that have never been ordered by any customer using a NOT IN Operator


-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Insert data into Products
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mobile Phone', 'Electronics', 25000),
(3, 'Keyboard', 'Accessories', 1500),
(4, 'Mouse', 'Accessories', 800),
(5, 'Headphones', 'Audio', 2000);


-- Create Order_Details table
CREATE TABLE Order_Details (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Order_Details
INSERT INTO Order_Details (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
(101, 1001, 1, 1),
(102, 1001, 2, 2),
(103, 1002, 3, 1),
(104, 1003, 1, 1);


-- Create Unsold_Items view using NOT IN
CREATE VIEW Unsold_Items AS
SELECT ProductName, Category
FROM Products
WHERE ProductID NOT IN (
    SELECT ProductID
    FROM Order_Details
);


-- Display unsold products
SELECT * FROM Unsold_Items;