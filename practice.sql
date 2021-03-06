-- To Create Table

CREATE TABLE acounts (
	
	user_id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP 

);

-- Select INTO

SELECT
    film_id,
    title,
    rental_rate
INTO TABLE film_r
FROM
    film
WHERE
    rating = 'R'
AND rental_duration = 5
ORDER BY
    title;

-- Create a Temporary TABLE of Movies length less than 60
    SELECT
    film_id,
    title,
    length 
INTO TEMP TABLE short_film
FROM
    film
WHERE
    length < 60
ORDER BY
    title;