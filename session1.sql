-- SESSION 1- Database Introduction & SQL Basics

-- ---------Task-1:---------

create database music_streaming_app;
use music_streaming_app;



-- ---------Task-2:---------

create table playlists(
	playlist_id int primary key,
    name varchar(50),
    created_by varchar(100) 
);


-- ---------Task-3:---------

insert into playlists values
	(1,"Bollywood Hits","Siddhi"),
    (2,"Chill Vibes","Amit"),
    (3,"Workout Vibes","Dhyan");

select * from playlists;


-- ---------Task-4:---------

select *
from playlists
where created_by = "Amit";


-- ---------Task-5:---------

-- Sure! Think of a food delivery app like **Zomato** storing information in a database.

-- ### 🍕 Example: Restaurants Table

-- Imagine a SQL table called `restaurants`:

-- | restaurant_id | name          | cuisine   | rating |
-- | ------------- | ------------- | --------- | ------ |
-- | 101           | Pizza Hub     | Italian   | 4.5    |
-- | 102           | Spice Kitchen | Indian    | 4.2    |
-- | 103           | Burger Point  | Fast Food | 4.0    |

-- ### 1. **Table** = the whole collection

-- A **table** stores related information in a structured format.

-- Here, `restaurants` is the **table**.

-- ```sql
-- CREATE TABLE restaurants (
--     restaurant_id INT,
--     name VARCHAR(100),
--     cuisine VARCHAR(50),
--     rating DECIMAL(2,1)
-- );
-- ```

-- Think of a table like an **Excel sheet** containing information about restaurants.

-- ---

-- ### 2. **Row** = one complete record

-- A **row** represents **one restaurant** in our example.

-- For example:

-- | 101 | Pizza Hub | Italian | 4.5 |

-- This entire row tells us everything stored about **Pizza Hub**.

-- So:

-- > **1 row = 1 restaurant record**

-- ---

-- ### 3. **Column** = one type of information

-- A **column** represents a particular **attribute/type of data**.

-- For example:

-- * `restaurant_id` → restaurant's ID
-- * `name` → restaurant's name
-- * `cuisine` → type of food
-- * `rating` → restaurant's rating

-- So:

-- > **1 column = 1 type of information**

-- ### 🧠 Easy way to remember

-- Imagine Zomato's database as a spreadsheet:

-- **Table** → the entire spreadsheet
-- **Row** → information about one restaurant
-- **Column** → one category of information

-- ```text
--              TABLE: restaurants
--     ┌──────────────┬─────────────┬──────────┬────────┐
--     │ restaurant_id│ name        │ cuisine  │ rating │ ← columns
--     ├──────────────┼─────────────┼──────────┼────────┤
--     │ 101          │ Pizza Hub   │ Italian  │ 4.5    │ ← row
--     │ 102          │ Spice       │ Indian   │ 4.2    │ ← row
--     │ 103          │ Burger Point│ Fast Food│ 4.0    │ ← row
--     └──────────────┴─────────────┴──────────┴────────┘
--                          ↑
--                        table
-- ```

-- **In one sentence:** A **table** contains data, a **row** is one record in that table, and a **column** describes one property of each record.


