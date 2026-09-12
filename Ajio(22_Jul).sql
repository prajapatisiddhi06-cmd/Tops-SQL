-- Data Language

-- DDL (Data Definition Language) (create, alter, drop, truncate)
-- DML (Data Manipulation Language) (insert, update, delete)
-- DQL (Data Query Language) (select)(for data retrive)
-- DCL (Data Control Language) (grant, revoke) (control accesss)
-- TCL (Transaction Control Language) (commit, savepoint, rollback)


-- DATA TYPE 
-- NUMERIC (INT, DECIMAL(4,3), FLOAT , REAL, DOUBLE)
-- STRING ( CHAR(10), VARCHAR(100), TEXT )
-- DATE & TIME ( DATE, TIME, DATETIME / TIMESTAMP, YEAR, MONTH )
-- BOOLEAN (TRUE / FALSE (1, 0) )
-- BLOB (binary laRGE OBJECT) (image, video, song)


-- constraint (used for data validation, used at time of database structure, used in concept of normalization)
-- Primary key (unique + not null) (per table only one)
-- candidate key (unique, not null, can be multiple in single table)
-- super key (all values are unique & not null in whole table)
-- FOREIGN KEY (common column between two different table)
-- not null, unique, check , auto increment, default, reference 

create database ajio ;

use ajio ;

-- Customer, Orders, Product, Delivery, Seller, Review
create table table_name(
	column_name datatype constraint,
    column_name_2....
    ); 


create table customers(
	customer_id int primary key auto_increment ,
    customer_name varchar(100) not null,
    email varchar(100) unique not null, 
    phone varchar(15) not null unique,  -- candidate key
    city varchar(40),
    registration_date datetime default current_timestamp
) ;

insert into customers values 
(1, "Rahul Desai" , "rahul@gamil.com", "+91 786514324", "Ahmedabad", "2026-07-31");

select * from customers ;
select customer_id, phone, city from customers ;


insert into customers(customer_name, email, phone, city) values
("Kiran Patel", "kiran.p@gmail.com", "+91 653263544", "Balleshwar"),
("Manthan Thakor", "m.thakor@gmail.com" ,"987654321", "Udaipur")

INSERT INTO customers (customer_name, email, phone, city, registration_date) VALUES
('Aarav Patel', 'aarav.patel@example.com', '9876543210', 'Ahmedabad', '2023-05-14 09:15:00'),
('Diya Sharma', 'diya.sharma@example.com', '9876543211', 'Mumbai', '2023-05-18 14:30:22'),
('Rohan Gupta', 'rohan.gupta@example.com', '9876543212', 'Delhi', '2023-06-02 11:45:10'),
('Ananya Singh', 'ananya.singh@example.com', '9876543213', 'Bangalore', '2023-06-15 16:20:05'),
('Vikram Joshi', 'vikram.joshi@example.com', '9876543214', 'Pune', '2023-07-01 08:10:33'),
('Neha Reddy', 'neha.reddy@example.com', '9876543215', 'Hyderabad', '2023-07-22 10:05:45'),
('Karan Desai', 'karan.desai@example.com', '9876543216', 'Surat', '2023-08-10 13:55:00'),
('Pooja Iyer', 'pooja.iyer@example.com', '9876543217', 'Chennai', '2023-08-25 09:40:15'),
('Rahul Verma', 'rahul.verma@example.com', '9876543218', 'Kolkata', '2023-09-05 18:25:50'),
('Sneha Nair', 'sneha.nair@example.com', '9876543219', 'Kochi', '2023-09-12 20:15:30'),
('Arjun Mehta', 'arjun.mehta@example.com', '9876543220', 'Jaipur', '2023-10-01 07:30:00'),
('Kavya Das', 'kavya.das@example.com', '9876543221', 'Bhubaneswar', '2023-10-18 12:45:12'),
('Aditya Rao', 'aditya.rao@example.com', '9876543222', 'Lucknow', '2023-11-04 15:10:25'),
('Meera Menon', 'meera.menon@example.com', '9876543223', 'Thiruvananthapuram', '2023-11-20 11:20:40'),
('Siddharth Bose', 'siddharth.bose@example.com', '9876543224', 'Patna', '2023-12-05 09:05:55'),
('Isha Chawla', 'isha.chawla@example.com', '9876543225', 'Chandigarh', '2023-12-15 14:50:18'),
('Manish Tiwari', 'manish.tiwari@example.com', '9876543226', 'Indore', '2024-01-10 10:35:42'),
('Riya Kapoor', 'riya.kapoor@example.com', '9876543227', 'Bhopal', '2024-01-22 17:15:05'),
('Gaurav Sen', 'gaurav.sen@example.com', '9876543228', 'Nagpur', '2024-02-08 08:45:30'),
('Simran Kaur', 'simran.kaur@example.com', '9876543229', 'Amritsar', '2024-02-14 19:30:00');



create table orders (
	order_id int primary key auto_increment, 
    customer_id int,
    order_date date,
    payment_method varchar(100),
    order_status varchar(100),
    foreign key (customer_id) references customers(customer_id) 
);


INSERT INTO orders (order_id, customer_id, order_date, payment_method, order_status) VALUES
(1001, 1, '2024-03-01', 'Credit Card', 'Delivered'),
(1002, 2, '2024-03-02', 'UPI', 'Delivered'),
(1003, 3, '2024-03-03', 'Cash on Delivery', 'Shipped'),
(1004, 4, '2024-03-04', 'Debit Card', 'Processing'),
(1005, 5, '2024-03-05', 'UPI', 'Cancelled'),
(1006, 6, '2024-03-06', 'Net Banking', 'Delivered'),
(1007, 7, '2024-03-07', 'Credit Card', 'Shipped'),
(1008, 8, '2024-03-08', 'UPI', 'Delivered'),
(1009, 9, '2024-03-09', 'Cash on Delivery', 'Returned'),
(1010, 10, '2024-03-10', 'Debit Card', 'Delivered'),
(1011, 11, '2024-03-11', 'UPI', 'Shipped'),
(1012, 12, '2024-03-12', 'Net Banking', 'Processing'),
(1013, 13, '2024-03-13', 'Credit Card', 'Delivered'),
(1014, 14, '2024-03-14', 'UPI', 'Delivered'),
(1015, 15, '2024-03-15', 'Cash on Delivery', 'Cancelled'),
(1016, 16, '2024-03-16', 'Debit Card', 'Delivered'),
(1017, 17, '2024-03-17', 'UPI', 'Shipped'),
(1018, 18, '2024-03-18', 'Net Banking', 'Delivered'),
(1019, 19, '2024-03-19', 'Credit Card', 'Processing'),
(1020, 20, '2024-03-20', 'UPI', 'Delivered');

CREATE TABLE sellers (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(50),
    seller_city VARCHAR(30),
    seller_rating DECIMAL(2,1),
    seller_active BOOLEAN
);

INSERT INTO sellers (seller_id, seller_name, seller_city, seller_rating, seller_active) VALUES
(1, 'CloudRetail', 'Mumbai', 4.5, 1),
(2, 'TechWorld', 'Bangalore', 4.3, 1),
(3, 'HomeEssentials', 'Delhi', 4.1, 1),
(4, 'FashionHub', 'Surat', 4.2, 1),
(5, 'ElectroMart', 'Chennai', 4.6, 1),
(6, 'BookPlanet', 'Pune', 4.0, 1),
(7, 'GadgetZone', 'Noida', 4.4, 1),
(8, 'KitchenKart', 'Ahmedabad', 4.2, 1),
(9, 'StyleStreet', 'Jaipur', 3.9, 1),
(10, 'BabyCare', 'Kolkata', 4.1, 1),
(11, 'SportsArena', 'Indore', 4.3, 1),
(12, 'OfficeStore', 'Gurgaon', 4.0, 1),
(13, 'AutoNeeds', 'Chandigarh', 4.2, 1),
(14, 'PetWorld', 'Delhi', 4.1, 1),
(15, 'LuxuryLane', 'Mumbai', 4.7, 1),
(16, 'DailyNeeds', 'Pune', 3.8, 1),
(17, 'CosmeticsCo', 'Bangalore', 4.5, 1),
(18, 'FitGear', 'Hyderabad', 4.6, 1),
(19, 'ToyUniverse', 'Chennai', 4.2, 1),
(20, 'FootwearPlus', 'Ahmedabad', 4.0, 1),
(21, 'DecorDelight', 'Kolkata', 4.4, 0),
(22, 'GourmetBites', 'Jaipur', 4.8, 1);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT CHECK (stock >= 0),
    seller_id INT,
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

INSERT INTO products (product_id, product_name, category, price, stock, seller_id) VALUES
(1, 'Smartphone Pro Max', 'Electronics', 899.99, 150, 2),
(2, 'Wireless Noise-Canceling Earbuds', 'Electronics', 149.50, 300, 5),
(3, 'Men''s Cotton T-Shirt', 'Fashion', 19.99, 500, 4),
(4, 'Women''s Denim Jacket', 'Fashion', 55.00, 120, 9),
(5, 'Automatic Coffee Maker', 'Home & Kitchen', 120.00, 45, 8),
(6, 'High-Speed Blender', 'Home & Kitchen', 85.50, 60, 3),
(7, 'Men''s Running Shoes', 'Sports', 75.00, 200, 11),
(8, 'Non-Slip Yoga Mat', 'Sports', 25.00, 150, 11),
(9, 'Wooden Office Desk', 'Furniture', 210.00, 20, 12),
(10, 'Ergonomic Mesh Chair', 'Furniture', 145.00, 35, 12),
(11, 'Premium Dog Food 10kg', 'Pet Supplies', 45.00, 80, 14),
(12, 'Cat Litter 5kg', 'Pet Supplies', 15.99, 120, 14),
(13, 'Organic Raw Honey', 'Groceries', 12.50, 90, 22),
(14, 'Green Tea Pack (100 bags)', 'Groceries', 8.99, 200, 22),
(15, 'Matte Liquid Lipstick', 'Beauty', 22.00, 300, 17),
(16, 'Vitamin C Face Wash', 'Beauty', 14.50, 250, 17),
(17, 'Portable Car Vacuum Cleaner', 'Automotive', 35.99, 65, 13),
(18, 'Car Wash Shampoo & Wax', 'Automotive', 18.00, 100, 13),
(19, 'Luxury Men''s Watch', 'Fashion', 250.00, 40, 15),
(20, 'Genuine Leather Wallet', 'Fashion', 45.00, 110, 15),
(21, 'Bestselling Fiction Novel', 'Books', 14.99, 85, 6),
(22, 'Healthy Recipes Cookbook', 'Books', 24.99, 50, 6),
(23, 'Superhero Action Figure', 'Toys', 28.00, 150, 19),
(24, 'Family Board Game', 'Toys', 32.50, 75, 19),
(25, 'Smart TV 55-Inch 4K', 'Electronics', 499.00, 25, 1),
(26, 'Bluetooth Soundbar', 'Electronics', 110.00, 40, 7),
(27, 'Abstract Canvas Wall Art', 'Home Decor', 45.00, 60, 21),
(28, 'Ceramic Flower Vase', 'Home Decor', 20.00, 90, 21),
(29, 'Casual Canvas Sneakers', 'Fashion', 40.00, 150, 20),
(30, 'Lightweight Baby Stroller', 'Baby Care', 180.00, 15, 10);


CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    order_id INT,
    delivery_partner VARCHAR(50),
    shipment_mode VARCHAR(30),
    delivery_days INT,
    delivery_status VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO deliveries VALUES
(1,1001,'Ekart','Standard',5,'Delivered'),
(2,1002,'Delhivery','Express',3,'Delivered'),
(3,1003,'Ekart','Standard',6,'In Transit'),
(4,1004,'BlueDart','Express',2,'Delivered'),
(5,1005,'Ekart','Standard',0,'Cancelled'),
(6,1006,'Delhivery','Express',4,'Delivered'),
(7,1007,'BlueDart','Express',2,'Delivered'),
(8,1008,'Ekart','Standard',7,'Returned'),
(9,1009,'Delhivery','Standard',5,'Delivered'),
(10,1010,'Ekart','Standard',6,'Delivered'),
(11,1011,'BlueDart','Express',3,'Delivered'),
(12,1012,'Delhivery','Standard',5,'In Transit'),
(13,1013,'Ekart','Standard',4,'Delivered'),
(14,1014,'BlueDart','Express',2,'Delivered'),
(15,1015,'Delhivery','Standard',5,'Delivered'),
(16,1016,'Ekart','Standard',6,'Delivered');


CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text VARCHAR(255),
    review_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO reviews VALUES
(1,1,1,5,'Excellent product','2024-01-10'),
(2,2,2,4,'Good quality','2024-01-11'),
(3,3,3,4,'Comfortable','2024-01-12'),
(4,4,4,3,'Average build','2024-01-13'),
(5,5,5,5,'Very useful','2024-01-14'),
(6,6,6,4,'Works well','2024-01-15'),
(7,7,7,5,'Great performance','2024-01-16'),
(8,8,8,3,'Fabric ok','2024-01-17'),
(9,9,9,4,'Comfortable chair','2024-01-18'),
(10,10,10,5,'Kids loved it','2024-01-19'),
(11,11,11,4,'Good quality','2024-01-20'),
(12,12,12,3,'Average','2024-01-21'),
(13,13,13,4,'Useful for car','2024-01-22'),
(14,14,14,5,'My pet likes it','2024-01-23'),
(15,15,15,5,'Premium product','2024-01-24'),
(16,16,16,4,'Value for money','2024-01-25');


-- set foreign_key_checks = 0;   #to stop foreign key
-- set foreign_key_checks = 1;   #to start foreign key

select * from orders ;
select customer_name, email from customers ;

-- DISTINCT, ORDER BY, LIMIT

-- DISTINCT - RETURN UNIQUE VALUE

select distinct city from customers ;
select distinct payment_method from orders ;

-- ORDER BY (asc / desc) (sorting) (by default - Asc)

select * from products 
order by price asc ;

select * from products 
order by stock desc ;

-- limit - Top N values, offset - skip row number

select * from products 
order by price desc
limit 5 ;

select * from products 
order by price desc
limit 5 offset 2;


select * from orders
order by order_status asc , order_date desc ;


-- syntax :
-- update table_name 
-- set column_name1 = updated_value, column_name2 = upd_value
-- where condition (customer_id =1)

select * from products ;
update products
set price = 200, stock = 520
where product_id = 3 ; 

-- delete from table_name where condition ;

delete from products
where product_id = 30 ;


-- aggregation function - it summariuze mulltiplew rows into single values
-- count(), sum(), avg(), min(), max()
-- aggregate ignore null values 

-- count() - measuring volume

select  count(*) as total_customers
from customers ;

select * from orders ;

select count(*)  as delivered_orders
from orders
where order_status = "Delivered" ; 

-- count(coumn_name) -> Ignore Null
-- count(*) -> count rows


select  count(customer_id) as total_customers
from customers ;

select * from products ;

select sum(price) as total_price
from products ;

select sum(price * stock) as total_price
from products ;

select avg(price) as avg_price
from products ;

select max(price) as max_price
from products ;

select min(price) as min_price
from products ;

select round(avg(price), 2) as avg_price
from products ;


-- KPI (key performance indicator)

-- Group By & Having 
-- it groups row that have same values and allows to aggregation per group



select column_name, agg_fun(column_name)
from table
group by (column) ; 

select category, count(*) as total_products
from products
group by (category) ;

select category, round(avg(price),2) as avg_price_per_category
from products
group by category ;


select category, round(avg(price),2) as avg_price_per_category
from products
group by category 
order by avg_price_per_category desc
limit 3;

select payment_method, count(*) as deliverd_orders
from orders
where order_status = "Delivered"
group by payment_method ;

select payment_method, count(*) as deliverd_orders
from orders
where order_status = "Delivered"
group by payment_method
having count(*) > 2 ;


select category , round(avg(price), 2) as avg_price
from products
group by category
having avg_price > 150
order by avg_price desc ;

-- where - conditiion , having - filter

select * from customers
where city in  ("Ahmedabad", "Surat");

select * from customers where customer_id between 5 and 9 ;

select * from customers where customer_name LIKE "A%";

select * from customers where City like "S____" ;

select * from customers where customer_name LIKE "%Patel";


-- JOINS 

-- INNER
select ...
from table_1 as t1
inner join table_2 as t2
on t1.common_column = t2.commoon_column 
#where condition = "..." ;

select 
	c.customer_id,
    c.customer_name, 
    o.order_id, 
    o.order_date, 
    o.order_status
from customers c
inner join orders o
on c.customer_id = o.customer_id ; 

SELECT * FROM reviews ;





select 
	c.customer_id,
    c.customer_name, 
    o.order_id, 
    o.order_date, 
    o.order_status
from customers c
LEFT join orders o
on c.customer_id = o.customer_id ; 

select c.customer_id, c.customer_name, r.review_text, r.rating
from customers c
left join reviews r
on c.customer_id = r.customer_id ;

select c.customer_id, c.customer_name, r.review_text, r.rating
from customers c
right join reviews r
on c.customer_id = r.customer_id ;

select * from products ;

select s.seller_id , s.seller_city, p.product_name, p.stock
from sellers s
right join products p
on s.seller_id = p.seller_id
where s.seller_city = "Indore" ;



-- order per customers ;
select * from orders ;

select c.customer_id, c.customer_name, count(o.order_id)
from customers c
left join orders o 
on c.customer_id = o.customer_id 
group by c.customer_name, c.customer_id ; 

select * from products ;
select * from sellers ;



insert into orders(order_id, customer_id, order_date, payment_method, order_status)values
(1021, 2 , "2026-08-02", "UPI", "Shipping") ; 

-- products per sellers 
select 
	s.seller_id ,
	s.seller_name, 
    count(p.product_id) as total_product
from sellers s 
left join products p
on s.seller_id = p.seller_id
group by s.seller_id , s.seller_name ;


select c.customer_id, c.customer_name, r.review_text, r.rating
from customers c
left join reviews r
on c.customer_id = r.customer_id 
UNION
select c.customer_id, c.customer_name, r.review_text, r.rating
from customers c
right join reviews r
on c.customer_id = r.customer_id ;


-- self join - table join with itself, use for hierachy / comparison

-- product comparison within same category

select 
	p1.product_name as product_1,
    p2.product_name as product_2,
    p1.category
from products p1
join products p2
on p1.category = p2.category 
and p1.product_id <> p2.product_id ; 
    
select * from customers  ;

select 
	c1.customer_name as cust_1,
    c2.customer_name as cust_2,
    c1.city
from customers c1
join customers c2
on c1.city = c2.city
and c1.customer_id <> c2.customer_id ;

-- cross join - each row oof table A joins with eaach of row table B

select 
	p.product_name, 
    d.delivery_partner
from products p
cross join deliveries d ;


-- UNION & UNION ALL

SELECT customer_NAME as person_name, "Customers" as role
from customers 
UNION
select seller_name as person_name, "Sellers" as role
from sellers;

select * from orders ;

select order_id , order_status
from orders
where order_status = "Delivered"
union all
select order_id, order_status
from orders
where order_status = "Shipped" ;


select order_id , order_date as activity_date, "order placed" as activity
from orders
union all
select order_id , null, delivery_status
from deliveries ;


-- SUBQUERY 
-- QUERY WRITTEN INSIDE ANOTHER SQL QUERY
-- inner query execute first, result is used by outer query

-- type of subqueries
-- scalar - single value
-- row - single row
-- table - multiple rows

select .....
from table
where column = (select ......) ;


select avg(price) from products ;

select product_name, price
from products
where price > (select avg(price) from products ) ;

-- customer who placed latest order

select * from orders ;

select customer_id
from orders
order by order_date desc
limit 1 ;
 

select customer_name
from customers
where customer_id = (select customer_id from orders order by order_date desc limit 1) ;

-- product matching max price per category 

select * from products ;

select product_name, category, price
from products
where (category, price) = (select category, max(price)  from products) ;

-- in , exists

select customer_name 
from customers
where customer_id  in (select customer_id from orders) ; 

-- product tha have reviews
select product_name
from products
where product_id in (select product_id from reviews );

select category, avg_price 
from (
	select category, avg(price) as avg_price
    from products
    group by category
) as category_avg 
where avg_price > 30;

select * from products;
-- product price abovee category avg

select p.product_name,  p.price, p.category
from products as p
where price > (
	select avg(p2.price)
    from products p2
    where p2.category = p.category
    );
    
select * from orders;

-- customer with orders

select c.customer_name, c.customer_id
from customers c
where exists (
	select 1
    from orders o
    where o.customer_id = c.customer_id
    );

select 
	product_name,
    price,
    (select avg(price) from products) as avg_price
from products ;

-- COMMON TABLE EXPRESSION (CTE)
-- A temporary named result set that existsd only for duration of query

with cte_name as ( ....query.....) 
select * from cte_name ;


with delivered_order as (
	select * from orders
    where order_status = "Delivered"
)
select * from delivered_order ;

with delivered_order as (
	select * from orders
    where order_status = "Delivered"
)
select count(*) as total_delivered_order from delivered_order ;

-- orders per payment method

with payment_summary as (
	select payment_method , count(*) as total_order from orders 
    group by payment_method
    )
select * from payment_summary
order by  total_order desc; 

select * from deliveries ;

-- multiple cte in single query

with delivered as ( 
	select * from deliveries 
	where delivery_status = "Delivered"
),
avg_delivery as (
	select avg(delivery_days) as avg_days
    from delivered
)
select * from avg_delivery ;
    
    
    
    
-- product above avg_price

with avg_price as ( 
	select avg(price) as avg_p
    from products
)
select product_name, price
from products
where price > (select avg_p from avg_price);
    
-- recursive CTE --> REPEAT LOGIC, HIERACHIES


with recursive numbers as (
	select 1 as n 
    union all
    select n+1
    from numbers
    where n < 5
)
select * from numbers ;
    
  select * from reviews ;
  
   SELECT 
	c.customer_name,
    p.product_name,
    s.seller_name,
    r.review_text
from reviews r
join customers c
	on r.customer_id = c.customer_id
join products p
	on r.product_id = p.product_id
join sellers s
	on p.seller_id = s.seller_id ;


-- window  function
-- it performs calculation across set of related rows
-- WITHOUT collaopsing rows (unlike group by )

-- syntax : agg_funct() OVER (Partition BY Column)

-- row are preserved
-- calculation per row
-- over() - define window (set of rows)

select 
	product_name, 
    price,
    round(avg(price) over(), 2) as avg_price
from products ;

-- partition by - grouping w/o collapsing, over(Partition by column_name)

select
	product_name,
    category,
    price,
    round(avg(price) over(partition by category), 2) as cat_avg_price
from products ;

select 
	product_name,
    category,
    count(*) over(partition by category) as prod_in_cat
from products ;

select * from products ;


 
select 
	product_name,
    category,
    price,
    stock,
    sum(price * stock) over(partition by category) as cat_stock_value
from products ; 


select 
	product_name,
    category,
    price ,
    round(avg(price) over (partition by category), 2) as cat_avg,
    price - avg(price) over(partition by category) as price_diff
from products ;
    
select * from deliveries ;
    
select
	DELIVERY_PARTNER,
    delivery_days,
    delivery_status,
    round(avg(delivery_days) over(partition by delivery_partner), 2) as avg_days_delivery
from deliveries ;
    

 select * 
 from (
	select product_name,
    price,
    avg(price) over() as avg_price
    from products
) t
where price > avg_price ; 
    
    
-- row_number() - assign unique number to each row

select 
	product_name,
    price,
    stock,
    row_number() over(order by price desc) as row_num
from products ;
    
    
    
select 
	product_name,
    price,
    category,
    row_number() over(partition by category order by price desc) as row_num
from products ;
    
    
-- rank() -->1,2,2,4

select 
	product_name,
    price,
    stock,
    rank() over(order by price desc) as price_rank
from products ;

-- dense rank --> 1,2,2,3

select 
	product_name,
    price,
    stock,
    dense_rank() over(order by price desc) as price_rank
from products ;


select * 
from (
select 
	product_name,
    price,
    stock,
    dense_rank() over(order by price desc) as price_rank
from products 
) t
where price_rank <= 2;

-- lag() - access data from previous row

select customer_id, order_id, order_date,
	lag(order_date) over(partition by customer_id order by order_date) as previous_date
from orders ;

-- lead() - access data from next row
select customer_id, order_id, order_date,
	lead(order_date) over(partition by customer_id order by order_date) as next_date
from orders ;


-- DATE FUNCTION
-- NOW() - current date & time, CURDATE() - current date , YEAR(date) - extract year, MONTH(date), DAY(date), DATE_ADD() - add days , DATE_SUB()  - SUBTRACT DATE, DATEDIFF() - difference between dates
select now();

select order_id, YEAR(order_date) as order_year
from orders ;

select order_id, month(order_date) as order_year
from orders ;


select order_id, monthname(order_date) as order_year
from orders ;

select order_id, day(order_date) as order_year
from orders ;

select order_id, dayname(order_date) as order_year
from orders ;

select now() ;
select curdate() ;

select order_id, order_date, date_add(order_date, interval 7 day) as delivery_day
from orders ;

select date_sub(curdate() , interval 30 day) as last_month_date ;

 select * from deliveries ;
 datediff(date1, date2) ;
	
select
	o.order_id,
    o.order_date,
    d.delivery_days,
    datediff(date_add(o.order_date, interval d.delivery_days day), o.order_date) as calculated_day
    from orders o
    join deliveries d
    on o.order_id = d.order_id ; 



select order_id , datediff(curdate() , order_date) as day_since_order
from orders ;

-- STRING FUNCTION 

select concat(customer_name, "   --|--  ", email) as cust_detail
from customers ;

select upper(customer_name) as name_upper from customers ;
select lower(customer_name) as name_lower from customers ;


select customer_name, length(customer_name) as name_length from customers ;


-- substring(column, start , length)

select product_name,substring(product_name, 1, 5) as short_name from products ;


select product_name,left(product_name, 5) as short_name from products ;
select product_name,right(product_name, 5) as short_name from products ;

select * from orders ;

select order_id, replace(payment_method, "UPI", "Online") as replaced_method
from orders ;

select trim(customer_name) as clean_name from customers ; -- remove extra space


-- case when -- condition logic, catergorize, segmentation

-- it allows if-else logic

-- syntax :
case 	
	WHEN condition_1 THEN RESULT_1
    WHEN CONDITION_2 THEN RESULT_2
    ELSE RESULT
END ;


SELECT 
	ORDER_ID,
	DELIVERY_DAYS,
    case
		WHEN DELIVERY_DAYS <= 3 THEN "Fast"
        when delivery_days between 4 and 6 then "Normal"
        else "Slow"
	end as deliver_speed
from deliveries ;

select * from products ;
select 
	product_name,
    price, 
    case
		when price < 100 then "Low Price"
        when price between 100 and 500 then "Med Price"
        else "High Price"
	end as price_segment
from products ;


select 
	customer_name,
    total_orders,
    case
		when total_orders = 0 then "Inactive"
        when total_orders = 1 then "Normal Customer"
        else "Regular Customer"
	end as customer_type
from (
	select 
		c.customer_name,
		count(o.order_id) as total_orders
	from customers c
	left join orders o
	on c.customer_id = o.customer_id 
	group by c.customer_name) t ;
		

-- VIEW
-- Virtual table based on SQL Query
-- does not store physiocal data
-- store query logic
-- fetch live data from base tables
-- saved SQL Query that behave like table

create view view_name as 
select ...... ; 

create view customer_order_summary as 
	select 
		c.customer_name,
		count(o.order_id) as total_orders
	from customers c
	left join orders o
	on c.customer_id = o.customer_id 
	group by c.customer_name ;


select * from customer_order_summary ;

select * from deliveries ;

create view delivered_order_summary as
select 
	c.customer_id,
    o.order_id,
    c.customer_name,
    o.order_status,
    o.order_date,
    d.delivery_status,
    d.delivery_partner
from orders o
join customers c on o.customer_id = c.customer_id
join deliveries d on o.order_id = d.order_id 
where d.delivery_status = "Delivered" ;
    
    
select * from delivered_order_summary ;


-- create or replace delivered_order_summary as ...updated query....

-- drop viiew view_name

-- INDEXING - data structure that improve speed of data retrival

-- B-Tree structure
-- stores sorted values
-- points to row location

-- types of index - primary key, unique, index, composite index , foreign key 

show index from customers ;

show index from orders ;

create index idx_order_date
on orders(order_date) ;


-- composite index 

create index idx_status_date
on orders(order_status, order_date) ;


drop index idx_order_date on orders ;


explain 
select * from orders
where customer_id = 3 ;

-- import ionto SQL
load data infile " C:\Users\Tops\Documents\dumps\ajio_cust.csv"
into table customers
fields terminated by ","
lines terminated by "\n"
ignore 1 rows ; 


-- Export 

select * from customers
into outfile "'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\ajio_cust.csv"
fields terminated by ","
enclosed by '"'
lines terminated by "\n" ;

show variables like "secure_file_priv" ;

'secure_file_priv', 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\'


