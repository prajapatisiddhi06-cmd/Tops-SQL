-- SESSSION 8 - GROUP BY + HAVING

-- ---------Task - 1: ----------
use zomato;
create table orders2(
	order_id int primary key auto_increment, 
    user_id int,
    payment_method varchar(50),
    amount decimal(10,2)
);

INSERT INTO Orders2 (user_id, payment_method, amount)
VALUES
(101, 'UPI', 450.00),
(102, 'Card', 650.00),
(101, 'Wallet', 200.00),
(103, 'UPI', 350.00),
(104, 'COD', 500.00),
(102, 'Card', 250.00),
(103, 'UPI', 550.00),
(105, 'Wallet', 400.00);



-- ---------Task - 2: ----------
select payment_method, count(*) as total_orders
from orders2
group by payment_method;


-- ---------Task - 3: ----------
select user_id, sum(amount) as total_spend
from orders2
group by user_id;


-- ---------Task - 4: ----------
select payment_method, avg(amount) as avg_amount
from orders2
group by payment_method
having avg_amount > 300;


-- ---------Task - 5: ----------
-- The main difference is:

-- WHERE filters individual rows before grouping.
-- HAVING filters groups after GROUP BY.
-- 1. WHERE example

-- Suppose we want to find orders where the amount is greater than ₹300:

SELECT *
FROM Orders
WHERE amount > 300;

-- Here, WHERE checks each individual order and removes rows where amount <= 300.

-- 2. HAVING example

-- Suppose we want to find payment methods whose average order amount is greater than ₹300:

SELECT payment_method, AVG(amount) AS average_amount
FROM Orders
GROUP BY payment_method
HAVING AVG(amount) > 300;