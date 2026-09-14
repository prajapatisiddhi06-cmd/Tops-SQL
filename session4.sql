-- SESSION 4 - SELECT Statement Basics

-- ---------Task-1:---------

use music_streaming_app;

create table musicplaylist(
	id int primary key auto_increment,
    song_name varchar(100) not null,
    artist varchar(100) not null,
    duration time
);

insert into musicplaylist(song_name,artist,duration) values
	("Shape of You", "Ed Sheeran", "03:53"),
    ("Unstoppable", "Sia", "03:37"),
    ("Perfect", "Ed Sheeran", "04:23"),
    ("Believer","Imagine Drogon","03:24"),
    ("Levatating", "Dua Lips", "03:23");
    
select * from musicplaylist;


-- ---------Task-2:---------

select song_name, artist
from musicplaylist
limit 3;



-- ---------Task-3:---------

create database zomato;
use zomato;

CREATE TABLE FoodOrders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant VARCHAR(100) NOT NULL,
    food_item VARCHAR(100) NOT NULL,
    order_date DATE NOT NULL
);

INSERT INTO FoodOrders (restaurant, food_item, order_date)
VALUES
('Dominos', 'Margherita Pizza', '2026-09-01'),
('McDonalds', 'McChicken Burger', '2026-09-02'),
('Dominos', 'Garlic Bread', '2026-09-03'),
('KFC', 'Chicken Burger', '2026-09-04'),
('Subway', 'Veg Sandwich', '2026-09-05'),
('McDonalds', 'French Fries', '2026-09-06'),
('KFC', 'Zinger Burger', '2026-09-07'),
('Dominos', 'Farmhouse Pizza', '2026-09-08'),
('Subway', 'Paneer Wrap', '2026-09-09'),
('McDonalds', 'McVeggie Burger', '2026-09-10');

select distinct restaurant
from foodorders;




-- ---------Task-4:---------

select
	food_item as Dish,
    order_date Date_Ordered
from FoodOrders;



-- ---------Task-5:-------

select distinct food_item, restaurant
from FoodOrders
limit 2;