CREATE DATABASE sales2;
USE sales2;
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2));
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products(product_id));
INSERT INTO Products (product_id, product_name, price) VALUES
(101, 'Laptop', 500.00),
(102, 'Tablet', 300.00),
(103, 'Mouse', 30.00),
(104, 'Keyboard', 20.00),
(105, 'Charger', 15.00);
INSERT INTO Sales (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);
SELECT * FROM Sales;
SELECT sale_id, sale_date FROM Sales;
SELECT * FROM Sales WHERE total_price > 100.00;
SELECT sale_id, total_price FROM Sales WHERE sale_date = '2024-01-03';
SELECT SUM(total_price) AS total_revenue FROM Sales;
SELECT SUM(quantity_sold) AS total_quantity_sold FROM Sales;
SELECT sale_id, product_id, total_price FROM Sales WHERE quantity_sold > 4;
SELECT AVG(total_price) AS average_total_price FROM Sales;