-- SESSION 9 - JOIN - Part 1

-- ---------Task - 1: ----------
use zomato;
select * from restaurants;

create table dishes(
	id int primary key auto_increment,
    restaurant_id int,
    dish_name varchar(100),
    price decimal(10,2),
    foreign key (restaurant_id) references  restaurants(id)
);

insert into dishes(restaurant_id,dish_name,price) values
(1, 'Chicken Biryani', 280.00),
(1, 'Paneer Biryani', 220.00),
(1, 'Chicken 65', 180.00),
-- Truffles
(2, 'Classic Chicken Burger', 250.00),
(2, 'Cheese Burger', 220.00),
(2, 'French Fries', 120.00),
-- Spice Garden
(3, 'Paneer Tikka', 240.00),
(3, 'Veg Hakka Noodles', 180.00),
(3, 'Butter Naan', 60.00),
-- Pizza Paradise
(4, 'Margherita Pizza', 250.00),
(4, 'Farmhouse Pizza', 350.00),
(4, 'Garlic Bread', 150.00),
-- Royal Biryani House
(5, 'Mutton Biryani', 350.00),
(5, 'Chicken Biryani', 280.00),
(5, 'Chicken Kebab', 220.00);
select * from dishes;


-- ---------Task - 2: ----------
select
	d.id,
	d.restaurant_id,
	d.dish_name,
    d.price,
    r.name as res_name,
    r.city
from dishes d
inner join restaurants r
on d.restaurant_id = r.id;


-- ---------Task - 3: ----------
insert into restaurants(name,cuisine,rating,city) values
("Starbucks","Cafe","4.2","Gandhinagar");
select
	r.id,
    r.name,
    d.dish_name
from restaurants r
left join dishes d
on r.id = d.restaurant_id;


-- ---------Task - 4: ----------
-- delete from dishes where id = 17; 
select
	d.id,
	d.dish_name,
	r.name
from dishes d
right join restaurants r
on d.restaurant_id = r.id;
   

-- ---------Task - 5: ----------
-- We use left join bcz a LEFT JOIN returns every row from the left table (playlists),
-- even when there is no matching row in the right table (songs) which gives all playlists with songs.
SELECT 
    p.playlist_name,
    s.song_name
FROM playlists p
LEFT JOIN songs s
    ON p.id = s.playlist_id;

