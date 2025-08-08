e sales;
create table sales2(
sale_id int primary key,
product_id int,
quantity_sold int,
sale_date date,
total_price decimal(10,2),
foreign key (product_id) references Products(product_id));
INSERT INTO sales2 (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
('1', 101, 5,'2024-01-01', 2500.00),
('2', 102, 3,'2024-01-02', 900.00),
('3', 103, 2,'2024-01-02', 60.00),
('4', 104, 4,'2024-01-03', 80.00),
('5', 105, 6,'2024-01-03', 90.00);
insert into sales2 values(6,106,7,'2024-01-04',10.00);
select * from sales2;
select sale_id,sale_date from sales2;
select sale_id,total_price from sales2 where sale_date ='2024-01-03';
select sum(total_price) as Total_revenue from sales2;
select sum(quantity_sold) from sales2;
select sale_id,product_id,total_price from sales2 where quantity_sold>4;
select avg(total_price) from sales2;