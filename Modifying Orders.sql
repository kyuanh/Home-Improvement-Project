-- See current customers 
SELECT * 
FROM customer_nnh;

-- Update customer phone number
UPDATE customer_nnh
SET Phone = '214-555-1234'
WHERE CustID = 'B200';

-- Add a new customer without a phone on file
INSERT INTO customer_nnh (CustID, CustFName, CustLName, Phone, SalesRepID) VALUES ('G119', 'Amanda', 'Green', NULL, 14);

-- Review current orders
SELECT *
FROM order_nnh;

-- Correct the order date for Order 108
UPDATE order_nnh
SET OrderDate = '2022-01-28'
WHERE OrderID = 108;

-- Create a new order for new customer
INSERT INTO order_nnh (OrderID, OrderDate, CustID) VALUES (109, '2022-01-28', 'G119');

-- Review order details 
SELECT *
FROM orderdetail_nnh;

-- Correct the unit price for a specific line
UPDATE orderdetail_nnh
SET ProdPrice = 62.00
WHERE OrderID = 108 AND ProdID = 235;

-- Add order detail lines for Order 108
INSERT orderdetail_nnh (OrderID, ProdID, ProdQty, ProdPrice) VALUES (108, 407, 1, 5.25);
INSERT orderdetail_nnh (OrderID, ProdID, ProdQty, ProdPrice) VALUES (108, 618, 2, 2.15);
INSERT orderdetail_nnh (OrderID, ProdID, ProdQty, ProdPrice) VALUES (109, 121, 1, 8.25);
INSERT orderdetail_nnh (OrderID, ProdID, ProdQty, ProdPrice) VALUES (109, 480, 1, 3.75);

-- Reference lookups/sanity checks
SELECT * 
FROM dept_nnh
ORDER BY DeptID ASC;

SELECT *
FROM comm_nnh
ORDER BY CommClass ASC;

SELECT *
FROM SalesRep_nnh
ORDER BY SalesRepID ASC;

SELECT * 
FROM customer_nnh
ORDER BY CustID ASC;

SELECT *
FROM order_nnh
ORDER BY OrderID ASC;

SELECT *
FROM prodcat_nnh
ORDER BY ProdCatID ASC;

SELECT *
FROM product_nnh
ORDER BY ProdID ASC;

SELECT * 
FROM orderdetail_nnh
ORDER BY OrderID AND ProdID ASC;


