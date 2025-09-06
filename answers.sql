USE salesDB;

SELECT e.firstName,
       e.lastName,
       e.email,
       o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;



-- Question 2 
-- Get product details (productName, productVendor) and productLine description.
-- Use LEFT JOIN between products and productlines on productLine.
SELECT p.productName,
       p.productVendor,
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;



-- Question 3 
-- Get first 10 orders with details (orderDate, shippedDate, status, customerNumber).
-- Use RIGHT JOIN between customers and orders on customerNumber.
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       c.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
