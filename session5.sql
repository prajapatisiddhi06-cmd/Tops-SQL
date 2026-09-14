-- SESSION 5 - WHERE Clause + LIKE

-- ---------Task-1:-------
use Zomato;

create table restaurants(
	id int primary key auto_increment,
    name varchar(100) not null,
    cuisine varchar(100) not null,
    rating decimal(2,1),
    city varchar(100) not null
);

INSERT INTO Restaurants (name, cuisine, rating, city)
VALUES
('Swagat Restaurant', 'South Indian', 4.3, 'Ahmedabad'),
('Swadisht Kitchen', 'Chinese', 4.1, 'Surat'),
('Spice Palace', 'Italian', 4.6, 'Ahmedabad'),
('Swaad Restaurant', 'North Indian', 3.8, 'Surat'),
('Royal Chinese', 'Chinese', 4.0, 'Mumbai'),
('Italian Corner', 'Italian', 4.4, 'Ahmedabad'),
('South Indian Hub', 'South Indian', 3.6, 'Surat'),
('Food Junction', 'North Indian', 3.2, 'Ahmedabad');



-- ---------Task-2:-------
select name,rating, city
from restaurants
where rating >= 4.0 and 
 (city = "Ahmedabad" or city = "Surat");
 
 

-- ---------Task-3:-------
select name
from restaurants
where name like 'Swa%';



-- ---------Task-4:-------
select * 
from restaurants 
where rating between 3.5 and 4.5;



-- ---------Task-5:-------
select name,cuisine
from restaurants
where cuisine in ("Chinese","Italian","South Indian");





















