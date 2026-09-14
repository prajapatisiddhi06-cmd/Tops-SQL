-- SESSION 7 - Aggregate Functions

-- ---------Task-1:-------
use Zomato;

create table Orders(
	order_id int primary key auto_increment,
    user_name varchar(50) not null,
    total_amount decimal(10,2),
    order_date date default (current_date)
);

INSERT INTO Orders (user_name, total_amount)
VALUES
('Rahul', 450.00),
('Priya', 299.50),
('Amit', NULL),
('Sneha', 725.00),
('Arjun', 180.75);



-- ---------Task-2:-------

select user_name, count(*) as order_count 
from Orders
group by user_name;



-- ---------Task-3:-------

select avg(total_amount) as average
from Orders;



-- ---------Task-4:-------

select max(total_amount) as HighestValue, min(total_amount) as LowestValue
from Orders;



-- ---------Task-5:-------

select sum(total_amount) as total_sales
from Orders
where total_amount is not NULL;










