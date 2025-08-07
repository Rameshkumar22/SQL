CREATE DATABASE productsales;
use productsales;
CREATE TABLE product(
product_id int primary key,
product_name varchar(100),
category varchar(50),
unit_price decimal(10, 2)
);
INSERT INTO Product (product_id, product_name, category, unit_price) VALUES
(101,'Laptop','Electronics', 500.00),
(102,'Smartphone','Electronics', 300.00),
(103,'Headphones','Electronics', 30.00),
(104,'Keyboard','Electronics', 20.00),
(105,'Mouse','Electronics', 15.00);
select product_name,unit_price from product;
select * from product where category='Electronics';
select product_id,product_name from product where unit_price>'100';
select avg(unit_price) as average_price from product;
select product_name,unit_price from product where unit_price=(select max(unit_price) from product);
select product_name,unit_price from product order by unit_price desc;
select product_name,unit_price from product where unit_price>='20' and unit_price <='600';
select product_name,category from product order by category asc;