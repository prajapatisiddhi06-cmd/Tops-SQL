-- SESSION 6 - Order by + Sorting

-- ---------Task-1: -----------
use jio;
select * 
from products
order by price asc;


-- ---------Task-2: -----------
select *
from products
order by price desc
limit 5;


-- ---------Task-3: -----------
select title, release_year, rating
from movies
order by release_year desc, rating desc;


-- ---------Task-4: -----------
use zomato;
select *
from restaurants
order by name
limit 10;


-- ---------Task-5: -----------
select song_name, play_count
from songs
order by play_count desc
limit 3;